// This is the dialogue for when you talk to the king in phase 1
VAR currently_possessed = ""

-> possession_check

===possession_check===
{ currently_possessed:

- "sibling": -> sibling_1
- "king": -> king_1
- "royal_advisor": -> advisor_1
- "apprentice": -> apprentice_1

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
Nicola: "Oh! Curtsies your majesty. I am so sorry for your loss. How may I be of service?"
    -> king_1_choices
    
===king_1_choices===
    + [Demand]
        King Alphred (You): "Remind me of your duties"
        
        // You learned that Nicola is an herbalist from this interaction
        Nicola: "I serve as the court’s herbalist, your majesty. I prepare remedies and tonics for those in need."
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
        Mathilde (You) : "How lucky you are that the pathetic king's daughter had a sweet spot for you. Without her you would never be in the same room as me."
        
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
