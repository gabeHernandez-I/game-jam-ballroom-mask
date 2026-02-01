VAR currently_possessed = ""
VAR scene = ""

-> possession_check

===possession_check===
{ currently_possessed:

- "sibling": -> sibling_scenes
- "king": -> king_scenes
- "best_friend": -> bsf_scenes
- "royal_advisor": -> advisor_scenes

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

===sibling_1===
Ulric: <i>The Apprentice tilts his head quizzically as he bows</i>. "Greetings, Prince. Is something the matter?" -> sibling_1_choices

===sibling_1_choices===
    + [Degrading]
        Luke (You): "What do you even do around here? I never see you do anything!"
        
        Ulric: "W- well I… I do whatever it is I am needed to do, of course! I simply follow Lady Mathilde’s guidance!" <i> The Apprentice steadies himself with a deep breath</i>. "If you are to become King one day, then you must start paying attention to these things."
        
        Luke (You): "Don't lecture me! I'm not a child!?"
        
        Ulric: "You’re right, I’m sorry… I mean no offense. Perhaps it’s just best for the two of us to talk some other time, Your Highness."
            -> sibling_1_choices
        
    + [Leave]
        -> END

===bsf_1===
Ulric: "Uhh… hello there? Is there something you need…?" -> bsf_1_choices

===bsf_1_choices===
    + [Consolation]
        Nicola (You): "I was hoping to speak to someone about what happened."
        
        Ulric: <i>He scans you disbelievingly for a moment</i>. "M-me? But why me...?" <i>He steps a bit closer to you</i>. "Sorry, I don't mean to seem unwilling. It's just that I didn't expect that is all."
        
        Nicola (You): "This is all just so much. I'm having a hard time piecing things together."
        
        Ulric: <i>He remains quiet for a moment, watching you closely as the gears turn in his mind</i>. "From what I understand, you were close to her correct?"
        
        Nicola (You): "Yes, she was the best friend I ever had."
        
        Ulric: "Even as someone who didn't know her, she seemed like a great person. It seems like you chose a great best friend."
            -> bsf_1_choices
            
    + [Aggressive]
        Nicola (You): "Don't you ever leave that hag's side?"
        
        Ulric: <i>The Apprentice’s head recoils back and he crosses his arms defensively</i>. "W- what? I… Well, no, as a matter of fact, I don’t! She is a great instructor! Now just leave me alone!" <i>He turns his head away from you</i>.
            -> bsf_1_choices
            
    + [Leave]
        -> END

===king_1===
Ulric: "Your Majesty!" <i>The Apprentice bows deeply, his voice quivering slightly.</i> "I am graced by your presence, my Lord!" -> king_1_choices
    
===king_1_choices===
    + [Empathy]
        King Alphred (You): "Ulric, was it? How are you holding up?"
        
        Ulric: <i>The Apprentice sighs deeply</i>. "Not well, I'm afraid. I didn't know her personally, but I knew that she was a great painter and a lovely soul. I wish that I could have known her better... I am deeply sorry for your loss, sir." <i>His eyes glisten softly from the narrow slits of his mask.</i>
        
        King Alphred (You): "Really...? You mean that?"
        
        Ulric: "Y-yes sir! Absolutely, every word!"
            -> king_1_choices
        
    + [Command]
        King Alphred (You): "Remind me of your duties to Lady Mathilde."
        
        Ulric: <i>A shiver runs through the Apprentice, and he clasps his hands together</i>. "I am Lady Mathilde’s personal assistant and apprentice, sir. I manage her personal finances and other such affairs, while she focuses on the war. I hope to study under her so that I may be considered for such a position in the far future."
            -> king_1_choices
            
    + [Curious]
        King Alphred (You): "Speak candidly: How does Lady Mathilde treat you?"
        
        Ulric: "Lady Mathilde...?" <i> The Apprentice takes a deep breath. "She is... demanding, but fair. I am expected to folow her every command, and to be present at all times. Everything I know, I've learned from her, Your Majesty."
            -> king_1_choices
    
    + [Leave]
        -> END
        
===advisor_1===
Ulric: <i>The Apprentice watches attentively as he quickly bows his head</i>. "Yes, Lady Mathilde?" -> advisor_1_choices

===advisor_1_choices===
        
    + [Opinion]
        Mathilde (You): What are your thoughts on the King?
    
        Ulric: "The King...?" <i>The Apprentice thinks for a moment, never taking his eyes off of you</i>. "He’s a strong but compassionate ruler. I know that the death of the Princess has broken him in some way. I can see it in his eyes, the way they’re almost… looking for something, for her." <i>He shivers once as if suddenly cold, then goes quiet</i>.
        
        Ulric: "..."
        
        Ulric: "Was there anything else, Master?"
            -> advisor_1_choices
            
    + [Leave]
        -> END
        
===sibling_2===
Ulric: <i>The Apprentice tilts his head quizzically as he bows</i>. "Greetings, Prince. Is something the matter?" -> sibling_2_choices

===sibling_2_choices===
    + [Degrading]
        Luke (You): "What do you even do around here? I never see you do anything!"
        
        Ulric: "W- well I… I do whatever it is I am needed to do, of course! I simply follow Lady Mathilde’s guidance!" <i> The Apprentice steadies himself with a deep breath</i>. "If you are to become King one day, then you must start paying attention to these things."
        
        Luke (You): "Don't lecture me! I'm not a child!?"
        
        Ulric: "You’re right, I’m sorry… I mean no offense. Perhaps it’s just best for the two of us to talk some other time, Your Highness."
            -> sibling_2_choices
        
    + [Leave]
        -> END

===bsf_2===
Ulric: "Uhh… hello there? Is there something you need…?" -> bsf_2_choices

===bsf_2_choices===
    + [Consolation]
        Nicola (You): "I was hoping to speak to someone about what happened."
        
        Ulric: <i>He scans you disbelievingly for a moment</i>. "M-me? But why me...?" <i>He steps a bit closer to you</i>. "Sorry, I don't mean to seem unwilling. It's just that I didn't expect that is all."
        
        Nicola (You): "This is all just so much. I'm having a hard time piecing things together."
        
        Ulric: <i>He remains quiet for a moment, watching you closely as the gears turn in his mind</i>. "From what I understand, you were close to her correct?"
        
        Nicola (You): "Yes, she was the best friend I ever had."
        
        Ulric: "Even as someone who didn't know her, she seemed like a great person. It seems like you chose a great best friend."
            -> bsf_2_choices
            
    + [Aggressive]
        Nicola (You): "Don't you ever leave that hag's side?"
        
        Ulric: <i>The Apprentice’s head recoils back and he crosses his arms defensively</i>. "W- what? I… Well, no, as a matter of fact, I don’t! She is a great instructor! Now just leave me alone!" <i>He turns his head away from you</i>.
            -> bsf_2_choices
            
    + [Leave]
        -> END

===king_2===
Ulric: "Your Majesty!" <i>The Apprentice bows deeply, his voice quivering slightly.</i> "I am graced by your presence, my Lord!" -> king_2_choices
    
===king_2_choices===
    + [Empathy]
        King Alphred (You): "Ulric, was it? How are you holding up?"
        
        Ulric: <i>The Apprentice sighs deeply</i>. "Not well, I'm afraid. I didn't know her personally, but I knew that she was a great painter and a lovely soul. I wish that I could have known her better... I am deeply sorry for your loss, sir." <i>His eyes glisten softly from the narrow slits of his mask.</i>
        
        King Alphred (You): "Really...? You mean that?"
        
        Ulric: "Y-yes sir! Absolutely, every word!"
            -> king_2_choices
        
    + [Command]
        King Alphred (You): "Remind me of your duties to Lady Mathilde."
        
        Ulric: <i>A shiver runs through the Apprentice, and he clasps his hands together</i>. "I am Lady Mathilde’s personal assistant and apprentice, sir. I manage her personal finances and other such affairs, while she focuses on the war. I hope to study under her so that I may be considered for such a position in the far future."
            -> king_2_choices
            
    + [Curious]
        King Alphred (You): "Speak candidly: How does Lady Mathilde treat you?"
        
        Ulric: "Lady Mathilde...?" <i> The Apprentice takes a deep breath. "She is... demanding, but fair. I am expected to folow her every command, and to be present at all times. Everything I know, I've learned from her, Your Majesty."
            -> king_2_choices
    
    + [Leave]
        -> END
        
===advisor_2===
Ulric: <i>The Apprentice watches attentively as he quickly bows his head</i>. "Yes, Lady Mathilde?" -> advisor_2_choices

===advisor_2_choices===
     
    + [Confide]
        Mathilde (You): What are your thoughts on the King's son?
    
        Ulric: "You mean Prince Luke?" <i>The Apprentice thinks for a moment, never taking his eyes off of you</i>. "He seems like he can be very short-tempered and definitely not ready to be a King." <i>He quickly goes quiet, searching to see if the King may have overheard nearby</i>.
        
        Mathilde (You): Would I not be a much better choice of an heir than Prince Luke?
        
        Ulric: "..." <i>Ulric carefully moves close enough to whisper into your ear</i>
        
        Ulric: <i>He whispers</i>, "Master... We should not discuss this here; it could lead to very bad reprecussions if we get caught."
        // This is where we discover that the advisor wants to gain more power over the sibling and be the heir
            -> advisor_2_choices
            
    + [Opinion]
        Mathilde (You): What are your thoughts on the King?
    
        Ulric: "The King...?" <i>The Apprentice thinks for a moment, never taking his eyes off of you</i>. "He’s a strong but compassionate ruler. I know that the death of the Princess has broken him in some way. I can see it in his eyes, the way they’re almost… looking for something, for her." <i>He shivers once as if suddenly cold, then goes quiet</i>.
        
        Ulric: "..."
        
        Ulric: "Was there anything else, Master?"
            -> advisor_2_choices
            
    + [Leave]
        -> END
        
===sibling_3===
Ulric: <i>The Apprentice tilts his head quizzically as he bows</i>. "Greetings, Prince. Is something the matter?" -> sibling_3_choices

===sibling_3_choices===
    + [Degrading]
        Luke (You): "What do you even do around here? I never see you do anything!"
        
        Ulric: "W- well I… I do whatever it is I am needed to do, of course! I simply follow Lady Mathilde’s guidance!" <i> The Apprentice steadies himself with a deep breath</i>. "If you are to become King one day, then you must start paying attention to these things."
        
        Luke (You): "Don't lecture me! I'm not a child!?"
        
        Ulric: "You’re right, I’m sorry… I mean no offense. Perhaps it’s just best for the two of us to talk some other time, Your Highness."
            -> sibling_3_choices
        
    + [Leave]
        -> END

===bsf_3===
Ulric: "Uhh… hello there? Is there something you need…?" -> bsf_3_choices

===bsf_3_choices===
    + [Consolation]
        Nicola (You): "I was hoping to speak to someone about what happened."
        
        Ulric: <i>He scans you disbelievingly for a moment</i>. "M-me? But why me...?" <i>He steps a bit closer to you</i>. "Sorry, I don't mean to seem unwilling. It's just that I didn't expect that is all."
        
        Nicola (You): "This is all just so much. I'm having a hard time piecing things together."
        
        Ulric: <i>He remains quiet for a moment, watching you closely as the gears turn in his mind</i>. "From what I understand, you were close to her correct?"
        
        Nicola (You): "Yes, she was the best friend I ever had."
        
        Ulric: "Even as someone who didn't know her, she seemed like a great person. It seems like you chose a great best friend."
            -> bsf_3_choices
            
    + [Aggressive]
        Nicola (You): "Don't you ever leave that hag's side?"
        
        Ulric: <i>The Apprentice’s head recoils back and he crosses his arms defensively</i>. "W- what? I… Well, no, as a matter of fact, I don’t! She is a great instructor! Now just leave me alone!" <i>He turns his head away from you</i>.
            -> bsf_3_choices
            
    + [Leave]
        -> END

===king_3===
Ulric: "Your Majesty!" <i>The Apprentice bows deeply, his voice quivering slightly.</i> "I am graced by your presence, my Lord!" -> king_3_choices
    
===king_3_choices===
    + [Empathy]
        King Alphred (You): "Ulric, was it? How are you holding up?"
        
        Ulric: <i>The Apprentice sighs deeply</i>. "Not well, I'm afraid. I didn't know her personally, but I knew that she was a great painter and a lovely soul. I wish that I could have known her better... I am deeply sorry for your loss, sir." <i>His eyes glisten softly from the narrow slits of his mask.</i>
        
        King Alphred (You): "Really...? You mean that?"
        
        Ulric: "Y-yes sir! Absolutely, every word!"
            -> king_3_choices
        
    + [Investigative]
        King Alphred (You): "Did you happen to see where my daughter went before the incident occurred?"
        
        Ulric: "Sorry my lord, I cannot recall when I last saw her that night. I believe it was too long ago for me to fully remember."
        
        King Alphred (You): "Are you sure you did not see anything when you and Lady Mathilde left the party?"
        
        Ulric: <i>He noticeably tenses up a bit</i>"The only notable thing I can remember is... oh, right! The couple who left on a rural road that the Princess and Prince we're both- I MEAN-" <i>His abrupt pause feels like a minute</i>. "I'm so sorry sir, I must talk to Lady Mathilde. I wlll speak to you later."
        // This is where you discover that the prince (sibling) was alone with the princess after the party
            -> king_3_choices
            
    + [Curious]
        King Alphred (You): "Speak candidly: How does Lady Mathilde treat you?"
        
        Ulric: "Lady Mathilde...?" <i> The Apprentice takes a deep breath. "She is... demanding, but fair. I am expected to folow her every command, and to be present at all times. Everything I know, I've learned from her, Your Majesty."
            -> king_3_choices
    
    + [Leave]
        -> END
        
===advisor_3===
Ulric: <i>The Apprentice watches attentively as he quickly bows his head</i>. "Yes, Lady Mathilde?" -> advisor_3_choices

===advisor_3_choices===
     
    + [Interrogative]
        Mathilde (You): "So... where were you that night, Ulric?"
        
        Ulric: "T- that’s a very odd question, Master. I was right by your side, of course!" <i>The apprentice shifts uncomfortably</i>. "If you’re asking where I got the wine… I snagged it after the Princess and Nicola left it behind." <i>He admits dejectedly</i>
        // Reveals that best friend and princess had drinks alone with each other
        
        Mathilde (You): "Where did they go afterward?"
        
        Ulric: "I don't know. I didn't follow them..."
            -> advisor_3_choices
            
    + [Opinion]
        Mathilde (You): What are your thoughts on the King?
    
        Ulric: "The King...?" <i>The Apprentice thinks for a moment, never taking his eyes off of you</i>. "He’s a strong but compassionate ruler. I know that the death of the Princess has broken him in some way. I can see it in his eyes, the way they’re almost… looking for something, for her." <i>He shivers once as if suddenly cold, then goes quiet</i>.
        
        Ulric: "..."
        
        Ulric: "Was there anything else, Master?"
            -> advisor_3_choices
            
    + [Leave]
        -> END

===sibling_4===
Ulric: <i>The Apprentice tilts his head quizzically as he bows</i>. "Greetings, Prince. Is something the matter?" -> sibling_4_choices

===sibling_4_choices===
    + [Degrading]
        Luke (You): "What do you even do around here? I never see you do anything!"
        
        Ulric: "W- well I… I do whatever it is I am needed to do, of course! I simply follow Lady Mathilde’s guidance!" <i> The Apprentice steadies himself with a deep breath</i>. "If you are to become King one day, then you must start paying attention to these things."
        
        Luke (You): "Don't lecture me! I'm not a child!?"
        
        Ulric: "You’re right, I’m sorry… I mean no offense. Perhaps it’s just best for the two of us to talk some other time, Your Highness."
            -> sibling_4_choices
        
    + [Leave]
        -> END

===bsf_4===
Ulric: "Uhh… hello there? Is there something you need…?" -> bsf_4_choices

===bsf_4_choices===
    + [Consolation]
        Nicola (You): "I was hoping to speak to someone about what happened."
        
        Ulric: <i>He scans you disbelievingly for a moment</i>. "M-me? But why me...?" <i>He steps a bit closer to you</i>. "Sorry, I don't mean to seem unwilling. It's just that I didn't expect that is all."
        
        Nicola (You): "This is all just so much. I'm having a hard time piecing things together."
        
        Ulric: <i>He remains quiet for a moment, watching you closely as the gears turn in his mind</i>. "From what I understand, you were close to her correct?"
        
        Nicola (You): "Yes, she was the best friend I ever had."
        
        Ulric: "Even as someone who didn't know her, she seemed like a great person. It seems like you chose a great best friend."
            -> bsf_4_choices
            
    + [Aggressive]
        Nicola (You): "Don't you ever leave that hag's side?"
        
        Ulric: <i>The Apprentice’s head recoils back and he crosses his arms defensively</i>. "W- what? I… Well, no, as a matter of fact, I don’t! She is a great instructor! Now just leave me alone!" <i>He turns his head away from you</i>.
            -> bsf_4_choices
            
    + [Leave]
        -> END

===king_4===
Ulric: "Your Majesty!" <i>The Apprentice bows deeply, his voice quivering slightly.</i> "I am graced by your presence, my Lord!" -> king_4_choices
    
===king_4_choices===
    + [Empathy]
        King Alphred (You): "Ulric, was it? How are you holding up?"
        
        Ulric: <i>The Apprentice sighs deeply</i>. "Not well, I'm afraid. I didn't know her personally, but I knew that she was a great painter and a lovely soul. I wish that I could have known her better... I am deeply sorry for your loss, sir." <i>His eyes glisten softly from the narrow slits of his mask.</i>
        
        King Alphred (You): "Really...? You mean that?"
        
        Ulric: "Y-yes sir! Absolutely, every word!"
            -> king_4_choices
            
    + [Curious]
        King Alphred (You): "Speak candidly: How does Lady Mathilde treat you?"
        
        Ulric: "Lady Mathilde...?" <i> The Apprentice takes a deep breath. "She is... demanding, but fair. I am expected to folow her every command, and to be present at all times. Everything I know, I've learned from her, Your Majesty."
            -> king_4_choices
    
    + [Leave]
        -> END
        
===advisor_4===
Ulric: <i>The Apprentice watches attentively as he quickly bows his head</i>. "Yes, Lady Mathilde?" -> advisor_4_choices

===advisor_4_choices===
     
    + [Interrogative]
        Mathilde (You): "So... where were you that night, Ulric?"
        
        Ulric: "T- that’s a very odd question, Master. I was right by your side, of course!" <i>The apprentice shifts uncomfortably</i>. "If you’re asking where I got the wine… I snagged it after the Princess and Nicola left it behind." <i>He admits dejectedly</i>
        // Reveals that best friend and princess had drinks alone with each other
        
        Mathilde (You): "Where did they go afterward?"
        
        Ulric: "I don't know. I didn't follow them..."
            -> advisor_4_choices
            
    + [Opinion]
        Mathilde (You): What are your thoughts on the King?
    
        Ulric: "The King...?" <i>The Apprentice thinks for a moment, never taking his eyes off of you</i>. "He’s a strong but compassionate ruler. I know that the death of the Princess has broken him in some way. I can see it in his eyes, the way they’re almost… looking for something, for her." <i>He shivers once as if suddenly cold, then goes quiet</i>.
        
        Ulric: "..."
        
        Ulric: "Was there anything else, Master?"
            -> advisor_4_choices
            
    + [Leave]
        -> END