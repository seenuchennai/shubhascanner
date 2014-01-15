; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName ".NET for AmiBroker - Plugin Installation Sample"
#define MyAppVersion "1.0"
#define MyAppPublisher "J. T."
#define MyAppURL "http://www.dotnetforab.com/"

;
; This include file installs the .NET for AmiBroker Free Edition
; It checks if any version/edition is already installed. 
; - If no runtime is found, it installs the minimum free runtime to start any .NET plugin.
; - If any runtime is found, it warns the user to install the runtime manually.
; 
#include "DNfABFree.iss"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppID={{29F94750-55AC-4C91-B157-8EFBC03727D0}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\AmiBroker
OutputDir=.
OutputBaseFilename=PluginInstallationSample
Compression=lzma/Max
SolidCompression=true
EnableDirDoesntExistWarning=true
DirExistsWarning=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

; Add your files and dirs if needed
[Files]
DestDir: {app}\.NET for AmiBroker\Assemblies; Source: "{#GetEnv('DotNetForAB_Home')}\.NET for AmiBroker\Samples\Sources\Setup\PluginInstallation\bin\Release\AmiBroker.Samples.PluginInstallation.dll"; Check: "CheckPlugIn()"; Flags: ignoreversion
DestDir: {app}\Formulas\.NET for AmiBroker\PluginInstallation; Source: "{#GetEnv('DotNetForAB_Home')}\.NET for AmiBroker\Samples\Sources\Setup\PluginInstallation\Scripts\InstallationSample.afl"; Check: "CheckPlugIn()"; Flags: ignoreversion
