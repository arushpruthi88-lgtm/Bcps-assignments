#!/bin/bash
mkdir BCPS_Lab
cd BCPS_Lab
mkdir Notes Assignments Temp
ls -l
cd Notes
echo "This is my first CLI file" > first.txt
echo "BCPS Practical Lab 1" >> first.txt
touch empty.txt
ls -l
cat first.txt
cp first.txt backup.txt
mv backup.txt backup_notes.txt
mv backup_notes.txt ../Assignments/
rm empty.txt
cd ..
ls -R
rmdir Temp
rm -r Assignments
ls -l
