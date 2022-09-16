data TurnstileState = Locked | Unlocked
data TurnstileOutput = Wander | Enter | Push | Tut

push Unlocked = Push
push Locked = Tut

regularPerson :: TurnstileState -> ([TurnstileOutput], TurnstileState)
regularPerson Unlocked = ([push])