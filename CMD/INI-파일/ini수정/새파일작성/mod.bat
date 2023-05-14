@echo off
echo. >prolasso.new

FOR /F "delims=\= tokens=1,2" %%K IN (prolasso.ini) DO (
    IF "%%K" NEQ "UpdateSpeedCheck" (
        >>prolasso.new echo %%K=%%L
    ) else (
        >>prolasso.new echo %%K=8
    )
)
del prolasso.ini
ren prolasso.new prolasso.ini

pause