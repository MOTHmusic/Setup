@echo off
echo Installing HomeBrew Applications...

set START_TIME=%TIME%
winget install -e --id Python.Python.3.12
echo Waiting for Python installation to complete...
timeout /t 30 /nobreak > nul

winget install -e --id TheDocumentFoundation.LibreOffice
winget install -e --id reMarkable.reMarkableCompanionApp
winget install -e --id ProtonTechnologies.ProtonVPN
winget install -e --id qBittorrent.qBittorrent
winget install -e --id Musescore.Musescore
winget install -e --id LibreWolf.LibreWolf
winget install -e --id tailscale.tailscale
winget install -e --id Giorgiotani.Peazip
winget install -e --id VSCodium.VSCodium
winget install -e --id Discord.Discord
winget install -e --id Doist.Todoist
winget install -e --id Parsec.Parsec
winget install -e --id Valve.Steam
winget install -e --id GIMP.GIMP
winget install -e --id File-New-Project.EarTrumpet
winget install -e --id Flow-Launcher.Flow-Launcher
winget install -e --id voidtools.Everything
winget install -e --id Microsoft.PowerToys
winget install -e --id Playnite.Playnite
winget install -e --id QL-Win.QuickLook
winget install -e --id Nilesoft.Shell
set END_TIME=%TIME%

(
echo START_TIME=%START_TIME%
echo END_TIME=%END_TIME%
) > times.txt

REM Check if Python is installed and accessible
python --version > nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Python is not installed or not accessible. Please check the installation.
    goto :eof
)

REM Calculate elapsed time
python -c "
import os
from datetime import datetime

# Clear the console
os.system('cls')  # Use 'clear' if running on Unix-based systems

try:
    # Read start and end times from the file
    with open('times.txt', 'r') as f:
        lines = f.readlines()
        start_time_str = lines[0].split('=')[1].strip()
        end_time_str = lines[1].split('=')[1].strip()

    # Convert time strings to datetime objects
    start_time = datetime.strptime(start_time_str, '%H:%M:%S.%f')
    end_time = datetime.strptime(end_time_str, '%H:%M:%S.%f')

    # Calculate elapsed time
    elapsed_time = end_time - start_time

    # Output elapsed time in seconds
    print(f'Installation complete. Elapsed time: {elapsed_time.total_seconds()} seconds')

except FileNotFoundError:
    print(f'Installation complete. Elapsed time:FileNotFoundError')
except Exception as e:
    print(f'Installation complete. Elapsed time:UnknownError')
"

del times.txt

winget list
pause
