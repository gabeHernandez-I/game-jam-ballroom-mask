using UnityEngine;
using UnityEngine.InputSystem;

[RequireComponent(typeof(Rigidbody2D))]
public class PlayerMovement : MonoBehaviour
{
    [SerializeField] private float moveSpeed = 5f;

    private Rigidbody2D _rigidbody;
    private Vector2 _direction;
    private Animator _animator;
    private SpriteRenderer _spriteRenderer;

    void Awake()
    {
        _rigidbody = GetComponent<Rigidbody2D>();
        _animator = GetComponent<Animator>();
        _spriteRenderer = GetComponent<SpriteRenderer>();
    }

    void Update()
    {
        _direction = InputSystem.actions.FindAction("Move").ReadValue<Vector2>();
        if (_direction.magnitude > 0)
        {
            _spriteRenderer.flipX = _direction.x < 0;     
        }
        
        _animator.SetFloat("Speed", _direction.magnitude);
    }

    void FixedUpdate()
    {
        _rigidbody.linearVelocity = _direction * moveSpeed;
    }
}
