SplitLines ← ⊜∘≠,@\n

FindSpecialChars ← ≡(¬/+≡="0123456789."¤)
FindDigits ← ≡(/+≡="0123456789"¤)
FindDigitGroups ← ⊕□\+¬≡(≍0_1)⊂0_1-⊃(↙-1⧻.)(↘1).⊚

PartOne ← (
  SplitLines
  FindDigits.
  FindDigitGroups
  ⊙¤
  ⊃(
    ≡(/+♭FindSpecialChars↘:⬚@.↙⊙:⊃(+2⊢⇌)(↥0-1⊢)⊔)
  )(
    ≡(parse⊡⊔)
  )
  /+▽
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
