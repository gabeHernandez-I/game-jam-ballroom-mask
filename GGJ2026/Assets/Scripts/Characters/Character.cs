using System;
using Ink.UnityIntegration;
using UnityEngine;
using UnityEngine.InputSystem;

public class Character : MonoBehaviour
{
    public CharacterSO characterSO;

    public GameObject interactPopUp;
    public TextAsset inkJSON;
    
    private PlayerMovement _playerMovement;
    private Rigidbody2D _rigidbody;
    private BoxCollider2D _triggerCollider;
    private Animator _animator;
    private Character _currentSelectedCharacter;
    private int _currentScene;
    
    private void Awake()
    {
        _playerMovement = GetComponent<PlayerMovement>();
        _rigidbody = GetComponent<Rigidbody2D>();
        _triggerCollider = GetComponent<BoxCollider2D>();
        _animator = GetComponent<Animator>();
    }

    private void Start()
    {
        CharacterSwapManager.instance.OnCharacterSwap += OnCharacterSwap;
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        //If theres someone in the trigger collider and we are the active character
        //Using _playerMovement.enabled to see which Character is active. Probally not the best way to do it 
        if (other.TryGetComponent(out Character character) && _playerMovement.enabled)
        {
            if (character != _currentSelectedCharacter && character != this)
            {
                _currentSelectedCharacter = character;
                _currentSelectedCharacter.interactPopUp.SetActive(true);
            }
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        //If we have a selected Character and the character leaving is the selected character. Clear it 
        if (_currentSelectedCharacter && other.GetComponent<Character>())
        {
            _currentSelectedCharacter.interactPopUp.SetActive(false);
            _currentSelectedCharacter = null;
        }
    }

    private void Update()
    {
        //Just temp
        if (Keyboard.current.fKey.isPressed && _currentSelectedCharacter)
        {
            //Possess character
            CharacterSwapManager.instance.SwapCharacter(this, _currentSelectedCharacter);
        }
        
        if (Keyboard.current.eKey.isPressed && _currentSelectedCharacter)
        {
            //Possess character
            DialogueManager.instance.EnterDialogueMode(_currentSelectedCharacter.inkJSON, characterSO.ink_name);
        }
    }

    private void OnCharacterSwap(CharacterSO toCharacter)
    {
        //Recieves from the Character Swap Manager to see if it's the character being activated
        if (toCharacter == characterSO)
        {
            ActivateCharacter();
        }
        else
        {
            DeactivateCharacter();
        }
    }
    
    private void ActivateCharacter()
    {
        //Activate this Character's movement
        _playerMovement.enabled = true;
        _rigidbody.constraints = RigidbodyConstraints2D.FreezeRotation;
        _triggerCollider.enabled = true;
    }

    private void DeactivateCharacter()
    {
        //Deactivate movement and set animation to Idle
        _playerMovement.enabled = false;
        _rigidbody.constraints = RigidbodyConstraints2D.FreezeAll;
        _triggerCollider.enabled = false;
        _animator.SetFloat("Speed", 0);
    }

    public TextAsset GetScene() => characterSO.scenes[_currentScene];
}
