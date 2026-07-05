@ECHO OFF
TITLE=Удаление Aida64

RD /S /Q "%PROGRAMFILES%\Aida64"
RD /S /Q "%PROGRAMFILES(x86)%\Aida64"
RD /S /Q "D:\Progs\Aida64"
RD /S /Q "C:\Progs\Aida64"
DEL /F /Q "%USERPROFILE%\Desktop\Aida64.lnk"
REG DELETE "HKEY_CURRENT_USER\Software\FinalWire\AIDA64" /f
