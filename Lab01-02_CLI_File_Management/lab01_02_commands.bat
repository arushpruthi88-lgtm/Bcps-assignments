@echo off
mkdir BCPS_Lab
cd BCPS_Lab
mkdir Notes Assignments Temp
dir
cd Notes
echo This is my first CLI file > first.txt
echo BCPS Practical Lab 1 >> first.txt
type nul > empty.txt
dir
type first.txt
copy first.txt backup.txt
ren backup.txt backup_notes.txt
move backup_notes.txt ..\Assignments
del empty.txt
cd ..
tree /f
rmdir Temp
rmdir /s /q Assignments
dir
