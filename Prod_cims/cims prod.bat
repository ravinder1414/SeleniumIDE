@echo off
echo Welcome!! Selenium-RC Started !!

#move results to Archive folder
move /Y "\\10.78.7.60\Selenium_Scripts\Batch script Files\cims\Prod\FFCIMS_Prod*.html" "\\10.78.7.60\Selenium_Scripts\Batch script Files\cims\Archive_Prod"
#Call autoIT script to enter credentials
start call "\\10.78.7.60\Selenium_Scripts\Batch script Files\cims\AuthLogin\loginauth.bat"
c:
cd C:\selenium-remote-control-1.0.1-dist
java -jar selenium-server-standalone-2.37.0.jar -port 4481 -timeout 300000 -userExtensions "\\10.78.7.60\Selenium_Scripts\UserExtension\user-extensions.js" -htmlSuite "*firefox" "http://google.com" "\\10.78.7.60\Selenium_Scripts\CIMS\Suite_CIMS_Prod.html" "\\10.78.7.60\Selenium_Scripts\Batch script Files\cims\Prod\FFCIMS_Prod%date:~4,2%-%date:~7,2%-%date:~10,4%_%time:~0,2%%time:~3,2%_%time:~6,5%.html"