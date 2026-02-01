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
        if(_timer > 0)
            return;

        _timer = timerMaxTime;
        Debug.Log(homeCharacter.characterSO.name.ToString() + targetCharacter.characterSO.name.ToString());
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
