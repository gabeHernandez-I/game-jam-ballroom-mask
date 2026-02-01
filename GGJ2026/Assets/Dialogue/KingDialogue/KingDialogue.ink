// This is the dialogue for when you talk to the king in phase 1
VAR currently_possessed = ""

-> possession_check

===possession_check===
{ currently_possessed:

- "sibling": -> sibling_1
- "best_friend": -> bsf_1
- "royal_advisor": -> advisor_1
- "apprentice": -> apprentice_1

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

Nicola (You): "As okay as I can be your majesty."

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
        Nicola (You): "Why of course your majesty." -> bsf_1_choices
        
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
        Mathilde (You): "Are you enjoying yourself your majesty?"
        
        King Alphred: "Why of course I am! We have some of the best wine here for this occasion and everyone is so lively. This would be one of the best balls we have ever had if it wasn't the fact that this is supposed to be a funeral."
        
        Mathilde (You): <i>You think to yourself</i>, "So he does admit that this is a funeral."
        
        King Alphred: "But look at it this way, she wouldn't want everyone to be sad in he absence. I'm just trying to live life in the present now. So please, take the time to enjoy yourself this evening. If not for yourself, then for her sake."
        
        Mathilde (You): "Why of course your majesty." -> advisor_1_choices
        
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
        Ulric (You): "You seem to be having a great time your majesty."
        
        King Alphred: "Why of course! We have some of the best wine here for this occasion and everyone is so lively. This would be one of the best balls we have ever had if it wasn't the fact that this is supposed to be a funeral."
        
        Ulric (You): <i>You think to yourself</i>, "So he does admit that this is a funeral."
        
        King Alphred: "But look at it this way, she wouldn't want everyone to be sad in he absence. I'm just trying to live life in the present now. So please, take the time to enjoy yourself this evening. If not for yourself, then for her sake."
        Ulric (You): "Yes, your majesty." -> apprentice_1_choices
        
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
