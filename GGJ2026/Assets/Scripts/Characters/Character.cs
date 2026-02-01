using System;
using UnityEngine;
using UnityEngine.InputSystem;

public class Character : MonoBehaviour
{
    public CharacterSO characterSO;
    
    private PlayerMovement _playerMovement;
    private Rigidbody2D _rigidbody;
    private BoxCollider2D _triggerCollider;
    private Animator _animator;
    private Character _currentSelectedCharacter;
    
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
        if (other.TryGetComponent(out Character character) && _playerMovement.enabled)
        {
            _currentSelectedCharacter = character;
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (_currentSelectedCharacter && other.TryGetComponent(out Character character) == _currentSelectedCharacter)
        {
            _currentSelectedCharacter = null;
        }
    }

    private void Update()
    {
        if (Keyboard.current.eKey.isPressed && _currentSelectedCharacter)
        {
            CharacterSwapManager.instance.SwapCharacter(this, _currentSelectedCharacter);
        }
    }

    private void OnCharacterSwap(CharacterSO toCharacter)
    {
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
        _playerMovement.enabled = true;
        _rigidbody.constraints = RigidbodyConstraints2D.FreezeRotation;
        _triggerCollider.enabled = true;
    }

    private void DeactivateCharacter()
    {
        _playerMovement.enabled = false;
        _rigidbody.constraints = RigidbodyConstraints2D.FreezeAll;
        _triggerCollider.enabled = false;
        _animator.SetTrigger("GoIdle");
        _animator.SetFloat("Speed", 0);
    }
}
