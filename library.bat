
@echo off
setlocal EnableExtensions

title Android Practical PDF Library

rem ================================================================
rem GITHUB REPOSITORY CONFIGURATION
rem ================================================================
set "GITHUB_OWNER=TanjiroKamado63"
set "GITHUB_REPO=Muzankibutsubi"
set "GITHUB_BRANCH=main"

rem Local download directory
set "LIBRARY_DIR=%USERPROFILE%\AndroidPracticals"

if not exist "%LIBRARY_DIR%" mkdir "%LIBRARY_DIR%"

rem ================================================================
rem START PDF LIBRARY
rem ================================================================

:menu
cls

echo ================================================================
echo             ANDROID PROGRAMMING PRACTICAL LIBRARY
echo ================================================================
echo.
echo PDFs include step-by-step instructions and source pages.
echo.

powershell.exe -NoProfile -ExecutionPolicy Bypass -Command ^
 "$ErrorActionPreference='Stop';" ^
 "try {" ^
 " $owner=$env:GITHUB_OWNER;" ^
 " $repo=$env:GITHUB_REPO;" ^
 " $branch=$env:GITHUB_BRANCH;" ^
 " $folder=$env:LIBRARY_DIR;" ^
 " $headers=@{'User-Agent'='AndroidPracticalPDFLibrary'};" ^
 " $api='https://api.github.com/repos/'+$owner+'/'+$repo+'/contents?ref='+$branch;" ^
 " $files=@(Invoke-RestMethod -Uri $api -Headers $headers | Where-Object { $_.type -eq 'file' -and $_.name -match '(?i)\.pdf$' } | Sort-Object name);" ^
 " if ($files.Count -eq 0) { throw 'No PDF files found in the repository root.' };" ^
 " while ($true) {" ^
 "  Clear-Host;" ^
 "  Write-Host '==============================================================';" ^
 "  Write-Host '          ANDROID PROGRAMMING PRACTICAL LIBRARY';" ^
 "  Write-Host '==============================================================';" ^
 "  Write-Host '';" ^
 "  Write-Host 'AVAILABLE PDF FILES';" ^
 "  Write-Host '';" ^
 "  for ($i=0; $i -lt $files.Count; $i++) {" ^
 "   Write-Host ('{0,2}. {1}' -f ($i+1),$files[$i].name);" ^
 "  };" ^
 "  Write-Host '';" ^
 "  Write-Host 'D. Download ALL practical PDFs';" ^
 "  Write-Host 'Q. Quit';" ^
 "  Write-Host '';" ^
 "  $choice=Read-Host 'Enter PDF number, D, or Q';" ^
 "  if ($choice -match '^[Qq]$') { break };" ^
 "  if ($choice -match '^[Dd]$') {" ^
 "   $selected=$files;" ^
 "  } elseif ($choice -match '^\d+$' -and [int]$choice -ge 1 -and [int]$choice -le $files.Count) {" ^
 "   $selected=@($files[[int]$choice-1]);" ^
 "  } else {" ^
 "   Write-Host 'Invalid selection. Please try again.' -ForegroundColor Red;" ^
 "   Start-Sleep -Seconds 2;" ^
 "   continue;" ^
 "  };" ^
 "  foreach ($file in $selected) {" ^
 "   $dest=Join-Path $folder $file.name;" ^
 "   Write-Host '';" ^
 "   Write-Host ('Downloading: '+$file.name) -ForegroundColor Yellow;" ^
 "   try {" ^
 "    Invoke-WebRequest -Uri $file.download_url -OutFile $dest -UseBasicParsing;" ^
 "    Write-Host ('Downloaded: '+$dest) -ForegroundColor Green;" ^
 "    if ($choice -notmatch '^[Dd]$') {" ^
 "     Start-Process -FilePath $dest;" ^
 "    }" ^
 "   } catch {" ^
 "    Write-Host ('Download failed: '+$file.name) -ForegroundColor Red;" ^
 "    if (Test-Path $dest) { Remove-Item $dest -Force };" ^
 "   };" ^
 "  };" ^
 "  if ($choice -match '^[Dd]$') {" ^
 "   Write-Host '';" ^
 "   Write-Host 'Download process finished. Opening library folder.' -ForegroundColor Green;" ^
 "   Start-Process -FilePath $folder;" ^
 "  };" ^
 "  Write-Host '';" ^
 "  Read-Host 'Press Enter to return to the menu' | Out-Null;" ^
 " }" ^
 "} catch {" ^
 " Write-Host '';" ^
 " Write-Host ('ERROR: '+$_.Exception.Message) -ForegroundColor Red;" ^
 " Write-Host 'Check internet access, repository name, branch and permissions.';" ^
 " Read-Host 'Press Enter to exit' | Out-Null;" ^
 " exit 1;" ^
 "}"

endlocal
exit /b 0
