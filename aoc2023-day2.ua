StripSpaces ← ▽≠,@ 

SplitLines ← ⊜□≠,@\n
SplitGame ← ⊜□≠,@:
SplitRounds ← ⊜□≠,@;
SplitColours ← ⊜□≠,@,

ExtractNumber ← parse▽/+≡=+@0⇡10¤.

CountColour ← ×⊃(ExtractNumber)(/+⍉≡⊐⌕{"red" "green" "blue"}¤)

PartOne ← (
  StripSpaces
  SplitLines
  ≡(
    SplitGame ⊔
    ∩(⊔⊢)⊃↙↘1
    ExtractNumber
    ⊙(
      SplitRounds
      /+≡(
        SplitColours ⊔
        /+≡(CountColour ⊔)
        12_13_14
        ≡>
      )
      ¬±/+
    )
    ×
  )
  /+
)

PartOne $ Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
        $ Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue
        $ Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red
        $ Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red
        $ Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green

PartOne &fras "./aoc2023-day2-input.txt"

PartTwo ← (
  StripSpaces
  SplitLines
  ≡(
    SplitGame ⊔
    ↘1
    SplitRounds ⊔⊢
    ≡(
      SplitColours ⊔
      /+≡(CountColour ⊔)
    )
    /↥
    /×
  )
  /+
)

PartTwo $ Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
        $ Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue
        $ Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red
        $ Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red
        $ Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green

PartTwo &fras "./aoc2023-day2-input.txt"
