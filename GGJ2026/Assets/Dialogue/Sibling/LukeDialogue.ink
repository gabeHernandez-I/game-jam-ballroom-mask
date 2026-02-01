VAR currently_possessed = ""
VAR currently_speaking = ""
VAR scene = ""

=== start ===
-> talk_to_luke

// This switch case chooses which dialouge to go to, can change names
=== talk_to_luke ===
{ currently_possessed:
    - "king": -> king_scenes
    - "best_friend": -> bsf_scenes
    - "royal_advisor": -> advisor_scenes
    - "apprentice": -> apprentice_scenes
}

===king_scenes===
{ scene:

- "1": -> king_1
- "2": -> king_2
- "3": -> king_3
- "4": -> king_3

}

===bsf_scenes===
{ scene:

- "1": -> bsf_1
- "2": -> bsf_2
- "3": -> bsf_3
- "4": -> bsf_3

}

===advisor_scenes===
{ scene:

- "1": -> advisor_1
- "2": -> advisor_2
- "3": -> advisor_3
- "4": -> advisor_3

}

===apprentice_scenes===
{ scene:

- "1": -> apprentice_1
- "2": -> apprentice_2
- "3": -> apprentice_3
- "4": -> apprentice_3

}

// KING DIALOUGE HERE

=== king_1 ===
Luke: "Um, hi dad. I mean sir. Is there something you need?"
    * [Comment on his appearance]
      King(You): "Your complexion looks paler than normal."
      -> king_response
 
= king_response
    Luke: "Ugh you too!?!? Nicola also mentioned that. But I don’t want to drink her herbal tea! 
    It's gross! Ah, please don’t tell her I said that. I know she means well when she says I should have it."
      
-> king_questions

=== king_questions ===
+ [Inquire about the apprentice]
    King Alphred(You) "How do you feel about the Apprentice?"
    -> common_response

-> DONE

// BEST FRIEND DIALOUGE HERE

=== bsf_1 ===
Luke: "I swear if one more person bugs me this evening-"

* [Speak up] 
    Nicola (You): "The future ruler shouldn't be saying stuff like that out loud, you know."
    -> luke_confronts_you

= luke_confronts_you
    Luke: "HEY EXCUSE YOU! WHY I OTTA- oh... it's you. Oh... um... sorry."

* [It's okay.]
   Nicola (You): "It's okay."
   -> notice_complexion
    
= notice_complexion  
* [Comment on his appearance]
    Nicola (You): "Your complexion looks paler than normal."
    -> tea_argument

= tea_argument
Luke: "Yeah, yeah, I know what you're going to say next, "Have you been drinking the herbal tea I make you?" 
      Well NO! I HAVEN'T! You're not the boss of me!"

* [Think to yourself] 
    // Internal thought 
    <i>Wait, she's been making tea for him... I see.</i>
    
    -> offer_help
    
= offer_help
* [Reassure him kindly]
    Nicola (You): "No, I'm not. But I do care. While it might be a small side gig of mine, I want to put my knowledge as a
    herbalist to help you. So please, consider drinking the tea."
    // Reveals that Nicola is a herbalist
    "Luke: I'll think about it."
    -> bsf_questions

=== bsf_questions ===
+ [Catch up]
    Nicola(You): "So... what have you been up to?"
    -> bsf_response_1
+ [Notice his physique]
    Nicola(You): You look stronger than before
    -> bsf_response_2
    
+ [Inquire about the apprentice]
    How do you feel about the Apprentice?
    -> common_response

= bsf_response_1
    Luke: "I don't need to tell you! But... I may or may not have been training with Mathilde since 
    she's an expert fighter."
    // You find out that Royal adviser is an expert fighter
    -> bsf_questions
    
= bsf_response_2
    Luke: "You finally notice! I have been training more with Mathilde for the last month. She's super 
    stron-ah! I mean, yeah, I am stronger."
    // You find out that Royal adviser is an expert fighter
    -> bsf_questions
    
-> DONE
 
// RIVAL DIALOGUE BEGINS HERE

=== advisor_1 ===
Luke: "Hello sir. Do you need something?"
    * [Comment on his appearance]
       Mathilde(You): "Your complexion looks paler than normal."
    // Reveals that Nicola is a herbalist
Luke: "Ugh you too!?!? Nicola also mentioned that. But I don’t want to drink her herbal tea! 
      It's gross! Ah, please don’t tell her I said that. I know she means well when she says I should have it."
      
-> rival_questions

=== rival_questions ===
+ [Ask about Apprentice]
    Mathilde(You): "So what do you think about my apprentice?"
    -> rival_response
    
= rival_response
    Luke: "Who- *See the apprentice* OH! They're okay I guess. They listen to you, so that's good?"
    -> rival_questions

-> DONE

// APPRENTICE DIALOGUE BEGINS HERE

=== apprentice_1 ===
Luke: What do you want?
    * [Comment on his appearance]
    Ulric (You) "Your complexion looks paler than normal."
    -> apprentice_response
    
= apprentice_response
Luke: "Ugh you too!?!? Nicola also mentioned that. But I don’t want to drink her herbal tea! 
// Reveals that Nicola is a herbalist
      It's gross! Ah, please don’t tell her I said that. I know she means well when she says I should have it."
      -> apprentice_questions
      
// Might have to take out
=== apprentice_questions === 
+ [Inquire about the apprentice]
    How do you feel about the Apprentice?
    -> common_response
      
-> DONE

=== common_response === 
Luke: "Who? Do you mean the one who is always with Mathilde? I don't really know how to feel about them,
    they keep to themselves and only seem to be doing whatever Mathilde needs them to do"
    //Reveals that goon does whatever Mathilde wants to do
    
-> DONE

=== king_2 ===
Luke: Um, sir? Do you need me?
+ [Ask what's wrong]
    King Alphred(You) "Well aren’t you in a mood."
    ~ currently_speaking = "King Alphred"
    -> rude_response

+ [Mention the tragedy]
    ~ currently_speaking = "King Alphred"
    {currently_speaking} (You) "You're really quite brave you know"
    -> death_convo

-> DONE

// ALL BSF DIALOGUE

=== bsf_2 ===
Luke: "Hi Nicola... sorry about being mean ealier, do you need something?"

+ [Mention the tragedy]
    ~ currently_speaking = "Nicola"
    {currently_speaking} (You) "You're really quite brave you know"
    -> death_convo

+ [Ask what's wrong]
    Well aren’t you in a mood.
    ~ currently_speaking = "Nicola"
    -> rude_response
    
+ [Question the future king]
    ~ currently_speaking = "Nicola"
    "Well your going to be king now, isn’t that exciting?"
    -> king_convo
-> DONE

// ALL RIVAL DIALOGUE

=== advisor_2 === 
Hello sir. Do you need something?
+ [Ask what's wrong]
    Well aren’t you in a mood.
    ~ currently_speaking = "Mathilde"
    -> angry_response
    
+ [Mention the tragedy]
    ~ currently_speaking = "King Alphred"
    {currently_speaking} (You) "You're really quite brave you know"
    -> death_convo

-> DONE

// ALL APPRENTICE DIALOGUE

=== apprentice_2 === 
Luke: "Ugh, leave me alone. Have one of the servants help you if you need something. 
I mean literally there are so many of them."

* [Ask what's wrong]
    Well aren’t you in a mood.
    ~ currently_speaking = "Ulric"
    -> angry_response

+ [Question the future king]
    ~ currently_speaking = "Ulric"
    "Well your going to be king now, isn’t that exciting?"
    -> king_convo

-> DONE

// COMMON RESPONSES

=== king_convo ===
    Luke: "Exciting? “To be king is to be strong. To be king is to not show weakness. 
    To be king is to rule over all.” To be king is… never something I wanted… AH! I mean it must be my destiny 
    to rule and protect us all from harms way! I will be king!"
    <i>Laughs in King</i>
    HAHA

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

=== king_3 ===
Luke: Hi again dad, you need something again?

+ [Mention the tragedy]
    ~ currently_speaking = "King Alphred"
    {currently_speaking} (You) "You're really quite brave you know"
    -> death_convo_2

-> DONE

// ALL BSF DIALOGUE

=== bsf_3 ===
Luke: "Hi Nicola... sorry about being mean ealier, do you need something?"

+ [Mention the tragedy]
    ~ currently_speaking = "Nicola"
    {currently_speaking} (You) "You're really quite brave you know"
    -> death_convo_2
    
+ [Question the future king]
    ~ currently_speaking = "Nicola"
    "Well your going to be king now, isn’t that exciting?"
    -> king_convo_2
-> DONE

// ALL RIVAL DIALOGUE

=== advisor_3 === 
Hello sir. Do you need something?
    
+ [Mention the tragedy]
    ~ currently_speaking = "King Alphred"
    {currently_speaking} (You) "You're really quite brave you know"
    -> death_convo_2

-> DONE

// ALL APPRENTICE DIALOGUE

=== apprentice_3 === 
Luke: "Still bothering me? You're not even worth my breath right now"

* [...]

-> DONE

// COMMON RESPONSES

=== king_convo_2 ===
    Luke: "Exciting? “To be king is to be strong. To be king is to not show weakness. 
    To be king is to rule over all.” To be king is… never something I wanted… AH! I mean it must be my destiny 
    to rule and protect us all from harms way! I will be king!"
    <i>Laughs like King</i>
    "HAHAHAHAHA"

-> DONE

// Death convo will be an option to all except apprentice
=== death_convo_2 === 
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
