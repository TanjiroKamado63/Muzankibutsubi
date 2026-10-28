@echo off

setlocal EnableExtensions

title Android Practical PDF Library

rem ================================================================

rem Configure these three values to match your GitHub repository.

set "GITHUB_OWNER=TanjiroKamado63"

set "GITHUB_REPO=Muzankibutsubi"

set "GITHUB_BRANCH=main"

rem Upload library.bat and all Practical_*.pdf files to the repository root.

rem ================================================================

set "LIBRARY_DIR=%USERPROFILE%\AndroidPracticals"

if not exist "%LIBRARY_DIR%" mkdir "%LIBRARY_DIR%"

:menu

cls

echo ================================================================

echo             ANDROID PROGRAMMING PRACTICAL LIBRARY

echo ================================================================

echo PDFs include step-by-step instructions followed by source pages.

echo.

echo 1. Hello World Android Application

echo 2. Programming Resources: Colors, Themes, Strings, Dimensions and Drawables

echo 3. Basic Layout Management

echo 4. Advanced Layout and View Handling

echo 5. Adapter Based View

echo 6. Activity Lifecycle and Logcat

echo 7. Create a Fragment and Demonstrate Fragment Lifecycle

echo 8. Fragment-Based UI Navigation

echo 9. Communication Between Activity and Fragment

echo 10. LinearLayout: Horizontal and Vertical

echo 11. Toolbar and Options Menu

echo 12. AlertDialog and Custom DialogFragment

echo 13. Contextual and Popup Menus

echo 14. Explicit and Implicit Intents

echo 15. Event Handling with Listeners

echo 16. Spinner and ListView Adapters

echo 17. Started and Bound Services

echo 18. Notifications with NotificationManager

echo 19. Static and Dynamic Broadcast Receivers

echo 20. SQLite CRUD Operations

echo 21. SQLite with ListView or RecyclerView

echo 22. Fetch and Parse JSON from Web

echo 23. Threads and Handlers

echo 24. Media APIs and Telephone APIs

echo 25. Runtime Permissions and Security

echo.

echo D. Download ALL practical PDFs

echo Q. Quit

echo.

set /p "CHOICE=Enter practical number, D, or Q: "

if /i "%CHOICE%"=="Q" goto end

if /i "%CHOICE%"=="D" goto all

if "%CHOICE%"=="1" (

  set "FILE=Practical_01_Fundamentals_Hello_World_Android_Application.pdf"

  goto download

)

if "%CHOICE%"=="2" (

  set "FILE=Practical_02_Fundamentals_Programming_Resources_Colors_Themes_Strings_Dimensions_and_Drawables.pdf"

  goto download

)

if "%CHOICE%"=="3" (

  set "FILE=3.Ba.pdf"

  goto download

)

if "%CHOICE%"=="4" (

  set "FILE=Practical_04_Fundamentals_Create_a_Fragment_and_Demonstrate_Fragment_Lifecycle.pdf"

  goto download

)

if "%CHOICE%"=="5" (

  set "FILE=Practical_05_Fundamentals_Fragment_Based_UI_Navigation.pdf"

  goto download

)

if "%CHOICE%"=="6" (

  set "FILE=Practical_06_Fundamentals_Communication_Between_Activity_and_Fragment.pdf"

  goto download

)

if "%CHOICE%"=="7" (

  set "FILE=Practical_07_Fundamentals_LinearLayout_Horizontal_and_Vertical.pdf"

  goto download

)

if "%CHOICE%"=="8" (

  set "FILE=Practical_08_Module2_Toolbar_and_Options_Menu.pdf"

  goto download

)

if "%CHOICE%"=="9" (

  set "FILE=Practical_09_Module2_AlertDialog_and_Custom_DialogFragment.pdf"

  goto download

)

if "%CHOICE%"=="10" (

  set "FILE=Practical_10_Module2_Contextual_and_Popup_Menus.pdf"

  goto download

)

if "%CHOICE%"=="11" (

  set "FILE=Practical_11_Module2_Explicit_and_Implicit_Intents.pdf"

  goto download

)

if "%CHOICE%"=="12" (

  set "FILE=Practical_12_Module2_Event_Handling_with_Listeners.pdf"

  goto download

)

if "%CHOICE%"=="13" (

  set "FILE=Practical_13_Module2_Spinner_and_ListView_Adapters.pdf"

  goto download

)

if "%CHOICE%"=="14" (

  set "FILE=Practical_14_Module2_Started_and_Bound_Services.pdf"

  goto download

)

if "%CHOICE%"=="15" (

  set "FILE=Practical_15_Module2_Notifications_with_NotificationManager.pdf"

  goto download

)

if "%CHOICE%"=="16" (

  set "FILE=Practical_16_Module2_Static_and_Dynamic_Broadcast_Receivers.pdf"

  goto download

)

if "%CHOICE%"=="17" (

  set "FILE=Practical_17_Module2_SQLite_CRUD_Operations.pdf"

  goto download

)

if "%CHOICE%"=="18" (

  set "FILE=Practical_18_Module2_SQLite_with_ListView_or_RecyclerView.pdf"

  goto download

)

if "%CHOICE%"=="19" (

  set "FILE=Practical_19_Module2_Fetch_and_Parse_JSON_from_Web.pdf"

  goto download

)

if "%CHOICE%"=="20" (

  set "FILE=Practical_20_Module2_Threads_and_Handlers.pdf"

  goto download

)

if "%CHOICE%"=="21" (

  set "FILE=Practical_21_Module2_Media_APIs_and_Telephone_APIs.pdf"

  goto download

)

if "%CHOICE%"=="22" (

  set "FILE=Practical_22_Module2_Runtime_Permissions_and_Security.pdf"

  goto download

)

echo Invalid selection. Please choose a listed number, D, or Q.

pause

goto menu

:download

if "%GITHUB_OWNER%"=="YOUR_GITHUB_USERNAME" goto config_error

if "%GITHUB_REPO%"=="YOUR_REPOSITORY_NAME" goto config_error

echo.

echo Downloading %FILE% ...

curl.exe -fL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\%FILE%" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/%FILE%"

if errorlevel 1 (

  echo Download failed. Check repository settings, file name, and internet connection.

  if exist "%LIBRARY_DIR%\%FILE%" del "%LIBRARY_DIR%\%FILE%"

  pause

  goto menu

)

echo Download complete: %LIBRARY_DIR%\%FILE%

start "" "%LIBRARY_DIR%\%FILE%"

pause

goto menu

:all

if "%GITHUB_OWNER%"=="YOUR_GITHUB_USERNAME" goto config_error

if "%GITHUB_REPO%"=="YOUR_REPOSITORY_NAME" goto config_error

echo Downloading all practical PDFs. This may take a few minutes...

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_01_Fundamentals_Hello_World_Android_Application.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_01_Fundamentals_Hello_World_Android_Application.pdf"

if errorlevel 1 echo Could not download Practical_01_Fundamentals_Hello_World_Android_Application.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_02_Fundamentals_Programming_Resources_Colors_Themes_Strings_Dimensions_and_Drawables.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_02_Fundamentals_Programming_Resources_Colors_Themes_Strings_Dimensions_and_Drawables.pdf"

if errorlevel 1 echo Could not download Practical_02_Fundamentals_Programming_Resources_Colors_Themes_Strings_Dimensions_and_Drawables.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_03_Fundamentals_Activity_Lifecycle_and_Logcat.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_03_Fundamentals_Activity_Lifecycle_and_Logcat.pdf"

if errorlevel 1 echo Could not download Practical_03_Fundamentals_Activity_Lifecycle_and_Logcat.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_04_Fundamentals_Create_a_Fragment_and_Demonstrate_Fragment_Lifecycle.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_04_Fundamentals_Create_a_Fragment_and_Demonstrate_Fragment_Lifecycle.pdf"

if errorlevel 1 echo Could not download Practical_04_Fundamentals_Create_a_Fragment_and_Demonstrate_Fragment_Lifecycle.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_05_Fundamentals_Fragment_Based_UI_Navigation.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_05_Fundamentals_Fragment_Based_UI_Navigation.pdf"

if errorlevel 1 echo Could not download Practical_05_Fundamentals_Fragment_Based_UI_Navigation.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_06_Fundamentals_Communication_Between_Activity_and_Fragment.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_06_Fundamentals_Communication_Between_Activity_and_Fragment.pdf"

if errorlevel 1 echo Could not download Practical_06_Fundamentals_Communication_Between_Activity_and_Fragment.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_07_Fundamentals_LinearLayout_Horizontal_and_Vertical.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_07_Fundamentals_LinearLayout_Horizontal_and_Vertical.pdf"

if errorlevel 1 echo Could not download Practical_07_Fundamentals_LinearLayout_Horizontal_and_Vertical.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_08_Module2_Toolbar_and_Options_Menu.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_08_Module2_Toolbar_and_Options_Menu.pdf"

if errorlevel 1 echo Could not download Practical_08_Module2_Toolbar_and_Options_Menu.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_09_Module2_AlertDialog_and_Custom_DialogFragment.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_09_Module2_AlertDialog_and_Custom_DialogFragment.pdf"

if errorlevel 1 echo Could not download Practical_09_Module2_AlertDialog_and_Custom_DialogFragment.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_10_Module2_Contextual_and_Popup_Menus.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_10_Module2_Contextual_and_Popup_Menus.pdf"

if errorlevel 1 echo Could not download Practical_10_Module2_Contextual_and_Popup_Menus.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_11_Module2_Explicit_and_Implicit_Intents.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_11_Module2_Explicit_and_Implicit_Intents.pdf"

if errorlevel 1 echo Could not download Practical_11_Module2_Explicit_and_Implicit_Intents.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_12_Module2_Event_Handling_with_Listeners.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_12_Module2_Event_Handling_with_Listeners.pdf"

if errorlevel 1 echo Could not download Practical_12_Module2_Event_Handling_with_Listeners.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_13_Module2_Spinner_and_ListView_Adapters.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_13_Module2_Spinner_and_ListView_Adapters.pdf"

if errorlevel 1 echo Could not download Practical_13_Module2_Spinner_and_ListView_Adapters.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_14_Module2_Started_and_Bound_Services.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_14_Module2_Started_and_Bound_Services.pdf"

if errorlevel 1 echo Could not download Practical_14_Module2_Started_and_Bound_Services.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_15_Module2_Notifications_with_NotificationManager.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_15_Module2_Notifications_with_NotificationManager.pdf"

if errorlevel 1 echo Could not download Practical_15_Module2_Notifications_with_NotificationManager.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_16_Module2_Static_and_Dynamic_Broadcast_Receivers.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_16_Module2_Static_and_Dynamic_Broadcast_Receivers.pdf"

if errorlevel 1 echo Could not download Practical_16_Module2_Static_and_Dynamic_Broadcast_Receivers.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_17_Module2_SQLite_CRUD_Operations.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_17_Module2_SQLite_CRUD_Operations.pdf"

if errorlevel 1 echo Could not download Practical_17_Module2_SQLite_CRUD_Operations.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_18_Module2_SQLite_with_ListView_or_RecyclerView.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_18_Module2_SQLite_with_ListView_or_RecyclerView.pdf"

if errorlevel 1 echo Could not download Practical_18_Module2_SQLite_with_ListView_or_RecyclerView.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_19_Module2_Fetch_and_Parse_JSON_from_Web.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_19_Module2_Fetch_and_Parse_JSON_from_Web.pdf"

if errorlevel 1 echo Could not download Practical_19_Module2_Fetch_and_Parse_JSON_from_Web.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_20_Module2_Threads_and_Handlers.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_20_Module2_Threads_and_Handlers.pdf"

if errorlevel 1 echo Could not download Practical_20_Module2_Threads_and_Handlers.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_21_Module2_Media_APIs_and_Telephone_APIs.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_21_Module2_Media_APIs_and_Telephone_APIs.pdf"

if errorlevel 1 echo Could not download Practical_21_Module2_Media_APIs_and_Telephone_APIs.pdf

curl.exe -fsSL --retry 2 --connect-timeout 15 -o "%LIBRARY_DIR%\Practical_22_Module2_Runtime_Permissions_and_Security.pdf" "https://raw.githubusercontent.com/%GITHUB_OWNER%/%GITHUB_REPO%/%GITHUB_BRANCH%/Practical_22_Module2_Runtime_Permissions_and_Security.pdf"

if errorlevel 1 echo Could not download Practical_22_Module2_Runtime_Permissions_and_Security.pdf

echo.

echo Finished downloading all files. Opening the library folder...

start "" "%LIBRARY_DIR%"

pause

goto menu

:config_error

echo Please edit library.bat and set GITHUB_OWNER and GITHUB_REPO near the top.

echo Upload all Practical_*.pdf files and library.bat to the root of your GitHub repository.

pause

goto menu

:end

endlocal

exit /b 0

