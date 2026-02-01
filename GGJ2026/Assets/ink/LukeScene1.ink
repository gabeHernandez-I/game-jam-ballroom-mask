VAR currently_possessed = ""

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

// KING DIALOUGE HERE

=== king_beginning ===
Luke: Um, hi dad. I mean sir. Is there something you need?
    * [Comment on his appearance]
      Your complexion looks paler than normal.
      -> king_response
 
= king_response
    Luke: Ugh you too!?!? Nicola also mentioned that. But I don’t want to drink her herbal tea! 
    It's gross! Ah, please don’t tell her I said that. I know she means well when she says I should have it.
      
-> king_questions

=== king_questions ===
+ [Inquire about the apprentice]
    How do you feel about the Apprentice?
    -> common_response

-> DONE

// BEST FRIEND DIALOUGE HERE

=== bsf_beginning ===
Luke: I swear if one more person bugs me this evening-

* [Speak up] 
    The future ruler shouldn't be saying stuff like that out loud, you know.
    -> luke_confronts_you

= luke_confronts_you
    Luke: HEY EXCUSE YOU! WHY I OTTA- oh... it's you. Oh... um... sorry.

* [It's okay.]
   It's okay.
   -> notice_complexion
    
= notice_complexion  
* [Comment on his appearance]
    Your complexion looks paler than normal.
    -> tea_argument

= tea_argument
Luke: Yeah, yeah, I know what you're going to say next, "Have you been drinking the herbal tea I make you?" 
      Well NO! I HAVEN'T! You're not the boss of me!

* [Think to yourself] 
    // Internal thought
    Wait, she's been making tea for him... I see.
    -> offer_help
    
= offer_help
* [Reassure him kindly]
    No, I'm not. But I do care. While it might be a small side gig of mine, I want to put my knowledge as a
    herbalist to help you. So please, consider drinking the tea.
    Luke: I'll think about it.
    -> bsf_questions

=== bsf_questions ===
+ [Catch up]
    So... what have you been up to?
    -> bsf_response_1
+ [Notice his physique]
    You look stronger than before
    -> bsf_response_2
    
+ [Inquire about the apprentice]
    How do you feel about the Apprentice?
    -> common_response

= bsf_response_1
    Luke: I don't need to tell you! But... I may or may not have been training with Mathilde since 
    she's an expert fighter.
    -> bsf_questions
    
= bsf_response_2
    You finally notice! I have been training more with Mathilde for the last month. She's super 
    stron-ah! I mean, yeah, I am stronger.
    -> bsf_questions
    
-> DONE
 
// RIVAL DIALOGUE BEGINS HERE

=== rival_beginning ===
Luke: Hello sir. Do you need something?
    * [Comment on his appearance]
        Your complexion looks paler than normal.
 
Luke: Ugh you too!?!? Nicola also mentioned that. But I don’t want to drink her herbal tea! 
      It's gross! Ah, please don’t tell her I said that. I know she means well when she says I should have it.
      // TODO add other questions
      
-> rival_questions

=== rival_questions ===
+ [Ask about Apprentice]
    So what do you think about my apprentice?
    -> rival_response
    
= rival_response
    Luke: Who- *See the apprentice* OH! They're okay I guess. They listen to you, so that's good?
    -> rival_questions

-> DONE

// APPRENTICE DIALOGUE BEGINS HERE

=== apprentice_beginning ===
Luke: What do you want?
    * [Comment on his appearance]
    Your complexion looks paler than normal.
    -> apprentice_response
    
= apprentice_response
Luke: Ugh you too!?!? Nicola also mentioned that. But I don’t want to drink her herbal tea! 
      It's gross! Ah, please don’t tell her I said that. I know she means well when she says I should have it.
      -> apprentice_questions
      
=== apprentice_questions === 
+ [Inquire about the apprentice]
    How do you feel about the Apprentice?
    -> common_response
      
-> DONE

=== common_response === 
Luke: 
Who? Do you mean the one who is always with Mathilde? I don't really know how to feel about them,
    they keep to themselves and only seem to be doing whatever Mathilde needs them to do
    
-> DONE
