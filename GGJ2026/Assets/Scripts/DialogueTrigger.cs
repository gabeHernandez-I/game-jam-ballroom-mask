
using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.InputSystem;

public class DialogueTrigger : MonoBehaviour
{
    [Header("Visual Cue")] [SerializeField]
    private GameObject visualCue;
    
    [Header("Visual Cue")] [SerializeField]
    private TextAsset inkJSON;

    private bool playerInRange;
    
    private void Awake()
    {
        playerInRange = false;
        visualCue.SetActive(false);
    }

    private void OnTriggerEnter2D(Collider2D collider) {
        if (collider.tag == "Player")
        {
            playerInRange = true;
        }
    }
    
    private void OnTriggerExit2D(Collider2D collider) {
        if (collider.tag == "Player")
        {
            playerInRange = false;
        }
    }
    
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (playerInRange && !DialogueManager.GetInstance().dialogueIsPlaying)
        {
            visualCue.SetActive(true);
            if (Keyboard.current.eKey.wasPressedThisFrame)
            {
                DialogueManager.GetInstance().EnterDialogueMode(inkJSON);
            }
        }
        else
        {
            visualCue.SetActive(false);
        }
    }
}
