SplitLines ← ⊜∘≠,@\n

FindDigits ← ≡(/+="0123456789"¤)
FindGroups ← ⊕□\+¬≡(≍0_1)⊂0_1-⊃(↙-1⧻.)(↘1).⊚
FindSpecialChars ← ≡(¬/+="0123456789."¤)
FindGears ← ≡(/+=@*¤)

CalculateWindow ← ⊃(+2⊢⇌)(↥0-1⊢)

PartOne ← (
  SplitLines
  FindDigits.
  FindGroups
  ⊙¤
  ⊃(
    ≡⊐(/+♭FindSpecialChars↘:⬚@.↙⊙:CalculateWindow)
  )(
    ≡⊐(⋕⊡)
  )
  ▽
  /+
)

PartOne $ 467..114..
        $ ...*......
        $ ..35..633.
        $ ......#...
        $ 617*......
        $ .....+.58.
        $ ..592.....
        $ ......755.
        $ ...$.*....
        $ .664.598..

PartOne &fras "./aoc2023-day3-input.txt"

PartTwo ← (
  SplitLines

  FindDigits.
  FindGroups
  ,

  FindGears.
  ,¤:
  ⊚
  ⊃(
    ≡(
      ↘:⬚@.↙⊙:⊃(+2)(↥0-1)
      FindDigits
      FindGroups
      =2⧻
    )
  )∘
  ▽
  ↥0-1⍜⊡(++1⍏.)
  ,

  ⊙¤
  ≡⊐(□▽>0.♭↘:⬚0↙⊙:CalculateWindow)

  ⊙(
    ⊙(¤.)
    ≡⊐(⋕⊡)
  )

  ☇1⊠⊂.⇡⧻.
  ▽≡(⊢<⊃↘↙1).

  ⊙¤
  ≡(
    ⊙¤
    .
    ⊙(
      ≡⊡
      ⊃↘↙1
      ⊃(⊢/+⊠=)(>0⧻⊢)
      ×
    )
    :
  )
  ▽
  ⊙¤
  ≡(×⊙⊡⊡⊙,⊃↘↙1)
  /+
)

PartTwo $ 467..114..
        $ ...*......
        $ ..35..633.
        $ ......#...
        $ 617*......
        $ .....+.58.
        $ ..592.....
        $ ......755.
        $ ...$.*....
        $ .664.598..

PartTwo &fras "./aoc2023-day3-input.txt"
