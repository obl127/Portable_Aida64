@ECHO OFF
TITLE=Установка Aida64

RD /S /Q "%PROGRAMFILES%\Aida64"
RD /S /Q "%PROGRAMFILES(x86)%\Aida64"
RD /S /Q "D:\Progs\Aida64"
RD /S /Q "C:\Progs\Aida64"
DEL /F /Q "%USERPROFILE%\Desktop\Aida64.lnk"
REG DELETE "HKEY_CURRENT_USER\Software\FinalWire\AIDA64" /f

XCOPY ".\files" "C:\Progs\Aida64" /E /I /H /K /Y /Q
COPY /Y ".\aida64.ini" "C:\Progs\Aida64"
COPY /Y ".\aida64.reg.ini" "C:\Progs\Aida64"
COPY /Y ".\pkey.txt" "C:\Progs\Aida64"

MD "C:\Progs\Temp"
COPY /Y "C:\Progs\Aida64\Language\lang_ru.txt" "C:\Progs\Temp"
DEL /F /Q "C:\Progs\Aida64\Language\*.txt"
COPY /Y "C:\Progs\Temp\lang_ru.txt" "C:\Progs\Aida64\Language"
RD /S /Q "C:\Progs\Temp"

COPY /Y ".\Aida64.lnk" "%USERPROFILE%\Desktop\"
