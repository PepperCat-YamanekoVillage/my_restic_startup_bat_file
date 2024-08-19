chcp 65001

@echo off
@if not "%~0"=="%~dp0.\%~nx0" start /min cmd /c,"%~dp0.\%~nx0" %* & goto :eof

echo password| E:\restic\restic --repo I:\BACKUP backup C:\ >nul
echo password| E:\restic\restic --repo I:\BACKUP backup E:\ >nul
echo password| E:\restic\restic unlock --repo I:\BACKUP >nul
echo password| E:\restic\restic forget --repo I:\BACKUP --keep-last 3 --prune >nul