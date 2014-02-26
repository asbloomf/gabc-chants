@echo off

for %%f in (*.ly) DO (
  echo %%~nf
  "C:\Program Files (x86)\LilyPond\usr\bin\lilypond.exe" -dno-point-and-click -dgui %%~nf.ly
)

goto end


:end
