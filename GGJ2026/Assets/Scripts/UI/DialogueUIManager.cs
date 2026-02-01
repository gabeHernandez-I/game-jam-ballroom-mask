using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.UIElements;

public class DialogueUIManager : MonoBehaviour
{
    private UIDocument _uiDocument;
    
    private VisualElement _dialogue;
    private Image _characterUI;
    private Image _headImage;
    private Label _dialogueText;

    private void Awake()
    {
        _uiDocument = GetComponent<UIDocument>();
        _dialogue = _uiDocument.rootVisualElement.Q<VisualElement>("Dialogue");
        _characterUI = _uiDocument.rootVisualElement.Q<Image>("CharacterUI");
        _headImage = _uiDocument.rootVisualElement.Q<Image>("CharacterImage");
        _dialogueText = _uiDocument.rootVisualElement.Q<Label>("DialogueText");
        
        InputSystem.actions.FindAction("Jump").performed += ToggleDialogue;
        
        CharacterSwapManager.instance.OnCharacterSwap += ChangeCharacterSettings;
    }

    private void ToggleDialogue(InputAction.CallbackContext callbackContext)
    {
        _dialogue.visible = !_dialogue.visible;
        _characterUI.visible = !_characterUI.visible;
    }
    
    private void ChangeCharacterSettings(CharacterSO characterSo)
    {
        _headImage.dataSource = characterSo;
        _dialogueText.dataSource = characterSo;
    }
}