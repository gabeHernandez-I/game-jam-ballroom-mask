using System;
using UnityEngine;
using UnityEngine.UIElements;

public class SettingsUIManager : MonoBehaviour
{
    //This just turns on and off the book
    private UIDocument _uiDocument;

    private VisualElement _pauseMenu;
    private Button _settingsButton;
    
    private void Awake()
    {
        _uiDocument = GetComponent<UIDocument>();
        
        //Open book
        _pauseMenu = _uiDocument.rootVisualElement.Q<VisualElement>("SettingsBook");
        //Button book
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