using UnityEngine;

public class IncreaseSpriteLayerByY : MonoBehaviour
{
    //This Script is what makes the characters move in front and behind other characters
    [SerializeField] private int sortingMultiplier = 100;

    private SpriteRenderer spriteRenderer;

    private void Awake()
    {
        spriteRenderer = GetComponent<SpriteRenderer>();
    }

    private void Update()
    {
        int order = Mathf.RoundToInt(-transform.position.y * sortingMultiplier);

        spriteRenderer.sortingOrder = order;
    }
}
