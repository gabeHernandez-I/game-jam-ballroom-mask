using System;
using UnityEngine;
using UnityEngine.InputSystem;

public class Character : MonoBehaviour
{
    private PlayerMovement _playerMovement;

    private Character _currentSelectedCharacter;
    private void Awake()
    {
        _playerMovement = GetComponent<PlayerMovement>();
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.TryGetComponent(out Character character))
        {
            Debug.Log(character.name);
            _currentSelectedCharacter = character;
        }
    }

    private void Update()
    {
        if (Keyboard.current.eKey.isPressed && _currentSelectedCharacter)
        {
            _currentSelectedCharacter.ActivateCharacter();
            DeactivateCharacter();
        }
    }

    public void ActivateCharacter()
    {
        _playerMovement.enabled = true;
    }

    private void DeactivateCharacter()
    {
        _playerMovement.enabled = false;
    }
}
