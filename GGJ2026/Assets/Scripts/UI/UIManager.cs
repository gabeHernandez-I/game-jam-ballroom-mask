using System;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.UIElements;

public class UIManager : MonoBehaviour
{
    private UIDocument _uiDocument;

    private VisualElement _pauseMenu;
    private Button _settingsButton;
    private VisualElement _dialogue;
    
    private void Awake()
    {
        _uiDocument = GetComponent<UIDocument>();

        _pauseMenu = _uiDocument.rootVisualElement.Q<VisualElement>("SettingsBook");
        _settingsButton = _uiDocument.rootVisualElement.Q<Button>("Settings");
        _dialogue = _uiDocument.rootVisualElement.Q<VisualElement>("Dialogue");

        Button closeButton = _pauseMenu.Q<Button>("SettingsClose");
        
        _settingsButton.clicked += ToggleSettings;
        closeButton.clicked += ToggleSettings;
        InputSystem.actions.FindAction("Jump").performed += ToggleDialogue;
    }

    private void ToggleDialogue(InputAction.CallbackContext callbackContext)
    {
        _dialogue.visible = !_dialogue.visible;
    }

    private void ToggleSettings()
    {
        _pauseMenu.visible = !_pauseMenu.visible;
        _settingsButton.visible = !_settingsButton.visible;
    }
}
