using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.UIElements;

[DefaultExecutionOrder(-2)]
public class DialogueUIManager : MonoBehaviour
{
    public static DialogueUIManager instance;
    private UIDocument _uiDocument;
    
    private VisualElement _dialogue;
    private Image _characterUI;
    private Image _headImage;
    private Label _dialogueText;
    private VisualElement _buttonHolder;
    private Button _nextButton;

    private void Awake()
    {
        instance = this;
        
        _uiDocument = GetComponent<UIDocument>();
        _dialogue = _uiDocument.rootVisualElement.Q<VisualElement>("Dialogue");
        _characterUI = _uiDocument.rootVisualElement.Q<Image>("CharacterUI");
        _headImage = _uiDocument.rootVisualElement.Q<Image>("CharacterImage");
        _dialogueText = _uiDocument.rootVisualElement.Q<Label>("DialogueText");
        _buttonHolder = _uiDocument.rootVisualElement.Q<VisualElement>("OptionButtons");
        _nextButton = _uiDocument.rootVisualElement.Q<Button>("ContinueButton");
        
        CharacterSwapManager.instance.OnCharacterSwap += ChangeCharacterSettings;
    }

    public void ToggleDialogue()
    {
        _dialogue.visible = !_dialogue.visible;
        _characterUI.visible = !_characterUI.visible;
    }

    public void ChangeDialogueText(string text)
    {
        _dialogueText.text = text;
    }
    
    private void ChangeCharacterSettings(CharacterSO characterSo)
    {
        _headImage.dataSource = characterSo;
        _dialogueText.dataSource = characterSo;
    }

    public List<Button> GetButtonList()
    {
        var buttonList = new List<Button>();

        for (int i = 0; i < _buttonHolder.childCount; i++)
        {
            buttonList.Add((Button)_buttonHolder[i]);
        }

        return buttonList;
    }

    public Button GetContinueButton() => _nextButton;

}