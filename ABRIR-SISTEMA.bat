@echo off
title Sistema de Ocorrencias Escolares
cd /d "%~dp0"

echo.
echo ===============================================
echo   SISTEMA DE OCORRENCIAS - SERVIDOR LOCAL
echo ===============================================
echo.
echo O sistema sera aberto em:
echo http://localhost:5500/index.html
echo.
echo Nao feche esta janela enquanto estiver usando.
echo.

where py >nul 2>nul
if %errorlevel%==0 (
    start "" "http://localhost:5500/index.html"
    py -m http.server 5500 --bind localhost
    goto :fim
)

where python >nul 2>nul
if %errorlevel%==0 (
    start "" "http://localhost:5500/index.html"
    python -m http.server 5500 --bind localhost
    goto :fim
)

echo Python nao foi encontrado neste computador.
echo.
echo No VS Code, instale a extensao Live Server e clique em Go Live.
echo O endereco precisa ser http://localhost:5500
pause

:fim
