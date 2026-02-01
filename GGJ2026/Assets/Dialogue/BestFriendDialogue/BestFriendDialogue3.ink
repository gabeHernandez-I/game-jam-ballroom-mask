// This is the dialogue for when you talk to the king in phase 3
VAR currently_possessed = ""

-> possession_check

===possession_check===
{ currently_possessed:

- "sibling": -> sibling_3
- "king": -> king_3
- "royal_advisor": -> advisor_3
- "apprentice": -> apprentice_3

}

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
Nicola: "Your majesty! Thank you for inviting me to this celebration."
    -> king_3_choices
    
===king_3_choices===
    + [Compliment]
        King Alphred (You): "You deserve to be here Nicola, your compassion and abilities are amazing."
        
        Nicola: "Oh my, that is so kind your majesty. Thank you..."
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
