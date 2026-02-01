// This is the dialogue for when you talk to the king in phase 2
VAR currently_possessed = ""

-> possession_check

===possession_check===
{ currently_possessed:

- "sibling": -> sibling_2
- "best_friend": -> bsf_2
- "royal_advisor": -> advisor_2
- "apprentice": -> apprentice_2

}

===sibling_2===
King Alphred: "Hello there son. Are you enjoying yourself at this party?" -> sibling_2_choices

===sibling_2_choices===
    + [Express Concern]
        Luke (You): "Are you sure you're okay?"
        
        Luke (You): <i> You hear a soft sigh from your father and for a split second, you thought you saw tears forming in his eyes</i>
        
        King Alphred: "Now listen to me, my boy. Bad things happen all the time, it is up to us as rulers to stay strong for everyone else. You must learn this as well, since you will be the one to inherit the throne now."
        
        Luke (You): "But what if he-" <i>You stop yourself for a second</i>, "What if I'm not ready?"
        
        King Alphred: "You will have to be my boy. Now be strong, put on a brave face, and do NOT show the others how this affects us. We cannot show weakness."
        
        Luke (You): "Is that what <i>she</i> would of wanted?"
        
        // You discover that you would be the heir, but now Luke will be
        King Alphred: "Who is to say? What matters now is how we let it affect us." -> sibling_2_choices
    
    + [Compliment]
        Luke (You): "I am pleasantly surprised father, this ball has been a great experience thus far."
        
        King Alphred: "Thank you son! I told you that this would be a great idea, haha!" -> sibling_2_choices
        
    + [Question]
        Luke (You): "Why do we have even more servants than before?"
        
        King Alphred: "Because they are always keeping an eye out for anything that may go wrong. We cannot be too cautious after all."
        
        Luke (You): "Is this because we don't know how she-"
        
        // You discover that the king has many servants
        King Alphred: "Not another word from you. We do not know who has prying ears. How about you go treat yourself to the sweets we have once you have a chance?" -> sibling_2_choices
        
    + [Leave]
        -> END
        
===bsf_2===
King Alphred: "Why hello there. Is there something you need?" -> bsf_2_choices

===bsf_2_choices===
    + [Compliment]
        Nicola (You): "Your majesty, this ball has been great! I am still greatly honored for the invitation."
        
        King Alphred: "It is my pleasure Nicola. Your presence is a light shining in these dark times." -> bsf_2_choices
        
    + [Observe]
        Nicola (You): "You seem to have many servants your majesty."
        
        King Alphred: "Haha, yes I do. They are all very loyal and very committed to their duties. Why, they would even kill for me if I so wanted."
        
        Nicola (You): <i>You are a bit taken aback. You softly smile while thinking to yourself</i>, "Why would my father say such a thing?" -> bsf_2_choices
    + [Leave]
        -> END

===advisor_2===
King Alphred: "Why hello there. Is there something you must speak to me about?" -> advisor_2_choices

===advisor_2_choices===
    + [Compliment]
        Mathilde (You): "The ballroom looks great your majesty. You never fail to put together the greatest parties in the kingdom."
        
        King Alphred: "Oh you're too kind Mathilde. You are but the backbone of our glorious kingdom." -> advisor_2_choices
        
    + [Observe]
        Mathilde (You): "You seem to have many servants your majesty."
        
        King Alphred: "Haha, yes I do. They are all very loyal and very committed to their duties. Why, they would even kill for me if I so wanted."
        
        // You discover that the king has many servants
        Mathilde (You): "The unwavering loyalty of your servants is inspiring your majesty." -> advisor_2_choices
    + [Leave]
        -> END

===apprentice_2===
King Alphred: "Hello there my faithful subject! Enjoying this party? By the looks of it, you have something you wish to say? Feel free, this is a special occasion after all!" -> apprentice_2_choices

===apprentice_2_choices===
    + [Compliment]
        Ulric (You): "Your majesty, this ball seems to be a great success. How did you come up with such an idea?"
        
        King Alphred: "My subject, you should know best that I love masquerade balls! They are the solution to all of our problems." -> apprentice_2_choices
        
    + [Observe]
        Ulric (You): "You seem to have many servants your majesty."
        
        King Alphred: "Haha, yes I do. They are all very loyal and very committed to their duties. Why, they would even kill for me if I so wanted."
        
        // You discover that the king has many servants
        Ulric (You): <i>You exchange a smile with him, a bit unsure on how to respond to that.</i> -> apprentice_2_choices
    + [Leave]
        -> END