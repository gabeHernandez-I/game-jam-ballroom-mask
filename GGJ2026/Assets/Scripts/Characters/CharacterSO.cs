using UnityEngine;
using UnityEngine.Serialization;

[CreateAssetMenu(fileName = "New Character", menuName = "ScriptableObject/Character")]
public class CharacterSO : ScriptableObject
{
    [FormerlySerializedAs("name")] public string characterName;
    public Sprite head;
    public Sprite talkingBody;
    public Font font;
    public string ink_name;
    public TextAsset[] scenes;
}
