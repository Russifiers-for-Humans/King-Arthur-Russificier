; Инструкция https://jrsoftware.org/ishelp/index.php

; Всегда меняются
#define GameName "King Arthur"                                          ; Название игры
#define GameNameDash "King-Arthur"                                                          ; Название игры без пробелов
#define GameNameEXE "KingArthur"                                                              ; Название exe файла игры
#define GameVer "1.07"                                                                     ; Версия игры
#define GameAppIdSteam "24400"                                                             ; Ид игры в стиме
; От ситуации зависит
#define AppDescription "Русификатор текста, звука"                                     ; Описание программы
#define Typ "Russificier"                                                                    ; Тип приложения
; Практически никогда не меняется
#define AppVer "1"                                                                        ; Версия установщика
#define Platz "D:\$RECYCLE.BIN\Bibliothek\Dokument\GitHub"                                                    ; Место
; Константы
#define Copyright "Folk"                                                                  ; (констант)Копирайт
#define AppPublisher "Russifiers for Humans"                                              ; (констант)Название инициативы
#define AppPublisherDash "Russifiers-for-Humans"                                              ; (констант)Название инициативы
#define PublisherURL "https://steamcommunity.com/id/TeMeR55"                              ; (констант)Ссылка на автора
#define AppURL "https://github.com/" + AppPublisherDash + "/" +GameNameDash + "-" + Typ +"/releases"        ; Ссылка на руководство
; Сложные переменные  
#define Location Platz + "\" + GameNameDash + "-" + Typ                                       ; Место нахождение соурса
#define OriginalNameSetup Typ + "-" + GameNameDash                        ; Оригинальное наименование приложения
#define AppNameAndDescript GameName + " - " + AppDescription                              ; Название программы и описание
#define ProductVerName AppNameAndDescript + " для версии " + GameVer                             ; Название программы для какой версии игры в системе

[Setup]
;Номер приложения для его удаление лучше все время не забывать разный совать. Проверка уникальный для: King Arthur Russificier
AppId={{3353BB43-FA86-4C2E-BF6E-E002698EC549}
//--------------------------------------App's information and version--------------------------------------\\
;Свойства приложения
AppName={#AppNameAndDescript}                                                   
AppVersion={#AppVer}
AppVerName={#ProductVerName}
AppCopyright={#Copyright}
AppContact={#PublisherURL}
AppComments={#Typ}
AppPublisher={#AppPublisher}
AppPublisherURL={#PublisherURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}
AppReadmeFile={#AppURL}
VersionInfoCompany={#AppPublisher}
VersionInfoCopyright={#Copyright}
VersionInfoDescription={#AppDescription}
VersionInfoOriginalFileName={#OriginalNameSetup}  
VersionInfoProductName={#ProductVerName}
VersionInfoProductTextVersion={#AppVer}
VersionInfoVersion={#AppVer}     
//--------------------------------------Options--------------------------------------\\
; Если установлено значение «да», программа установки отобразит флажок «Не создавать папку в меню «Пуск»
AllowNoIcons=yes
; Имя папки в меню «Пуск»
DefaultGroupName={#AppPublisher}
; Путь по умолчанию
DefaultDirName={code:GetInstallationPath}
; Название установщика
OutputBaseFilename={#OriginalNameSetup}
; Если установлено значение «нет», отключает уведомление об "Существующей папке"
DirExistsWarning=no
; Если установлено значение «да», включает уведомление об "Не существующей папке"
EnableDirDoesntExistWarning=yes
;Если установлено значение «нет», включает страницу "Мастер приветствует"
DisableWelcomePage=no    
;Если установлено значение «нет», включает страницу "Спасибо за установку"
DisableFinishedPage=no
//--------------------------------------Compression--------------------------------------\\
;DiskSpanning=true
;DiskSliceSize=314572800 / Размер в байтах твоего setup1.bin
; Метод сжатия
Compression=lzma2/ultra64
; Если установлено значение «да»,включает сжатие в один поток(лучше сжимает, но проблем больше) 
SolidCompression=yes
LZMAUseSeparateProcess=yes
LZMADictionarySize=1048576
LZMANumFastBytes=273
//--------------------------------------Files--------------------------------------\\
;Путь к фалу Лицензии
LicenseFile={#Location}\Licence.rtf
;Путь к фалу Описание
InfoBeforeFile={#Location}\Description.rtf                      
;InfoAfterFile=infoafter.txt
;Путь к фалу Иконка
SetupIconFile={#Location}\Icon.ico
;Путь к фалу Сетап
OutputDir={#Location}\
;Путь к фалу Картинки
WizardImageFile={#Location}\Pic.bmp
;Путь к фалу Картинки
WizardSmallImageFile={#Location}\Pic.bmp

[Components]
Name: "main"; Description: "Перевод от Руссобит-М"; Types: full compact custom; Flags: fixed
Name: "add"; Description: "Фиксы перевода от Mihkel и Revenant1"; Flags: checkablealone; Types: full
Name: "sketches"; Description: "Наброски"; Flags: checkablealone; Types: full
Name: "wallpapers"; Description: "Обои"; Flags: checkablealone; Types: full
Name: "items"; Description: "Перечисление предметов"; Flags: checkablealone; Types: full
Name: "manual"; Description: "Руководство на русском"; Flags: checkablealone; Types: full

[Files]
; Соурс Components значит будет ли устанавливаться когда выбрана галочка(когда последняя версия чего либо она требует много папок предыдущих)
Source: {#Location}\{#GameName}\main\*; DestDir: "{app}"; Components: main; Flags: ignoreversion recursesubdirs createallsubdirs
Source: {#Location}\{#GameName}\add\*; DestDir: "{app}"; Components: add; Flags: ignoreversion recursesubdirs createallsubdirs
Source: {#Location}\{#GameName}\sketches\*; DestDir: "{app}\sketches"; Components: sketches; Flags: ignoreversion recursesubdirs createallsubdirs
Source: {#Location}\{#GameName}\wallpapers\*; DestDir: "{app}\wallpapers"; Components: wallpapers; Flags: ignoreversion recursesubdirs createallsubdirs
Source: {#Location}\{#GameName}\King Arthur Items\*; DestDir: "{app}"; Components: items; Flags: ignoreversion recursesubdirs createallsubdirs
Source: {#Location}\{#GameName}\Manual\*; DestDir: "{app}"; Components: manual; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
;Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{cm:ProgramOnTheWeb,{#ProductVerName}}"; Filename: "{#AppURL}"
;Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{cm:UninstallProgram,{#ProductVerName}}"; Filename: "{uninstallexe}"
;Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{#GameName}"; Filename: "{app}\{#GameNameEXE}.exe"; WorkingDir: "{app}";

[registry]
; Значение ключа изменяет разрешение на FullHD в настройках которые находятся в реестре
Root:HKCU;Subkey:SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers;ValueType: string; ValueName:{app}\launcher.exe;ValueData:RUNASADMIN
Root:HKCU;Subkey:SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers;ValueType: string; ValueName:{app}\KingArthur.exe;ValueData:RUNASADMIN
Root:HKCU;Subkey:SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers;ValueType: string; ValueName:{app}\KingArthurMulti.exe;ValueData:RUNASADMIN

[Code]
var
  InstallationPath: string;

function GetInstallationPath(Param: string): string;
    
begin
  { Обнаруженный путь кэшируется, так как он вызывается несколько раз }
  
  if InstallationPath = '' then
  begin
    if RegQueryStringValue(
         HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App {#GameAppIdSteam}',
         'InstallLocation', InstallationPath) then
    begin
      Log('Detected Steam installation: ' + InstallationPath);
    end
    // для гог
    //  else
    //if RegQueryStringValue(
    //     HKLM32, 'SOFTWARE\GOG.com\Games\1196955511',
    //     'path', InstallationPath) then
    //begin
    //  Log('Detected GOG installation: ' + InstallationPath);
    //end
      else
    begin
      if IsWin64 then InstallationPath := ExpandConstant('{commonpf64}')
      else InstallationPath := ExpandConstant('{commonpf32}');
      InstallationPath:=InstallationPath +'/{#GameName}';
      Log('No installation detected, using the default path: ' + InstallationPath);
    end;
  end;
  Result := InstallationPath;
end;

[Languages]
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl";
;Name: "english"; MessagesFile: "compiler:Default.isl";