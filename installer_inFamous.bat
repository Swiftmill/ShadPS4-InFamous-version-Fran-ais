@echo off
setlocal enabledelayedexpansion
title inFAMOUS Second Son - Extracteur & Configurateur shadPS4
color 0B

echo ==============================================================================
echo        inFAMOUS Second Son - Extracteur automatique PKG
echo        Configuration Francaise & Clavier AZERTY pour shadPS4
echo ==============================================================================
echo.

set "SCRIPT_DIR=%~dp0"
set "EXTRACTOR=%SCRIPT_DIR%tools\pkg_extractor\pkg_extractor.exe"
set "DEST_DIR=%SCRIPT_DIR%user\game_data"
set "GAME_TXT=%SCRIPT_DIR%shadps4-game.txt"
set "EBOOT_PATH=%DEST_DIR%\CUSA00004\eboot.bin"

if not exist "%EXTRACTOR%" (
    echo [ERREUR] L'outil pkg_extractor.exe est introuvable :
    echo "%EXTRACTOR%"
    echo.
    echo Assurez-vous d'avoir bien extrait le dossier tools\pkg_extractor\ !
    echo.
    pause
    exit /b 1
)

set "PKG_FILE=%~1"

if "%PKG_FILE%"=="" (
    echo [ETAPE 1/3] Selection du fichier de jeu PKG :
    echo.
    echo Veuillez glisser-deposer votre fichier .pkg dans cette fenetre,
    echo ou collez directement son chemin complet ci-dessous, puis appuyez sur Entree :
    echo.
    set /p "PKG_FILE=> "
)

REM Nettoyer les guillemets superflus
set "PKG_FILE=%PKG_FILE:"=%"

if not exist "%PKG_FILE%" (
    echo.
    echo [ERREUR] Le fichier PKG specifie est introuvable :
    echo "%PKG_FILE%"
    echo.
    pause
    exit /b 1
)

echo.
echo [ETAPE 2/3] Fichier PKG selectionne :
echo "%PKG_FILE%"
echo.
echo Extraction en cours vers user\game_data\CUSA00004...
echo Cela peut prendre entre 2 et 5 minutes selon la vitesse de votre disque (taille: ~24 Go).
echo Veuillez patienter sans fermer cette fenetre...
echo.

if not exist "%DEST_DIR%" mkdir "%DEST_DIR%"

"%EXTRACTOR%" "%PKG_FILE%" "%DEST_DIR%"

if not exist "%EBOOT_PATH%" (
    echo.
    echo [ATTENTION] Le fichier eboot.bin n'a pas ete trouve a l'emplacement attendu :
    echo "%EBOOT_PATH%"
    echo.
    echo Si le jeu a ete extrait sous un autre nom de dossier dans user\game_data,
    echo verifiez le dossier user\game_data.
    pause
    exit /b 1
)

echo.
echo ==============================================================================
echo [ETAPE 3/3] Extraction terminee avec succes !
echo ==============================================================================
echo.
echo Configuration automatique du lanceur shadps4-game.txt...
(
    echo %EBOOT_PATH%
) > "%GAME_TXT%"

echo Chemin du jeu associe : %EBOOT_PATH%
echo.
echo Toutes les configurations (AZERTY, textures, Francais, 240 FPS) sont pretes !
echo.
set /p "LANCER=Voulez-vous lancer le jeu immediatement ? (O/N) : "
if /i "%LANCER%"=="O" (
    start "" "%SCRIPT_DIR%shadPS4.exe"
)
echo.
echo Bon jeu !
pause
