ANDROID PRACTICAL PDF LIBRARY — SETUP

CONTENTS
- 22 individual practical PDFs.
- Each PDF begins with an Aim, steps to perform the practical, and Result.
- The original pages/code from the uploaded practical PDFs follow the steps.
- library.bat is a Windows CMD menu that downloads and opens a selected PDF.

GITHUB SETUP
1. Create/open a GitHub repository.
2. Upload library.bat and every Practical_*.pdf file into the repository ROOT (not a subfolder).
3. Open library.bat in Notepad.
4. Near the top, replace:
       set "GITHUB_OWNER=YOUR_GITHUB_USERNAME"
       set "GITHUB_REPO=YOUR_REPOSITORY_NAME"
   with your GitHub account name and repository name. Keep the quotes.
5. Save library.bat. The default branch is main; change GITHUB_BRANCH if your branch has a different name.
6. On a Windows 10/11 computer with internet, double-click library.bat.
7. Select a practical number to download and open that PDF, or select D to download all.

ONE-COMMAND USE ON ANOTHER WINDOWS PC
After the BAT file is uploaded to the repository root, a user can run this in CMD
(replace OWNER and REPO with the correct repository values):
curl.exe -fL -o library.bat https://raw.githubusercontent.com/OWNER/REPO/main/library.bat && call library.bat

NOTES
- This BAT is for Windows CMD, not Raspberry Pi/Linux.
- It uses curl.exe, included with current Windows 10/11 versions.
- The PC needs internet access to download files.
- The original PDFs contain Android Java/XML code; this library does not convert Android projects into Python.
- One practical in the supplied Android Programming Practical PDF ends partway through the LinearLayout practical, so that PDF includes only the source pages available.
