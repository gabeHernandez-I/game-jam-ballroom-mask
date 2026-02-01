using System;
using UnityEngine;
using UnityEngine.UIElements;

public class SettingsUIManager : MonoBehaviour
{
    private UIDocument _uiDocument;

    private VisualElement _pauseMenu;
    private Button _settingsButton;
    
    private void Awake()
    {
        _uiDocument = GetComponent<UIDocument>();

        _pauseMenu = _uiDocument.rootVisualElement.Q<VisualElement>("SettingsBook");
        _settingsButton = _uiDocument.rootVisualElement.Q<Button>("Settings");

        Button closeButton = _pauseMenu.Q<Button>("SettingsClose");
        
        _settingsButton.clicked += ToggleSettings;
        closeButton.clicked += ToggleSettings;
    }


    private void ToggleSettings()
    {
        _pauseMenu.visible = !_pauseMenu.visible;
        _settingsButton.visible = !_settingsButton.visible;
    }
}