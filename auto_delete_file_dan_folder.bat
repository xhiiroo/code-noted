-- Auto Delete / Hapus temporary (tmp) file & sub folders [simpan ke notepad dengan nama .bat]

@echo off
:loop
for /d %%i in ("D:\tmpbak\*") do (
    rmdir /s /q "%%i"
)
del /Q "D:\tmpbak\*.*"
timeout /t 86400
goto loop

-- Kemudian buka task scheduler dan lakukan ekseskusinya
