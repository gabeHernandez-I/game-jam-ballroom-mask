using UnityEngine;

public class ScaleByYLevel : MonoBehaviour
{
    [SerializeField]private float minY = -5f;
    [SerializeField]private float maxY = 5f;

    [SerializeField] private float minScale = 0.7f;
    [SerializeField] private float maxScale = 2f;   

    void Update()
    {
        float positionY = transform.position.y;


        float yPercentage = Mathf.InverseLerp(minY, maxY, positionY);


        float scale = Mathf.Lerp(maxScale, minScale, yPercentage);

        transform.localScale = new Vector3(scale, scale, 1f);
    }
}
