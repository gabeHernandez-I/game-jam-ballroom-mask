VAR currently_possessed = ""
VAR scene = ""

-> possession_check

===possession_check===
{ currently_possessed:

- "sibling": -> sibling_scenes
- "king": -> king_scenes
- "royal_advisor": -> advisor_scenes
- "apprentice": -> apprentice_scenes

}

===sibling_scenes===
{ scene:

- "1": -> sibling_1
- "2": -> sibling_2
- "3": -> sibling_3
- "4": -> sibling_4

}

===king_scenes===
{ scene:

- "1": -> king_1
- "2": -> king_2
- "3": -> king_3
- "4": -> king_4

}

===advisor_scenes===
{ scene:

- "1": -> advisor_1
- "2": -> advisor_2
- "3": -> advisor_3
- "4": -> advisor_4

}

===apprentice_scenes===
{ scene:

- "1": -> apprentice_1
- "2": -> apprentice_2
- "3": -> apprentice_3
- "4": -> apprentice_4

}

===sibling_1===
Nicola: "Oh… I didn’t realize you were here. I’m so sorry. Are you holding up?" -> sibling_1_choices

===sibling_1_choices===
    + [Reserved Response]
        Luke (You): "I'm managing."
        
        Nicola: "...Good. She worried about you a lot, you know. Even when they were overwhelmed themselves."
        
        Luke (You): "You knew them well, didn't you?"
        
        Nicola: <i>She wears a small, sad smile</i>. "Yes. Longer than most."
        
        Luke (You): <i>You think to yourself</i>, "You were the best part of my life Nicola..." -> sibling_1_choices
        
    + [Vulnerable Response]
        Luke (You): "I feel like I'm doing this wrong."
        
        Nicola: <i>Her voice becomes much softer</i>. "You aren't. None of us are doing this well."
        
        Luke (You): <i>You think to yourself</i>, "You are doing the best you can Nicola. You have always been so strong." -> sibling_1_choices
    + [Leave]
        -> END
        
===king_1===
Nicola: "Oh! Curtsies Your Majesty. I am so sorry for your loss. How may I be of service?"
    -> king_1_choices
    
===king_1_choices===
    + [Demand]
        King Alphred (You): "Remind me of your duties"
        
        // You learned that Nicola is an herbalist from this interaction
        Nicola: "I serve as the court’s herbalist, Your Majesty. I prepare remedies and tonics for those in need."
            -> king_1_choices
        
    + [Sympathize]
        King Alphred (You): "This must be a very difficult time for you as well."
        
        Nicola: "...Yes. She was my closest friend. I am trying to honor her properly."
        
        King Alphred (You): <i>You think to yourself</i>, "I miss you dearly as well Nicola."
            -> king_1_choices
        
    + [Question]
        King Alphred (You): "You attended to her often, I presume?"
        
        Nicola: "I did. She was exhausted most nights, and I worried for her health"
        
        King Alphred (You): <i>You think to yourself</i>, "I miss you dearly as well Nicola."
            -> king_1_choices
    + [Leave]
        -> END

===advisor_1===
Nicola: "Mathilde."

-> advisor_1_choices

===advisor_1_choices===
    + [Taunt]
        Mathilde (You) : "How lucky you are that the pathetic King's daughter had a sweet spot for you. Without her you would never be in the same room as me."
        
        Nicola: "I have no idea why you came. Only one of us here truly care for her."
            -> advisor_1_choices
    + [Leave]
        -> END
        
===apprentice_1===
Nicola: "Hey Ulric. How has all of this been treating you?" -> apprentice_1_choices

===apprentice_1_choices===
        
    + [Vulnerable Response]
        Ulric (You): "I'm trying my best to hold it all together."
        
        Nicola: "You and me both."
            -> apprentice_1_choices
        
    + [Confused Response]
        Ulric (You): "I don't know how this happened... how could this have happened?"
        
        Nicola: "I... wish I could tell you."
        
        // You learned that Nicola is an herbalist from this interaction
        Nicola: "If I had a little more time to help her, I could have made a remedy..."
        
        Ulric (You): "We all wish we could have been there to help. I'm so sorry."
            -> apprentice_1_choices
    + [Leave]
        -> END
        

===sibling_2===
Nicola: "How are you liking the masquerade party?" -> sibling_2_choices

===sibling_2_choices===
    + [Honest Response]
        Luke (You): "I really don't understand why he is holding a party for this. It feels a bit... wrong."
        
        Nicola: "I'm unsure, but I do know that she did love celebrations..."
        -> sibling_2_choices
        
    + [Fake Response]
        Luke (You): "I love this idea, our majesty never fails to inspire me."
        
        Nicola: "I suppose that she did enjoy celebrations."
            -> sibling_2_choices
    + [Leave]
        -> END
        
===king_2===
Nicola: "Your Majesty! Thank you for inviting me to this celebration."
    -> king_2_choices
    
===king_2_choices===
    + [Compliment]
        King Alphred (You): "You deserve to be here Nicola, your compassion and abilities are amazing."
        
        Nicola: "Oh my, that is so kind Your Majesty. Thank you..."
            -> king_2_choices
    + [Leave]
        -> END

===advisor_2===
Nicola: <i>She looks at you with very slight disdain</i> "May I help you Mathilde?"

-> advisor_2_choices

===advisor_2_choices===
    + [Question]
        Mathilde (You): "I came here for a reason Nicola. What were you doing at the last party with the princess before she dissapeared?"
        
        Nicola: "And why am I obligated in any way to respond?"
        
        Mathilde (You): "I suppose you did not care about her enough to learn what happened that night?"
        
        Nicola: <i>She raises her voice in a quick spurt of rage</i>"Don't you DARE tell me that I do not care about her. You know NOTHING."
        
        Mathilde (You): "A murderer would deny and refuse to provide any sufficient evidence."
        
        Nicola: <i>She raises her voice in a quick spurt of rage</i>"Don't you DARE tell me that I do not care about her. You know NOTHING."
        
        Mathilde (You): "I have no idea why you came. Only one of us here truly care for her." <i>You feel very bad as you push Nicola to the edge</i>.
        
        Nicola: "Will you just LEAVE me ALONE if I tell you something? All we did was have some mead together before she had wondered away before I had noticed. Now please, go about your night."
        // You learn here that Nicola had drinks with you before you died
            -> advisor_2_choices
    + [Leave]
        -> END
        
===apprentice_2===
Nicola: "Sorry Ulric, I am a bit preoccupied right now, could you come back later?" 
    -> END
    
===sibling_3===
Nicola: "How are you liking the masquerade party?" -> sibling_3_choices

===sibling_3_choices===
    + [Honest Response]
        Luke (You): "I really don't understand why he is holding a party for this. It feels a bit... wrong."
        
        Nicola: "I'm unsure, but I do know that she did love celebrations..."
        -> sibling_3_choices
        
    + [Fake Response]
        Luke (You): "I love this idea, our majesty never fails to inspire me."
        
        Nicola: "I suppose that she did enjoy celebrations."
            -> sibling_3_choices
    + [Leave]
        -> END
        
===king_3===
Nicola: "Your Majesty! Thank you for inviting me to this celebration."
    -> king_3_choices
    
===king_3_choices===
    + [Compliment]
        King Alphred (You): "You deserve to be here Nicola, your compassion and abilities are amazing."
        
        Nicola: "Oh my, that is so kind Your Majesty. Thank you..."
            -> king_3_choices
    + [Leave]
        -> END

===advisor_3===
Nicola: <i>She looks at you with very slight disdain</i> "May I help you Mathilde?"

-> advisor_3_choices

===advisor_3_choices===
    + [Backhanded-Respect]
        Mathilde (You): "Despite our differences Nicola, I can respect one thing about you. Your unwavering compassion for someone as helpless as the princess is quite the talent."
        
        Nicola: "I will take that as a compliment Mathilde. Thank you..."
        
        Nicola: <i>A grin grows on her face</i> "I suppose your determination to constantly one-up the princess for your suffering self-esteem is unmatchable."
        
        Mathilde (You): <i> You think to yourself</i>, "This is starting to hurt my own self-esteem at this point... but it's so touching how Nicola is always there to support me..." <i> You begin to tear up and quickly turn away before Nicola can see.</i>
        
        // You learn here that Nicola had drinks with you before you died
            -> advisor_3_choices
    + [Side-eye]
        Mathilde (You): <i>You give a very deliberate side-eye to Nicola. She deliberately ignores your side-eye</i>.
            -> advisor_3_choices
    + [Leave]
        -> END
        
===apprentice_3===
Nicola: "Hey Ulric. How has all of this been treating you?" -> apprentice_3_choices

===apprentice_3_choices===
        
    + [Vulnerable Response]
        Ulric (You): "I'm trying my best to hold it all together."
        
        Nicola: "You and me both."
            -> apprentice_3_choices
        
    + [Confused Response]
        Ulric (You): "I don't know how this happened... how could this have happened?"
        
        Nicola: "I... wish I could tell you."
        
        // You learned that Nicola is an herbalist from this interaction
        Nicola: "If I had a little more time to help her, I could have made a remedy..."
        
        Ulric (You): "We all wish we could have been there to help. I'm so sorry."
            -> apprentice_3_choices
    + [Leave]
        -> END

===sibling_4===
Nicola: "How are you liking the masquerade party?" -> sibling_4_choices

===sibling_4_choices===
    + [Honest Response]
        Luke (You): "I really don't understand why he is holding a party for this. It feels a bit... wrong."
        
        Nicola: "I'm unsure, but I do know that she did love celebrations..."
        -> sibling_4_choices
        
    + [Fake Response]
        Luke (You): "I love this idea, our majesty never fails to inspire me."
        
        Nicola: "I suppose that she did enjoy celebrations."
            -> sibling_4_choices
    + [Leave]
        -> END
        
===king_4===
Nicola: "Your Majesty! Thank you for inviting me to this celebration."
    -> king_4_choices
    
===king_4_choices===
    + [Compliment]
        King Alphred (You): "You deserve to be here Nicola, your compassion and abilities are amazing."
        
        Nicola: "Oh my, that is so kind Your Majesty. Thank you..."
            -> king_4_choices
    + [Leave]
        -> END

===advisor_4===
Nicola: <i>She looks at you with very slight disdain</i> "May I help you Mathilde?"

-> advisor_4_choices

===advisor_4_choices===
    + [Backhanded-Respect]
        Mathilde (You): "Despite our differences Nicola, I can respect one thing about you. Your unwavering compassion for someone as helpless as the princess is quite the talent."
        
        Nicola: "I will take that as a compliment Mathilde. Thank you..."
        
        Nicola: <i>A grin grows on her face</i> "I suppose your determination to constantly one-up the princess for your suffering self-esteem is unmatchable."
        
        Mathilde (You): <i> You think to yourself</i>, "This is starting to hurt my own self-esteem at this point... but it's so touching how Nicola is always there to support me..." <i> You begin to tear up and quickly turn away before Nicola can see.</i>
        
        // You learn here that Nicola had drinks with you before you died
            -> advisor_4_choices
    + [Side-eye]
        Mathilde (You): <i>You give a very deliberate side-eye to Nicola. She deliberately ignores your side-eye</i>.
            -> advisor_4_choices
    + [Leave]
        -> END
        
===apprentice_4===
Nicola: "Hey Ulric. How has all of this been treating you?" -> apprentice_4_choices

===apprentice_4_choices===
        
    + [Vulnerable Response]
        Ulric (You): "I'm trying my best to hold it all together."
        
        Nicola: "You and me both."
            -> apprentice_4_choices
        
    + [Confused Response]
        Ulric (You): "I don't know how this happened... how could this have happened?"
        
        Nicola: "I... wish I could tell you."
        
        // You learned that Nicola is an herbalist from this interaction
        Nicola: "If I had a little more time to help her, I could have made a remedy..."
        
        Ulric (You): "We all wish we could have been there to help. I'm so sorry."
            -> apprentice_4_choices
    + [Leave]
        -> END


