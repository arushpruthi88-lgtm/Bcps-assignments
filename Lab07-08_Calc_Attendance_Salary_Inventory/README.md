# Lab 7-8: Spreadsheets for attendance, salary calculation and inventory management using LibreOffice Calc

## Aim
To create spreadsheets for attendance, salary calculation and inventory management using Calc.

## File
`attendance_salary_inventory.xlsx` has three sheets: **Attendance**, **Salary**, **Inventory**.

## 1. Attendance sheet
Marks: `P` = Present, `A` = Absent, for 10 working days.
| Column | Formula |
|---|---|
| Days Present | `=COUNTIF(C5:L5,"P")` |
| Days Absent | `=COUNTIF(C5:L5,"A")` |
| Attendance % | `=M5/(M5+N5)*100` |
| Status | `=IF(O5>=$C$2,"Eligible","Shortage")` (75% minimum is stored in cell C2) |

## 2. Salary sheet
Rates (HRA 20%, DA 10%, PF 12%, Tax 10%) are kept in assumption cells C2:C5 so that they can be changed. Headers are in row 6 and employees in rows 7-12 (formulas below are for row 7).
| Column | Formula |
|---|---|
| HRA | `=B7*$C$2` |
| DA | `=B7*$C$3` |
| Gross Salary | `=B7+C7+D7+E7` (Basic + HRA + DA + Allowance) |
| PF Deduction | `=B7*$C$4` |
| Tax | `=IF(F7>50000,F7*$C$5,0)` |
| Net Salary | `=F7-G7-H7` |
Totals row: `=SUM(...)` for every money column.

## 3. Inventory sheet
| Column | Formula |
|---|---|
| Closing Stock | `=C5+D5-E5` (Opening + Purchased - Sold) |
| Stock Value | `=F5*G5` (Closing x Unit Price) |
| Status | `=IF(F5<=H5,"Reorder","OK")` (compare with reorder level) |
Total stock value: `=SUM(I5:I12)`.

## Procedure
1. Create three sheets (right-click on the sheet tab > Insert Sheet) and rename them.
2. Enter the headers and data and apply the formulas.
3. Apply borders, header colour and number formats (Format > Cells).
4. Use conditional formatting for "Shortage" and "Reorder".

## Result
Attendance percentage, net salary and closing stock/stock value are calculated automatically with formulas.
