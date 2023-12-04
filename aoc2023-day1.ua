Lines ← ⊜□≠,@\n

FindDigits ← ×+1⇡9≡⊐⌕+@1⇡9¤
FindWords ← ×+1⇡9≡⊐⌕{"one" "two" "three" "four" "five" "six" "seven" "eight" "nine"}¤

LineTotal ← +×10∩⊢⊃∘⇌▽>0.

PartOne ← /+≡(LineTotal/+FindDigits)Lines

PartOne $ 1abc2
        $ pqr3stu8vwx
        $ a1b2c3d4e5f
        $ treb7uchet

PartOne &fras "./aoc2023-day1-input.txt"

PartTwo ← /+≡(LineTotal/++⊃(FindWords)(FindDigits))Lines

PartTwo $ two1nine
        $ eightwothree
        $ abcone2threexyz
        $ xtwone3four
        $ 4nineeightseven2
        $ zoneight234
        $ 7pqrstsixteen

PartTwo &fras "./aoc2023-day1-input.txt"
