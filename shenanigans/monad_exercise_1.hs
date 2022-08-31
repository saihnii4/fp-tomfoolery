data TurnstileState = Locked | Unlocked

data TurnstileOutput = Wander | Enter | Open

data Person = RegularPerson | DistractedPerson | HastyPerson

coin _ = (Open, Unlocked)

push Inserted = Unlocked
push x = x -- otherwise reflect back

regularPerson, distractedPerson, hastyPerson :: TurnstileState -> ([TurnstileOutput], TurnstileState)

regularPerson state = case state of
  Locked -> (Enter, push . coin Locked)
  otherwise -> Nothing -- undefined behaviour

hastyPerson state = case state of
  Locked -> (Enter, push . coin . push Locked)
  Inserted -> (Enter, push Inserted)
  otherwise -> Nothing -- undefined behaviour

distractedPerson state = case state of 
  Locked -> (Open, push . coin Locked)
  Unlocked -> (Wander, Unlocked)

scenario s0 =
  let (a1, s1) = hastyPerson s0
      (a2, s2) = distractedPerson s1
      (a3, s3) = regularPerson s2
      (a4, s4) = distractedPerson s3
      (a5, s5) = hastyPerson s4
