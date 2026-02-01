using System.Collections;
using System.Collections.Generic;
using TMPro;
using Ink.Runtime;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.EventSystems;

public class DialogueManager : MonoBehaviour
{
    private static DialogueManager instance;

    [Header("Dialogue UI")] [SerializeField]
    private GameObject dialoguePanel;
    
    [SerializeField]
    private TextMeshProUGUI dialogueText;
    
    private Story currentStory;

    [Header("Choices UI")] [SerializeField]
    private GameObject[] choices;

    private TextMeshProUGUI[] choicesText;

    public bool dialogueIsPlaying;
    
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

    public void EnterDialogueMode(TextAsset inkJSON)
    {
        currentStory = new Story(inkJSON.text);
        dialogueIsPlaying = true;
        dialoguePanel.SetActive(true);
    }

    private void ExitDialogueMode()
    {
        dialogueIsPlaying = false;
        dialoguePanel.SetActive(false);
        dialogueText.text = "";
    }

    private void ContinueStory()
    {
        if (currentStory.canContinue)
        {
            // Set the text of the current dialogue line
            dialogueText.text = currentStory.Continue();
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
        if (currentChoices.Count > choices.Length)
        {
            Debug.LogError("More choices were given than the UI can support. Number of choices given: " +
                           currentChoices.Count);
        }

        int i = 0;
        // Enable the choices
        foreach (Choice choice in currentChoices)
        {
            choices[i].gameObject.SetActive(true);
            choicesText[i].text = choice.text;
            i++;
        }
        // Make sure we hide the remaining unused buttons
        for (int j = i; j < choices.Length; j++)
        {
            choices[j].gameObject.SetActive(false);
        }
        
        // Select a first selected choice
        StartCoroutine(SelectFirstChoice());

    }

    private IEnumerator SelectFirstChoice()
    {
        // The event system requires us to clear the selected option first, then
        // wait for one frame to set a new one
        EventSystem.current.SetSelectedGameObject(null);
        yield return new WaitForEndOfFrame();
        EventSystem.current.SetSelectedGameObject(choices[0].gameObject);
    }

    public void MakeChoice(int choiceIndex)
    {
        currentStory.ChooseChoiceIndex(choiceIndex);
    }
    
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        dialogueIsPlaying = false;
        dialoguePanel.SetActive(false);
        
        // Collect all the choices 
        choicesText = new TextMeshProUGUI[choices.Length];
        int i = 0;
        foreach (GameObject choice in choices)
        {
            choicesText[i] = choice.GetComponentInChildren<TextMeshProUGUI>();
            i++;
        }
    }

    // Update is called once per frame
    void LateUpdate()
    {
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
                ContinueStory();
            }
        }
    }
}
