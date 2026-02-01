// This is the dialogue for when you talk to the king in phase 4
VAR currently_possessed = ""

-> possession_check

===possession_check===
{ currently_possessed:

- "sibling": -> sibling_4
- "best_friend": -> bsf_4
- "royal_advisor": -> advisor_4
- "apprentice": -> apprentice_4

}

===sibling_4===
King Alphred: "Hello there son. Are you enjoying yourself at this party?" -> sibling_4_choices

===sibling_4_choices===
    + [Small Talk]
        Luke (You): "Father, it is getting quite late is it not?"
        
        King Alphred: "Oh Luke, the ball has just begun! Now go out there and make gain the approval of your future people"
        
        Luke (You): "Alright..." <i>You think to yourself,</i> "Father never said such things to me."
        
        Luke (You): <i>Your impulses take over</i> "Father. Did you love her? Your excitement for my rule is far beyond what you ever showed for her."
        
        King Alphred: "Son? Where is this coming from? You already know... that I miss her so much."
        
        Luke (You): Then WHY did you never do this for her?!?! <i>You cannot stop the rage and sadness inside.</i>
        
        King Alphred: I just... wanted to protect her. I lost half of my world that night, and I do not think I can ever recover Luke. I would do anything to have her back.
        
        Luke (You): <i>You can't help but shed a few tears. You think to yourself</i>, "I never realized how much he loved me."
        
        Luke (You): Thank you, father.
        
        -> sibling_4_choices
        
    + [Leave]
        -> END
        
===bsf_4===
King Alphred: "Why hello there. Is there something you need?" -> bsf_4_choices

===bsf_4_choices===
    + [Small Talk]
        Nicola (You): "I did not take you as such a party animal your majesty."
        
        King Alphred: "Like father, like daughter. You knew most of all how much she loved special occasions. I really hope that she can see my love for her with this final ball." 
        
        Nicola (You): <i>You are very touched realizing why your father chose to host a masquerade ball</i>".
        -> apprentice_4_choices
    + [Leave]
        -> END

===advisor_4===
King Alphred: "Why hello there. Is there something you must speak to me about?" -> advisor_4_choices

===advisor_4_choices===
        
    + [Question]
        Mathilde (You): "Be honest with me your highness, do you think that Luke is fit to rule?"
        
        King Alphred: "Haha now that’s an interesting question indeed… if I’m being honest, I had much more worries for when <i>she</i> was supposed to take over."
        // You discover that the king is worried that you will not be a good leader
        -> advisor_4_choices
    + [Leave]
        -> END

===apprentice_4===
King Alphred: "Hello there my faithful subject! Enjoying this party? By the looks of it, you have something you wish to say? Feel free, this is a special occasion after all!" -> apprentice_4_choices

===apprentice_4_choices===
    + [Small Talk]
        Ulric (You): "Your majesty, is it not getting a bit late? I'm getting a bit tired myself."
        
        King Alphred: "My subject, where has all of your energy gone? You seem to never run out of energy when I see you about!" -> apprentice_4_choices
    + [Leave]
        -> END