VAR currently_possessed = ""
VAR scene = ""

-> possession_check

===possession_check===
{ currently_possessed:

- "sibling": -> sibling_scenes
- "best_friend": -> bsf_scenes
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

===bsf_scenes===
{ scene:

- "1": -> bsf_1
- "2": -> bsf_2
- "3": -> bsf_3
- "4": -> bsf_4

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
King Alphred: "Why if it isn't my son. How nice of you to come and speak to me. Now boy, what do you need?" -> sibling_1_choices

===sibling_1_choices===
    + [Small Talk]
        Luke (You): "You seem to be enjoying yourself."
        
        King Alphred: "Why of course I am! We have some of the best wine here for this occasion and everyone is so lively. This would be one of the best balls we have ever had if it wasn't the fact that this is supposed to be a funeral."
        
        Luke (You): <i>You think to yourself</i>, "So he does admit that this is a funeral."
        
        King Alphred: "But look at it this way, she wouldn't want everyone to be sad in he absence. I'm just trying to live life in the present now. So please, take the time to enjoy yourself this evening. If not for yourself, then for her sake."
        Luke (You): "Why of course father." -> sibling_1_choices
        
    + [Question]
        Luke (You): "Why did you make the theme of this funeral a masquerade ball?"
        
        King Alphred: "Because I like masquerade balls."
        
        Luke (You): "Father..."
        
        Luke (You): "That's it?"
        
        King Alphred: "That's it."
        
        Luke (You): "..." -> sibling_1_choices
        
    + [Grieve]
        Luke (You): "Didn't you care for her!?!?"
        
        King Alphred: "Excuse me, what?"
        
        Luke (You): "I thought you loved her!?!?"
        
        King Alphred: "How dare you question my love for my own daughter? Have you ever THOUGHT that MAYBE even I NEED TO COPE!?!?!?"
        
        Luke (You): "I..."
        
        King Alphred: "Leave."
        
        Luke (You): "What..."
        
        King Alphred: "I said... LEAVE!"
        // This is a bad response that locks out king interactions for the rest of this round
        Luke (You): <i>You think to yourself</i>, "I do not want to see my father right now. I feel so hurt."
        -> END
    + [Leave]
        -> END
        
===bsf_1===
King Alphred: "Haha! It's good to see you Nicola. Now tell me how have you been?"

Nicola (You): "As okay as I can be Your Majesty."

King Alphred: "Well now isn't the time to be gloomy, this is a party after all! Please do try to enjoy yourself."

Nicola (You): <i>You think to yourself</i>, "But isn't this a funeral?" 

Nicola (You): "I will try my best too, but might I inquire about something?"

King Alphred: "Haha, sure! What is it that you wish to ask me?" -> bsf_1_choices

===bsf_1_choices===
    + [Small Talk]
        Nicola (You): "It seems that you've been drinking quite a lot this evening."
        
        King Alphred: "Why of course I have! We have some of the best wine being served here tonight, so it's best to make the most of it. You should try some yourself if you have the chance."
        
        Nicola (You): "I'm sorry, drinking at a party like this reminds me of memories that would sour my mood. But please I advise you to be cautious with the intake."
        
        King Alphred: "Ah yes, I know. And I'll be sure to have some ginger tea later if I feel nauseated. Thank you again for sharing that recipe with my servants."
        // You learned that Nicola is an herbalist from this interaction
        Nicola (You): "Why of course Your Majesty." -> bsf_1_choices
        
    + [Question]
        Nicola (You): "Why did you make the theme of this funeral a masquerade ball?"
        
        King Alphred: "Because I like masquerade balls."
        
        Nicola (You): "..."
        
        Nicola (You): "That's it?"
        
        King Alphred: "That's it."
        
        Nicola (You): "..." -> bsf_1_choices
        
    + [Grieve]
        Nicola (You): "Didn't you care for her!?!?"
        
        King Alphred: "Excuse me, what?"
        
        Nicola (You): "I thought you loved her!?!?"
        
        King Alphred: "How dare you question my love for my own daughter? Have you ever THOUGHT that MAYBE even I NEED TO COPE!?!?!?"
        
        Nicola (You): "I..."
        
        King Alphred: "Leave."
        
        Nicole (You): "What..."
        
        King Alphred: "I said... LEAVE!"
        // This is a bad response that locks out king interactions for the rest of this round
        Nicole (You): <i>You think to yourself</i>, "I do not want to see my father right now. I feel so hurt."
        -> END
    + [Leave]
        -> END

===advisor_1===
King Alphred: "Haha, why hello advisor! Isn't this just a splendid party?" 

Mathilde (You): <i>He's really lively for this being a funeral... that's new...</i>

Mathilde (You): "Indeed it is your highness, but we must remember who we are honoring on behalf of this party."

King Alphred: <i>For a split second, you could see the sadness in the King's eyes. They quickly go back to normal.</i>

Mathilde (You): "Now then, I have a few things I would like to speak with you about."

-> advisor_1_choices

===advisor_1_choices===
    + [Small Talk]
        Mathilde (You): "Are you enjoying yourself Your Majesty?"
        
        King Alphred: "Why of course I am! We have some of the best wine here for this occasion and everyone is so lively. This would be one of the best balls we have ever had if it wasn't the fact that this is supposed to be a funeral."
        
        Mathilde (You): <i>You think to yourself</i>, "So he does admit that this is a funeral."
        
        King Alphred: "But look at it this way, she wouldn't want everyone to be sad in he absence. I'm just trying to live life in the present now. So please, take the time to enjoy yourself this evening. If not for yourself, then for her sake."
        
        Mathilde (You): "Why of course Your Majesty." -> advisor_1_choices
        
    + [Grieve]
        Mathilde (You):  "Didn't you care for her!?!?"
        
        King Alphred: "Excuse me, what?"
        
        Mathilde (You):  "I thought you loved her!?!?"
        
        King Alphred: "How dare you question my love for my own daughter? Have you ever THOUGHT that MAYBE even I NEED TO COPE!?!?!?"
        
        Mathilde (You): "I..."
        
        King Alphred: "Leave."
        
        Mathilde (You):  "What..."
        
        King Alphred: "I said... LEAVE!"
        // This is a bad response that locks out king interactions for the rest of this round
        Mathilde (You):  <i>You think to yourself</i>, "I do not want to see my father right now. I feel so hurt."
        -> END
    + [Leave]
        -> END
        
===apprentice_1===
King Alphred: "Hello there my faithful subject! Enjoying this party? By the looks of it, you have something you wish to ask me? Ask away, this is a special occasion after all!" -> apprentice_1_choices

===apprentice_1_choices===
    + [Small Talk]
        Ulric (You): "You seem to be having a great time Your Majesty."
        
        King Alphred: "Why of course! We have some of the best wine here for this occasion and everyone is so lively. This would be one of the best balls we have ever had if it wasn't the fact that this is supposed to be a funeral."
        
        Ulric (You): <i>You think to yourself</i>, "So he does admit that this is a funeral."
        
        King Alphred: "But look at it this way, she wouldn't want everyone to be sad in he absence. I'm just trying to live life in the present now. So please, take the time to enjoy yourself this evening. If not for yourself, then for her sake."
        Ulric (You): "Yes, Your Majesty." -> apprentice_1_choices
        
    + [Question]
        Ulric (You): "Why did you make the theme of this funeral a masquerade ball?"
        
        King Alphred: "Because I like masquerade balls."
        
        Ulric (You): "..."
        
        Ulric (You): "That's it? I mean, <i>you clear your throat</i> that's great my lord!"
        
        King Alphred: "Thank you."
        
        Ulric (You): "You are very welcome." -> apprentice_1_choices
        
    + [Grieve]
        Ulric (You): "Didn't you care for her!?!?"
        
        King Alphred: "Excuse me, what?"
        
        Ulric (You): "I thought you loved her!?!?"
        
        King Alphred: "How dare you question my love for my own daughter? Have you ever THOUGHT that MAYBE even I NEED TO COPE!?!?!?"
        
        Ulric (You): "I..."
        
        King Alphred: "Leave."
        
        Ulric (You): "What..."
        
        King Alphred: "I said... LEAVE!"
        // This is a bad response that locks out king interactions for the rest of this round
        Ulric (You): <i>You think to yourself</i>, "I do not want to see my father right now. I feel so hurt."
        -> END
    + [Leave]
        -> END

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
        Nicola (You): "Your Majesty, this ball has been great! I am still greatly honored for the invitation."
        
        King Alphred: "It is my pleasure Nicola. Your presence is a light shining in these dark times." -> bsf_2_choices
        
    + [Observe]
        Nicola (You): "You seem to have many servants Your Majesty."
        
        King Alphred: "Haha, yes I do. They are all very loyal and very committed to their duties. Why, they would even kill for me if I so wanted."
        
        Nicola (You): <i>You are a bit taken aback. You softly smile while thinking to yourself</i>, "Why would my father say such a thing?" -> bsf_2_choices
    + [Leave]
        -> END

===advisor_2===
King Alphred: "Why hello there. Is there something you must speak to me about?" -> advisor_2_choices

===advisor_2_choices===
    + [Compliment]
        Mathilde (You): "The ballroom looks great Your Majesty. You never fail to put together the greatest parties in the kingdom."
        
        King Alphred: "Oh you're too kind Mathilde. You are but the backbone of our glorious kingdom." -> advisor_2_choices
        
    + [Observe]
        Mathilde (You): "You seem to have many servants Your Majesty."
        
        King Alphred: "Haha, yes I do. They are all very loyal and very committed to their duties. Why, they would even kill for me if I so wanted."
        
        // You discover that the king has many servants
        Mathilde (You): "The unwavering loyalty of your servants is inspiring Your Majesty." -> advisor_2_choices
    + [Leave]
        -> END

===apprentice_2===
King Alphred: "Hello there my faithful subject! Enjoying this party? By the looks of it, you have something you wish to say? Feel free, this is a special occasion after all!" -> apprentice_2_choices

===apprentice_2_choices===
    + [Compliment]
        Ulric (You): "Your Majesty, this ball seems to be a great success. How did you come up with such an idea?"
        
        King Alphred: "My subject, you should know best that I love masquerade balls! They are the solution to all of our problems." -> apprentice_2_choices
        
    + [Observe]
        Ulric (You): "You seem to have many servants Your Majesty."
        
        King Alphred: "Haha, yes I do. They are all very loyal and very committed to their duties. Why, they would even kill for me if I so wanted."
        
        // You discover that the king has many servants
        Ulric (You): <i>You exchange a smile with him, a bit unsure on how to respond to that.</i> -> apprentice_2_choices
    + [Leave]
        -> END

===sibling_3===
Luke (You): <i>You notice that your father has a distant gaze with a somber look in his eyes. You think to yourself</i>, "I should leave him alone for now."
    -> END

===bsf_3===
Nicola (You): <i>You notice that your father has a distant gaze with a somber look in his eyes. You think to yourself</i>, "I should leave him alone for now."
    -> END

===advisor_3===
Mathilde (You): <i>You notice that your father has a distant gaze with a somber look in his eyes. You think to yourself</i>, "I should leave him alone for now."
    -> END

===apprentice_3===
Ulric (You): <i>You notice that your father has a distant gaze with a somber look in his eyes. You think to yourself</i>, "I should leave him alone for now."
    -> END

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
        Nicola (You): "I did not take you as such a party animal Your Majesty."
        
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
