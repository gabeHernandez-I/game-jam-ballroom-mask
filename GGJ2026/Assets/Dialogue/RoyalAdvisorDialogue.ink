VAR currently_possessed = ""
VAR scene = ""

-> possession_check

===possession_check===
{ currently_possessed:

- "sibling": -> sibling_scenes
- "king": -> king_scenes
- "best_friend": -> bsf_scenes
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

===king_scenes===
{ scene:

- "1": -> king_1
- "2": -> king_2
- "3": -> king_3
- "4": -> king_4

}

===apprentice_scenes===
{ scene:

- "1": -> apprentice_1
- "2": -> apprentice_2
- "3": -> apprentice_3
- "4": -> apprentice_4

}

===sibling_1===
Mathilde: "Ah! The young Prince Luke! Is there something I can help you with?" -> sibling_1_choices

===sibling_1_choices===
    + [Curious]
        Luke (You): "What have you been up to tonight?"
        
        Nicola: "...Good. She worried about you a lot, you know. Even when they were overwhelmed themselves."
        
        Luke (You): "You knew them well, didn't you?"
        
        Nicola: <i>She wears a small, sad smile</i>. "Yes. Longer than most."
        
        Luke (You): <i>You think to yourself</i>, "You were the best part of my life Nicola..." -> sibling_1_choices
        
    + [Vulnerable]
        Luke (You): "I feel like I'm doing this wrong."
        
        Nicola: <i>Her voice becomes much softer</i>. "You aren't. None of us are doing this well."
        
        Luke (You): <i>You think to yourself</i>, "You are doing the best you can Nicola. You have always been so strong." -> sibling_1_choices
    + [Leave]
        -> END
        


===bsf_1===
Mathilde: <i>The Advisor tilts her head at you, her expression unreadable through her mask</i>. "...is there something you need?"

-> bsf_1_choices

===bsf_1_choices===
    + [Sarcastic]
        Nicola (You): I suppose you’re enjoying this day, aren’t you?
        
        Mathilde: <i>The Advisor’s movements become rigid as she turns her head towards you. She takes a long, calculated moment to think before responding</i>. "Let’s not fight amongst ourselves tonight. I’m not so sure the King’s tolerance of you as his daughter’s friend would survive an outburst on the night of her funeral."
        
        Nicola: "I have no idea why you came. Only one of us here truly care for her."
            -> bsf_1_choices
            
    + [Aggressive]
        Nicola (You): Why are you even here? You two weren't even close.
        
        Mathilde: <i>The Advisor narrows her eyes at you, setting one hand on her waistbelt</i>. "My duties extend well beyond simple advising. And right now, the King needs his most trusted friends by his side."
            -> bsf_1_choices
    
    + [Invasive]
        Nicola (You): <i>The Advisor studies you curiously for a moment.</i> "And who told you about those? Nevermind that, I don't really care. They've been going very well, thank you."
        // This line reveals that Advisor is a skilled fighter.
            -> bsf_1_choices
            
    + [Leave]
        -> END

===king_1===
Nicola: "Your Majesty! <i>The Advisor bows graciously</i>. “Is there something you wish to discuss?" -> king_1_choices
    
===king_1_choices===
    + [Friendly]
        King Alphred (You): "I hope my favorite advisor is enjoying tonight, despite the circumstances?"
        
        Mathilde: "Oh, Your Majesty! You’re making me blush." <i>She chortles with a hint of amusement, before her tone grows more serious</i>. "You have put together a heart-warming celebration of your daughter's life. I can tell you're trying to make the best of things, for her sake."
        
        King Alphred (You): "That I am… Thank you, Mathilde."
        
        Mathilde: <i>She nods approvingly</i>. "If things ever become too difficult, you can always confide in me, Your Majesty. I would be more than happy to."
            -> king_1_choices
        
    + [Update]
        King Alphred (You): "How goes your work?"
        
        Mathilde: "Hmm... It's going well, I'd say. We've reached a bit of a stalemate along the river, but nothing to concern yourself about. We're in every position to play the long game. The situation will be dealt with accordingly." <i>She nods in assurance</i>.
        
        King Alphred (You): <i>You think to yourself</i>, "I miss you dearly as well Nicola."
            -> king_1_choices
            
    + [Nicola]
        King Alphred (You): "Nicola did a wonderful job picking out flowers, didn't she?"
        
        Mathilde: "That she did, Your Majesty! She spends so much time in that garden of hers, she had no doubts as to what arrangments to make.
        // Reveals that Nicola is good at herbalism
        -> king_1_choices
    
    + [Leave]
        -> END
        
===apprentice_1===
Mathilde: "Hmm? What is it?" <i>She asks with a hint of disinterest.</i> -> apprentice_1_choices

===apprentice_1_choices===
        
    + [Curious]
        Ulric (You): "Uhm... Lady Mathilde? Can I ask you what you were up to, on the night of..."
        
        Mathilde: "I was having a wonderful time, speaking with all our guests and trading gifts with a few of them. I’m not surprised you forgot, given your teeth were practically stained red with Burgundy." <i>She looks at you with a disapproving glare through the narrow slits of her mask</i>. "I need you to stay in good condition, you understand?"
            -> apprentice_1_choices
        
    + [Personal]
        Ulric (You): Can I ask you a question? Frankly, what did you think about Princess Isolde?
    
        Mathilde: <i>The Advisor thinks to herself for a long moment, letting the wine swirl along the walls of her glass</i>. "I think that she was very naive, but had a kind heart." She takes a swig from the aged red liquid, content to not say more."
            -> apprentice_1_choices
    
    + [Plans]
        Ulric (You): Master... what will we do now that the Princess is gone?
    
        Mathilde: <i>She looks steadily at you for a moment before casting her gaze across the room</i>. "We’ll continue to do exactly what it is we do. I will continue to be the King’s most trusted advisor, and you will continue to work as my apprentice. With the Princess gone, and the King’s heart broken, the Prince will need us both for guidance."
            -> apprentice_1_choices
            
    + [Leave]
        -> END
        
===sibling_2===
Mathilde: "Ah! The young Prince Luke! Is there something I can help you with?" -> sibling_2_choices

===sibling_2_choices===
    + [Curious]
        Luke (You): "What have you been up to tonight?"
        
        Nicola: "...Good. She worried about you a lot, you know. Even when they were overwhelmed themselves."
        
        Luke (You): "You knew them well, didn't you?"
        
        Nicola: <i>She wears a small, sad smile</i>. "Yes. Longer than most."
        
        Luke (You): <i>You think to yourself</i>, "You were the best part of my life Nicola..." -> sibling_2_choices
        
    + [Vulnerable]
        Luke (You): "I feel like I'm doing this wrong."
        
        Nicola: <i>Her voice becomes much softer</i>. "You aren't. None of us are doing this well."
        
        Luke (You): <i>You think to yourself</i>, "You are doing the best you can Nicola. You have always been so strong." -> sibling_2_choices
    + [Leave]
        -> END
        


===bsf_2===
Mathilde: <i>The Advisor tilts her head at you, her expression unreadable through her mask</i>. "...is there something you need?"

-> bsf_2_choices

===bsf_2_choices===
    + [Sarcastic]
        Nicola (You): I suppose you’re enjoying this day, aren’t you?
        
        Mathilde: <i>The Advisor’s movements become rigid as she turns her head towards you. She takes a long, calculated moment to think before responding</i>. "Let’s not fight amongst ourselves tonight. I’m not so sure the King’s tolerance of you as his daughter’s friend would survive an outburst on the night of her funeral."
        
        Nicola: "I have no idea why you came. Only one of us here truly care for her."
            -> bsf_2_choices
            
    + [Aggressive]
        Nicola (You): Why are you even here? You two weren't even close.
        
        Mathilde: <i>The Advisor narrows her eyes at you, setting one hand on her waistbelt</i>. "My duties extend well beyond simple advising. And right now, the King needs his most trusted friends by his side."
            -> bsf_2_choices
            
    + [Leave]
        -> END

===king_2===
Nicola: "Your Majesty! <i>The Advisor bows graciously</i>. “Is there something you wish to discuss?" -> king_2_choices
    
===king_2_choices===
    + [Friendly]
        King Alphred (You): "I hope my favorite advisor is enjoying tonight, despite the circumstances?"
        
        Mathilde: "Oh, Your Majesty! You’re making me blush." <i>She chortles with a hint of amusement, before her tone grows more serious</i>. "You have put together a heart-warming celebration of your daughter's life. I can tell you're trying to make the best of things, for her sake."
        
        King Alphred (You): "That I am… Thank you, Mathilde."
        
        Mathilde: <i>She nods approvingly</i>. "If things ever become too difficult, you can always confide in me, Your Majesty. I would be more than happy to."
            -> king_2_choices
        
    + [Update]
        King Alphred (You): "How goes your work?"
        
        Mathilde: "Hmm... It's going well, I'd say. We've reached a bit of a stalemate along the river, but nothing to concern yourself about. We're in every position to play the long game. The situation will be dealt with accordingly." <i>She nods in assurance</i>.
        
        King Alphred (You): <i>You think to yourself</i>, "I miss you dearly as well Nicola."
            -> king_2_choices
    
    + [Leave]
        -> END
        
===apprentice_2===
Mathilde: "Hmm? What is it?" <i>She asks with a hint of disinterest.</i> -> apprentice_2_choices

===apprentice_2_choices===
        
    + [Curious]
        Ulric (You): "Uhm... Lady Mathilde? Can I ask you what you were up to, on the night of..."
        
        Mathilde: "I was having a wonderful time, speaking with all our guests and trading gifts with a few of them. I’m not surprised you forgot, given your teeth were practically stained red with Burgundy." <i>She looks at you with a disapproving glare through the narrow slits of her mask</i>. "I need you to stay in good condition, you understand?"
            -> apprentice_2_choices
        
    + [Personal]
        Ulric (You): Can I ask you a question? Frankly, what did you think about Princess Isolde?
    
        Mathilde: <i>The Advisor thinks to herself for a long moment, letting the wine swirl along the walls of her glass</i>. "I think that she was very naive, but had a kind heart." She takes a swig from the aged red liquid, content to not say more."
            -> apprentice_2_choices
    
    + [Plans]
        Ulric (You): Master... what will we do now that the Princess is gone?
    
        Mathilde: <i>She looks steadily at you for a moment before casting her gaze across the room</i>. "We’ll continue to do exactly what it is we do. I will continue to be the King’s most trusted advisor, and you will continue to work as my apprentice. With the Princess gone, and the King’s heart broken, the Prince will need us both for guidance."
            -> apprentice_2_choices 
            
    + [Leave]
        -> END
        
===sibling_3===
Mathilde: "Ah! The young Prince Luke! Is there something I can help you with?" -> sibling_3_choices

===sibling_3_choices===
    + [Curious]
        Luke (You): "What have you been up to tonight?"
        
        Nicola: "...Good. She worried about you a lot, you know. Even when they were overwhelmed themselves."
        
        Luke (You): "You knew them well, didn't you?"
        
        Nicola: <i>She wears a small, sad smile</i>. "Yes. Longer than most."
        
        Luke (You): <i>You think to yourself</i>, "You were the best part of my life Nicola..." -> sibling_3_choices
        
    + [Vulnerable]
        Luke (You): "I feel like I'm doing this wrong."
        
        Nicola: <i>Her voice becomes much softer</i>. "You aren't. None of us are doing this well."
        
        Luke (You): <i>You think to yourself</i>, "You are doing the best you can Nicola. You have always been so strong." -> sibling_3_choices
    + [Leave]
        -> END
        


===bsf_3===
Mathilde: <i>The Advisor tilts her head at you, her expression unreadable through her mask</i>. "...is there something you need?"

-> bsf_3_choices

===bsf_3_choices===
    + [Sarcastic]
        Nicola (You): I suppose you’re enjoying this day, aren’t you?
        
        Mathilde: <i>The Advisor’s movements become rigid as she turns her head towards you. She takes a long, calculated moment to think before responding</i>. "Let’s not fight amongst ourselves tonight. I’m not so sure the King’s tolerance of you as his daughter’s friend would survive an outburst on the night of her funeral."
        
        Nicola: "I have no idea why you came. Only one of us here truly care for her."
            -> bsf_3_choices
            
    + [Aggressive]
        Nicola (You): Why are you even here? You two weren't even close.
        
        Mathilde: <i>The Advisor narrows her eyes at you, setting one hand on her waistbelt</i>. "My duties extend well beyond simple advising. And right now, the King needs his most trusted friends by his side."
            -> bsf_3_choices
            
    + [Leave]
        -> END

===king_3===
Nicola: "Your Majesty! <i>The Advisor bows graciously</i>. “Is there something you wish to discuss?" -> king_3_choices
    
===king_3_choices===
    + [Friendly]
        King Alphred (You): "I hope my favorite advisor is enjoying tonight, despite the circumstances?"
        
        Mathilde: "Oh, Your Majesty! You’re making me blush." <i>She chortles with a hint of amusement, before her tone grows more serious</i>. "You have put together a heart-warming celebration of your daughter's life. I can tell you're trying to make the best of things, for her sake."
        
        King Alphred (You): "That I am… Thank you, Mathilde."
        
        Mathilde: <i>She nods approvingly</i>. "If things ever become too difficult, you can always confide in me, Your Majesty. I would be more than happy to."
            -> king_3_choices
        
    + [Update]
        King Alphred (You): "How goes your work?"
        
        Mathilde: "Hmm... It's going well, I'd say. We've reached a bit of a stalemate along the river, but nothing to concern yourself about. We're in every position to play the long game. The situation will be dealt with accordingly." <i>She nods in assurance</i>.
        
        King Alphred (You): <i>You think to yourself</i>, "I miss you dearly as well Nicola."
            -> king_3_choices
    
    + [Leave]
        -> END
        
===apprentice_3===
Mathilde: "Hmm? What is it?" <i>She asks with a hint of disinterest.</i> -> apprentice_3_choices

===apprentice_3_choices===
        
    + [Curious]
        Ulric (You): "Uhm... Lady Mathilde? Can I ask you what you were up to, on the night of..."
        
        Mathilde: "I was having a wonderful time, speaking with all our guests and trading gifts with a few of them. I’m not surprised you forgot, given your teeth were practically stained red with Burgundy." <i>She looks at you with a disapproving glare through the narrow slits of her mask</i>. "I need you to stay in good condition, you understand?"
            -> apprentice_3_choices
        
    + [Personal]
        Ulric (You): Can I ask you a question? Frankly, what did you think about Princess Isolde?
    
        Mathilde: <i>The Advisor thinks to herself for a long moment, letting the wine swirl along the walls of her glass</i>. "I think that she was very naive, but had a kind heart." She takes a swig from the aged red liquid, content to not say more."
            -> apprentice_3_choices
    
    + [Plans]
        Ulric (You): Master... what will we do now that the Princess is gone?
    
        Mathilde: <i>She looks steadily at you for a moment before casting her gaze across the room</i>. "We’ll continue to do exactly what it is we do. I will continue to be the King’s most trusted advisor, and you will continue to work as my apprentice. With the Princess gone, and the King’s heart broken, the Prince will need us both for guidance."
            -> apprentice_3_choices 
            
    + [Leave]
        -> END

===sibling_4===
Mathilde: "Ah! The young Prince Luke! Is there something I can help you with?" -> sibling_4_choices

===sibling_4_choices===
    + [Curious]
        Luke (You): "What have you been up to tonight?"
        
        Nicola: "...Good. She worried about you a lot, you know. Even when they were overwhelmed themselves."
        
        Luke (You): "You knew them well, didn't you?"
        
        Nicola: <i>She wears a small, sad smile</i>. "Yes. Longer than most."
        
        Luke (You): <i>You think to yourself</i>, "You were the best part of my life Nicola..." -> sibling_4_choices
        
    + [Vulnerable]
        Luke (You): "I feel like I'm doing this wrong."
        
        Nicola: <i>Her voice becomes much softer</i>. "You aren't. None of us are doing this well."
        
        Luke (You): <i>You think to yourself</i>, "You are doing the best you can Nicola. You have always been so strong." -> sibling_4_choices
    + [Leave]
        -> END
        


===bsf_4===
Mathilde: <i>The Advisor tilts her head at you, her expression unreadable through her mask</i>. "...is there something you need?"

-> bsf_4_choices

===bsf_4_choices===
    + [Sarcastic]
        Nicola (You): I suppose you’re enjoying this day, aren’t you?
        
        Mathilde: <i>The Advisor’s movements become rigid as she turns her head towards you. She takes a long, calculated moment to think before responding</i>. "Let’s not fight amongst ourselves tonight. I’m not so sure the King’s tolerance of you as his daughter’s friend would survive an outburst on the night of her funeral."
        
        Nicola: "I have no idea why you came. Only one of us here truly care for her."
            -> bsf_4_choices
            
    + [Aggressive]
        Nicola (You): Why are you even here? You two weren't even close.
        
        Mathilde: <i>The Advisor narrows her eyes at you, setting one hand on her waistbelt</i>. "My duties extend well beyond simple advising. And right now, the King needs his most trusted friends by his side."
            -> bsf_4_choices
            
    + [Leave]
        -> END

===king_4===
Nicola: "Your Majesty! <i>The Advisor bows graciously</i>. “Is there something you wish to discuss?" -> king_4_choices
    
===king_4_choices===
    + [Friendly]
        King Alphred (You): "I hope my favorite advisor is enjoying tonight, despite the circumstances?"
        
        Mathilde: "Oh, Your Majesty! You’re making me blush." <i>She chortles with a hint of amusement, before her tone grows more serious</i>. "You have put together a heart-warming celebration of your daughter's life. I can tell you're trying to make the best of things, for her sake."
        
        King Alphred (You): "That I am… Thank you, Mathilde."
        
        Mathilde: <i>She nods approvingly</i>. "If things ever become too difficult, you can always confide in me, Your Majesty. I would be more than happy to."
            -> king_4_choices
        
    + [Update]
        King Alphred (You): "How goes your work?"
        
        Mathilde: "Hmm... It's going well, I'd say. We've reached a bit of a stalemate along the river, but nothing to concern yourself about. We're in every position to play the long game. The situation will be dealt with accordingly." <i>She nods in assurance</i>.
        
        King Alphred (You): <i>You think to yourself</i>, "I miss you dearly as well Nicola."
            -> king_4_choices
    
    + [Curious]
        King Alphred (You): "Mathilde, there is something very important I must know from the last party."
        
        Mathilde: <i>Her eyes quickly shift left-to-right, then back toward the king</i>. "O-Of course, this is quite perfect timing, as I was just about to head out for the night. How may I assist you Your Majesty?" 
        
        King Alphred (You): "Did you get a chance to see where my daughter was before the incident occured?"
        
        Mathilde: <i>She again shifts her eyes upward, showing a gesture of deep thinking</i>. "I actually do recall seeing her head out to the balcony a little bit before the incident occurred. Now excuse me, I must get ready to leave." <i>She seems to be in quite a rush to leave after proposing the question</i>. 
        
        King Alphred (You): "Thank you, Mathilde. Have a wonderful night."
        // Here you discover that the prrincess (you) were on the balcony alone before you died
            -> king_4_choices
    
    + [Leave]
        -> END
        
===apprentice_4===
Mathilde: "Hmm? What is it?" <i>She asks with a hint of disinterest.</i> -> apprentice_4_choices

===apprentice_4_choices===
        
    + [Curious]
        Ulric (You): "Uhm... Lady Mathilde? Can I ask you what you were up to, on the night of..."
        
        Mathilde: "I was having a wonderful time, speaking with all our guests and trading gifts with a few of them. I’m not surprised you forgot, given your teeth were practically stained red with Burgundy." <i>She looks at you with a disapproving glare through the narrow slits of her mask</i>. "I need you to stay in good condition, you understand?"
            -> apprentice_4_choices
        
    + [Personal]
        Ulric (You): Can I ask you a question? Frankly, what did you think about Princess Isolde?
    
        Mathilde: <i>The Advisor thinks to herself for a long moment, letting the wine swirl along the walls of her glass</i>. "I think that she was very naive, but had a kind heart." She takes a swig from the aged red liquid, content to not say more."
            -> apprentice_4_choices
    
    + [Plans]
        Ulric (You): Master... what will we do now that the Princess is gone?
    
        Mathilde: <i>She looks steadily at you for a moment before casting her gaze across the room</i>. "We’ll continue to do exactly what it is we do. I will continue to be the King’s most trusted advisor, and you will continue to work as my apprentice. With the Princess gone, and the King’s heart broken, the Prince will need us both for guidance."
            -> apprentice_4_choices 
            
    + [Leave]
        -> END