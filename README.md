# Setup

* Download source`GIT clone https://github.com/goodbye-island/S-Store-backend.git`
* Install Ruby on Rails for ruby 2.2
* (Windows only) In your rails install there are batch files which may be incorrect. See http://stackoverflow.com/questions/35545361/rails-the-system-cannot-find-the-path-specified
in the batch files that have
@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"C:\Users\emachnic\GitRepos\railsinstaller-windows\stage\Ruby2.2.0\bin\ruby.exe" "C:/Users/emachnic/GitRepos/railsinstaller-windows/stage/Ruby2.2.0/bin/bundle" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"C:\Users\emachnic\GitRepos\railsinstaller-windows\stage\Ruby2.2.0\bin\ruby.exe" "%~dpn0" %*
replace that code with
@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
ECHO.This version of Ruby has not been built with support for Windows 95/98/Me.
GOTO :EOF
:WinNT
@"%~dp0ruby.exe" "%~dpn0" %*

* run `bundle install` in the project's folder
* Create a `database.yml` file in the config folder under the root folder of the project and configure it to point at your database
* either run the file
backendnewhahagetit.bat
or run the command 
rails server -b 0.0.0.0 -p 8080

* Verify the server starts correctly by visiting one of the routes try localhost:8080/class_view? in your browser
