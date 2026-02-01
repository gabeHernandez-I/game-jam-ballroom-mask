// This is the dialogue for when you talk to the king in phase 1
VAR currently_possessed = ""

-> possession_check

===possession_check===
{ currently_possessed:

- "sibling": -> sibling_2
- "king": -> king_2
- "royal_advisor": -> advisor_2
- "apprentice": -> apprentice_2

}

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
Nicola: "Your majesty! Thank you for inviting me to this celebration."
    -> king_2_choices
    
===king_2_choices===
    + [Compliment]
        King Alphred (You): "You deserve to be here Nicola, your compassion and abilities are amazing."
        
        Nicola: "Oh my, that is so kind your majesty. Thank you..."
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
