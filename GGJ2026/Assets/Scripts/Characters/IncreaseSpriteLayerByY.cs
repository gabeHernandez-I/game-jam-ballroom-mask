using UnityEngine;

public class IncreaseSpriteLayerByY : MonoBehaviour
{
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
