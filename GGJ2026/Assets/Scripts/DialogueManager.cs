using System.Collections;
using System.Collections.Generic;
using TMPro;
using Ink.Runtime;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.EventSystems;
using UnityEngine.UIElements;

public class DialogueManager : MonoBehaviour
{
    public static DialogueManager instance;
    
    private Story currentStory;

    [Header("Choices UI")]
    private List<Button> buttons;

    public bool dialogueIsPlaying;

    private float _timer;
    private float _maxInteractTime = 2;
    
    private void Awake()
    {
        if (instance != null)
        {
            Debug.LogWarning("Found more than one Dialogue Manager in the scene");
        }
        instance = this;
    }

    public static DialogueManager GetInstance()
    {
        return instance;
    }

    public void EnterDialogueMode(TextAsset inkJSON, string playerCharacter, int sceneNumber)
    {
        if (_timer > 0)
        {
            return;
        }
        
        currentStory = new Story(inkJSON.text);
        currentStory.variablesState["currently_possessed"] = playerCharacter;
        currentStory.variablesState["scene"] = sceneNumber;
        ContinueStory();
        dialogueIsPlaying = true;
        _timer = _maxInteractTime;
        DialogueUIManager.instance.ToggleDialogue();
    }

    private void ExitDialogueMode()
    {
        dialogueIsPlaying = false;
        DialogueUIManager.instance.ToggleDialogue();
    }

    private void ContinueStory()
    {
        if (currentStory.canContinue)
        {
            // Set the text of the current dialogue line
            DialogueUIManager.instance.ChangeDialogueText(currentStory.Continue());
            // Display choices for the dialogue line (if there are some)
            DisplayChoices();
        }
        else
        {
            ExitDialogueMode();
        }
    }

    private void DisplayChoices()
    {
        List<Choice> currentChoices = currentStory.currentChoices;
        
        // Check of the amount of choices provided is possible with our maximum amount
        if (currentChoices.Count > buttons.Count)
        {
            Debug.LogError("More choices were given than the UI can support. Number of choices given: " +
                           currentChoices.Count);
        }

        currentChoices.RemoveAt(currentChoices.Count - 1);
        int i = 0;
        // Enable the choices
        foreach (Choice choice in currentChoices)
        {
            buttons[i].visible = true;
            buttons[i].text = choice.text;

            var index = i;
            buttons[i].clicked += () => MakeChoice(index);
            i++;
        }
        
        // Make sure we hide the remaining unused buttons
        for (int j = i; j < buttons.Count; j++)
        {
            buttons[j].visible = false;
        }
        
        // Select a first selected choice
        //StartCoroutine(SelectFirstChoice());

    }

    public void MakeChoice(int choiceIndex)
    {
        Debug.Log(choiceIndex);
        currentStory.ChooseChoiceIndex(choiceIndex);
    }
    
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        dialogueIsPlaying = false;
        
        // Collect all the choices 
        buttons = DialogueUIManager.instance.GetButtonList();
        DialogueUIManager.instance.GetContinueButton().clicked += ContinueStory;
        DialogueUIManager.instance.GetLeaveButton().clicked += ExitDialogueMode;
        int i = 0;
    }

    // Update is called once per frame
    void LateUpdate()
    {
        if (_timer > 0)
        {
            _timer -= Time.deltaTime;
        }
        // Do nothing if dialogue is not playing
        if (!dialogueIsPlaying)
        {
            return;
        }
        // Continue if the player has pressed the continue button
        else
        {
            if (Keyboard.current.eKey.wasPressedThisFrame)
            {
                //ContinueStory();
            }
        }
    }
}
