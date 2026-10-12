# Lab 1-2: Create folders and files using CLI commands and basic file management

## Aim
To create folders and files using Command Line Interface commands (`mkdir`, `cd`, `dir`/`ls`, `rmdir`) and perform basic file management operations.

## Requirements
Windows Command Prompt (`cmd`). Linux/macOS equivalents are given in the table below.

## Command reference
| Task | Windows (CMD) | Linux / macOS |
|---|---|---|
| Show current directory | `cd` | `pwd` |
| Make directory | `mkdir name` | `mkdir name` |
| Change directory | `cd name` | `cd name` |
| Go one level up | `cd ..` | `cd ..` |
| List files | `dir` | `ls -l` |
| Create file with text | `echo text > file.txt` | `echo "text" > file.txt` |
| Create empty file | `type nul > file.txt` | `touch file.txt` |
| Display file content | `type file.txt` | `cat file.txt` |
| Copy file | `copy a.txt b.txt` | `cp a.txt b.txt` |
| Rename file | `ren old.txt new.txt` | `mv old.txt new.txt` |
| Move file | `move a.txt folder\` | `mv a.txt folder/` |
| Delete file | `del file.txt` | `rm file.txt` |
| Remove empty directory | `rmdir name` | `rmdir name` |
| Remove directory with content | `rmdir /s /q name` | `rm -r name` |
| Show folder tree | `tree /f` | `tree` |

## Procedure (Windows CMD)
```bat
:: 1. Create a main folder and enter it
mkdir BCPS_Lab
cd BCPS_Lab

:: 2. Create sub-folders
mkdir Notes Assignments Temp

:: 3. List the contents
dir

:: 4. Create files
cd Notes
echo This is my first CLI file > first.txt
echo BCPS Practical Lab 1 >> first.txt
type nul > empty.txt
dir

:: 5. Display file content
type first.txt

:: 6. Copy, rename and move files
copy first.txt backup.txt
ren backup.txt backup_notes.txt
move backup_notes.txt ..\Assignments

:: 7. Delete a file
del empty.txt

:: 8. Go back and view the structure
cd ..
tree /f

:: 9. Remove a directory
rmdir Temp
rmdir /s /q Assignments
dir
```

## Expected output (after step 8)
```
BCPS_Lab
├───Assignments
│       backup_notes.txt
├───Notes
│       first.txt
└───Temp
```
After step 9 only the `Notes` folder remains.

## Result
Folders and files were created, listed, copied, renamed, moved and deleted using CLI commands.

The same commands are available in `lab01_02_commands.bat` (Windows) and `lab01_02_commands.sh` (Linux/macOS).
