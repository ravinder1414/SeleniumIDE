@echo off
echo Welcome!! Selenium-RC Started !!

move /Y "X:\Batch script Files\KU PORTAL\PROD\KUportalProd_*.html" "X:\Batch script Files\KU PORTAL\Archive_PROD"

cd\
java -jar C:\selenium-remote-control-1.0.1-dist\selenium-server-standalone-2.37.0.jar -port 4473 -userExtensions "X:\UserExtension\user-extensions.js" -timeout 300000 -htmlSuite "*firefox" "http://google.com" "X:\KUPortal\KUPortal_SELENIUM\KUPORTAL Navigation scripts\Suite_Prod_KUPortal_Smoke.html" "X:\Batch script Files\KU PORTAL\PROD\KUportalProd_%date:~4,2%-%date:~7,2%-%date:~10,4%_%time:~0,2%%time:~3,2%_%time:~6,5%.html"