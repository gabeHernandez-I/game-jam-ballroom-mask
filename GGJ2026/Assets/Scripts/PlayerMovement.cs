using UnityEngine;
using UnityEngine.InputSystem;

[RequireComponent(typeof(Rigidbody2D))]
public class PlayerMovement : MonoBehaviour
{
    [SerializeField] private float moveSpeed = 5f;

    private Rigidbody2D _rigidbody;
    private Vector2 _direction;

    void Awake()
    {
        _rigidbody = GetComponent<Rigidbody2D>();
    }

    void Update()
    {
        _direction = InputSystem.actions.FindAction("Move").ReadValue<Vector2>();
    }

    void FixedUpdate()
    {
        _rigidbody.linearVelocity = _direction * moveSpeed;
    }
}
