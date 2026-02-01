VAR currently_possessed = ""
VAR currently_speaking = ""

=== start ===
-> talk_to_luke

// This switch case chooses which dialouge to go to, can change names
=== talk_to_luke ===
{ currently_possessed:
    - "king": -> king_beginning
    - "best_friend": -> bsf_beginning
    - "royal_advisor": -> rival_beginning
    - "apprentice": -> apprentice_beginning
}

// ALL OF KINGS DIALOGUE

=== king_beginning ===
Luke: Hi again dad, you need something again?

+ [Mention the tragedy]
    ~ currently_speaking = "King Alphred"
    {currently_speaking} (You) "You're really quite brave you know"
    -> death_convo

-> DONE

// ALL BSF DIALOGUE

=== bsf_beginning ===
Luke: "Hi Nicola... sorry about being mean ealier, do you need something?"

+ [Mention the tragedy]
    ~ currently_speaking = "Nicola"
    {currently_speaking} (You) "You're really quite brave you know"
    -> death_convo
    
+ [Question the future king]
    ~ currently_speaking = "Nicola"
    "Well your going to be king now, isn’t that exciting?"
    -> king_convo
-> DONE

// ALL RIVAL DIALOGUE

=== rival_beginning === 
Hello sir. Do you need something?
    
+ [Mention the tragedy]
    ~ currently_speaking = "King Alphred"
    {currently_speaking} (You) "You're really quite brave you know"
    -> death_convo

-> DONE

// ALL APPRENTICE DIALOGUE

=== apprentice_beginning === 
Luke: "Still bothering me? You're not even worth my breath right now"

* [...]

-> DONE

// COMMON RESPONSES

=== king_convo ===
    Luke: "Exciting? “To be king is to be strong. To be king is to not show weakness. 
    To be king is to rule over all.” To be king is… never something I wanted… AH! I mean it must be my destiny 
    to rule and protect us all from harms way! I will be king!"
    <i>Laughs like King</i>
    "HAHAHAHAHA"

-> DONE

// Death convo will be an option to all except apprentice
=== death_convo === 
Luke: "Brave? How?"
    -> continue_convo

= continue_convo
+ [Explain]
    {currently_speaking}(You): "It's how you're handling her death."
    Luke: "Oh... well I'm not brave. I don't really get it. I know shes's gone right now, 
    but I wonder when she will be back"
    {currently_speaking} (You): <i>...</i>
    -> get_cut_off
    
= get_cut_off
+ [Bring it up]
    {currently_speaking}(You): "You know that-"
    "Luke": I know that she's gone forever. I just don't know hwere she left to. So I hope wherever
    she is now, it's a happy place.
    {currently_speaking} (You): "I see..."
    
-> DONE

// Can be triggered from king or best friend
=== rude_response === 
  Luke: Hump! So What?
  + [Call him out]
    {currently_speaking} (You): "Well it's not very kingly of you as the future ruler."
    ...
    Luke: "You're right..."
    
-> DONE

// Can be triggered by rival or apprentice
=== angry_response ===
Luke: "Who do you ThInK yoU'Re CALLING MOODY?!?!??! UGH! GO AWAY!" BAD RESPONSE

-> DONE