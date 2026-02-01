using System;
using UnityEngine;

[DefaultExecutionOrder(-2)]
public class CharacterSwapManager : MonoBehaviour
{
    public static CharacterSwapManager instance;
    public Action<CharacterSO> OnCharacterSwap;

    [SerializeField] private float timerMaxTime = 1f;
    
    private float _timer;
    
    private void Awake()
    {
        instance = this;
    }

    public void SwapCharacter(Character homeCharacter, Character targetCharacter )
    {
        //Gets from the Character script fires off event to tell everything subscribed whos the new active character
        if(_timer > 0)
            return;

        _timer = timerMaxTime;
        
        OnCharacterSwap?.Invoke(targetCharacter.characterSO);
    }

    private void Update()
    {
        if (_timer > 0)
        {
            _timer -= Time.deltaTime;
        }
    }
}
