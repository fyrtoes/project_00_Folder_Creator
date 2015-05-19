::FILE NAME: "Create well folder.bat"
::FILE CREATED: 2/8/2015
::AUTHOR: Gilberto Villela
::
::The purpose of this script is to generate a complete new job folder


@ECHO OFF
Set /p well_name= What is the name of the next well: 
@echo:
Echo To paste, click on the top-left image and go edit-paste
@echo:
Set /p well_dir= Type the directory of the '%well_name%' folder: 
Set /p well_stages= How many stages does %well_name% have (Enter Number): 

set "well_name_new="%well_name%""
set "well_dir_new="%well_dir%""

echo %well_dir_new%\%well_name_new%
MD %well_dir_new%\%well_name_new%
cd %well_dir_new%\%well_name_new%
MD "_CSV Files" "_TXT Files" "_BOLs" "_Prewell Testing" "_Chemical Orders" "_Post Job Reports" "_Proposals" "_Final Ticket"

FOR /L %%i IN (1,1,%well_stages%) DO (
 MD "Stage %%i"
)

::::::::::WHY NOT?
::setlocal enabledelayedexpansion
::FOR /L %%i IN (1,1,%well_stages%) DO (
::set "stage_counter=Stage %%i"
::echo %stage_counter%
::MD %stage_counter%
::)
::endlocal



@echo:
::echo Press any key to close window
C:\Windows\explorer.exe %well_dir_new%\%well_name_new%
exit 0
