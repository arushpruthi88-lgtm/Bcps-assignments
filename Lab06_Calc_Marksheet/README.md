# Lab 6: Prepare a student marksheet in LibreOffice Calc using SUM, AVERAGE, MAX and MIN

## Aim
To prepare a student marksheet using formulas and functions such as SUM, AVERAGE, MAX and MIN.

## File
`student_marksheet.xlsx` (opens in LibreOffice Calc; save as `.ods` if you want).

## Layout
Row 4 holds the headers, and rows 5-14 hold 10 students: Roll No, Name, Maths, Physics, Chemistry, English, Computer, Total, Average, Percentage, Result, Grade, Rank.

## Formulas used (row 5, copy down to row 14)
| Column | Formula | Meaning |
|---|---|---|
| Total (H5) | `=SUM(C5:G5)` | Sum of marks |
| Average (I5) | `=AVERAGE(C5:G5)` | Average marks |
| Percentage (J5) | `=H5/(5*$C$2)*100` | C2 holds the maximum marks per subject (100) |
| Result (K5) | `=IF(MIN(C5:G5)>=$F$2,"Pass","Fail")` | F2 holds the pass marks (40); pass only if every subject is passed |
| Grade (L5) | `=IF(J5>=90,"A+",IF(J5>=80,"A",IF(J5>=70,"B",IF(J5>=60,"C",IF(J5>=40,"D","F")))))` | Grade from percentage |
| Rank (M5) | `=RANK(H5,$H$5:$H$14)` | Rank by total |

Summary rows under the table: `=MAX(C5:C14)` (highest), `=MIN(C5:C14)` (lowest), `=AVERAGE(C5:C14)` (class average) for every subject column.

## Procedure
1. Enter the data and headers.
2. Type the formula in the first row and drag the fill handle down.
3. Add the summary rows with MAX, MIN and AVERAGE.
4. Format: bold headers, borders (Format > Cells > Borders), centre alignment, and 2 decimal places for Average and Percentage.
5. Optionally apply Format > Conditional Formatting to highlight "Fail" in red.

## Result
The marksheet calculates total, average, percentage, result, grade and rank automatically, and shows subject-wise highest, lowest and average marks.
