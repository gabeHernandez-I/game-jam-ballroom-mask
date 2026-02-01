using Ink.UnityIntegration;
using UnityEngine;

[CreateAssetMenu(fileName = "New Character", menuName = "ScriptableObject/Character")]
public class CharacterSO : ScriptableObject
{
    public string name;
    public Sprite head;
    public Sprite talkingBody;
    public Font font;
    public string ink_name;
    public TextAsset[] scenes;
}
