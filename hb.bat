@echo off
rem
rem Go install grep and cut from Cygwin.
rem
set path=%path%;c:\cygwin64\bin\
vol %1 | grep drive | cut -d' ' -f 7 > %temp%\av_tmp
for /f %%a in ('type %temp%\av_tmp') do set title=%%a
for /l %%a in (1,1,9) do C:\progra~1\handbrake\handbrakecli.exe --preset "Super HQ 1080p30 Surround" --min-duration 58 --markers --title %%a --input %1\video_ts --output %userprofile%\videos\%title%_%%a.m4v

