// This is the dialogue for when you talk to the king in phase 3
VAR currently_possessed = ""

-> possession_check

===possession_check===
{ currently_possessed:

- "sibling": -> sibling_3
- "best_friend": -> bsf_3
- "royal_advisor": -> advisor_3
- "apprentice": -> apprentice_3

}

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
