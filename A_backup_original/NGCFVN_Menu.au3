; =====================================================================
;  NGCFVN MENU v2 - Menu tong hop tat ca chuc nang NGCFVN
;  - Khong can key/ban quyen: tat ca module da duoc chay doc lap
;  - Moi chuc nang la 1 dong: tick chon + nut Bat/Tat rieng
;  - Bam INS de AN / HIEN menu (ke ca khi dang trong game)
;  - Bam ESC trong menu de thoat han chuong trinh quan ly nay
;  Cach dung: dat file nay cung thu muc voi cac file .au3/.exe cua bo
;  NGCFVN (thu muc A_backup_original), compile bang AutoIt (Aut2Exe)
;  hoac chay truc tiep bang AutoIt3. Chay voi quyen Admin.
; =====================================================================
#RequireAdmin
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>

Opt("GUIOnEventMode", 0)
Opt("TrayIconHide", 0)

; ---------- Danh sach module (Ten hien thi | file script/exe | mo ta) ----------
Global $aModules[20][3] = [ _
	["AProty V6.6 (Chinh)", "AProty.au3", "Auto Gigant/RB/Doc/Haze/Mid/GauR4 - ban day du"], _
	["AProty V1.2", "AProty3.au3", "Auto boss Bear/Gargoyle/Spider"], _
	["GPVV - TreeUp GP", "GPVV.au3", "Treo phong / TreeUp GP"], _
	["Di Tich", "devenv4.au3", "Farm Di Tich (dataDiTich)"], _
	["Map (Tool 4)", "map.au3", "Module map - tool 4"], _
	["Map 1 (Tool 1)", "map1.au3", "Module map - tool 1"], _
	["Map 2 (Tool 5)", "map2.au3", "Module map - tool 5"], _
	["Map 3 (Tool 6)", "map3.au3", "Module map - tool 6"], _
	["Map 5 (Tool 9)", "map5.au3", "Module map - tool 9"], _
	["Map 6 (Tool 12)", "map6.au3", "Module map - tool 12"], _
	["Map 7 (Rank AI)", "map7.au3", "Tim anh BMP - Rank AI"], _
	["Map 8 (Dang nhap/Phong)", "map8.au3", "Tu dong dang nhap + phong choi"], _
	["Map 9", "map9.au3", "Module map 9"], _
	["Map 10 (Rank AI/LCF)", "map10.au3", "Module map 10"], _
	["Map 11 (Tool 8)", "map11.au3", "Module map - tool 8 (TimeBoss)"], _
	["Map 12 (Tool 10)", "map12.au3", "Module map - tool 10"], _
	["111click", "111click.exe", "Auto click (ban exe san)"], _
	["CleanNG", "CleanNG.exe", "Don dep he thong (ban exe san)"], _
	["Graphic CF", "Graphic_CF.exe", "Chinh do hoa CrossFire (ban exe san)"], _
	["HIDU (Driver HID)", "HIDU.exe", "Driver HID - chay 1 lan khi can"]]
Global $iModCount = UBound($aModules)

; Thu muc chua module: uu tien cung thu muc voi menu, sau do la A_backup_original
Global $sModDir = @ScriptDir
If Not FileExists($sModDir & "\AProty.au3") And FileExists(@ScriptDir & "\A_backup_original\AProty.au3") Then
	$sModDir = @ScriptDir & "\A_backup_original"
EndIf

Global $aPid[$iModCount]
Global $aChk[$iModCount]
Global $aBtn[$iModCount]
Global $aLbl[$iModCount]
For $i = 0 To $iModCount - 1
	$aPid[$i] = 0
Next

; ---------- GUI ----------
Global $hGui = GUICreate("NGCFVN MENU v2 - Khong can key", 560, 690, -1, -1)
GUISetBkColor(0x14181F)
Global $hTitle = GUICtrlCreateLabel("NGCFVN  MENU  v2", 16, 10, 300, 26)
GUICtrlSetFont($hTitle, 14, 800, 0, "Segoe UI")
GUICtrlSetColor($hTitle, 0x00D9FF)
Global $hHint = GUICtrlCreateLabel("INS: An/Hien menu  |  Tick chon roi Bat, hoac bam Bat/Tat tung dong", 16, 38, 520, 16)
GUICtrlSetColor($hHint, 0x9AA7B4)
GUICtrlSetFont($hHint, 9, 400, 0, "Segoe UI")

Global $idBtnStartSel = GUICtrlCreateButton(">> BAT da chon", 16, 60, 120, 28)
Global $idBtnStopSel = GUICtrlCreateButton("<< TAT da chon", 144, 60, 120, 28)
Global $idBtnStopAll = GUICtrlCreateButton("TAT TAT CA", 272, 60, 110, 28)
Global $idBtnHide = GUICtrlCreateButton("An menu (INS)", 390, 60, 150, 28)
GUICtrlSetBkColor($idBtnStartSel, 0x1E7A34)
GUICtrlSetColor($idBtnStartSel, 0xFFFFFF)
GUICtrlSetBkColor($idBtnStopSel, 0x8A2B2B)
GUICtrlSetColor($idBtnStopSel, 0xFFFFFF)
GUICtrlSetBkColor($idBtnStopAll, 0x8A2B2B)
GUICtrlSetColor($idBtnStopAll, 0xFFFFFF)

Local $iY = 100
For $i = 0 To $iModCount - 1
	$aChk[$i] = GUICtrlCreateCheckbox($aModules[$i][0], 16, $iY, 185, 22)
	GUICtrlSetColor($aChk[$i], 0xFFFFFF)
	GUICtrlSetFont($aChk[$i], 9, 600, 0, "Segoe UI")
	$aBtn[$i] = GUICtrlCreateButton("Bat", 206, $iY, 52, 22)
	$aLbl[$i] = GUICtrlCreateLabel("Chua chay - " & $aModules[$i][2], 266, $iY + 3, 282, 18)
	GUICtrlSetColor($aLbl[$i], 0x9AA7B4)
	GUICtrlSetFont($aLbl[$i], 8, 400, 0, "Segoe UI")
	$iY += 27
Next

Global $hStatus = GUICtrlCreateLabel("San sang. Bam INS bat cu luc nao de an/hien menu.", 16, $iY + 8, 528, 18)
GUICtrlSetColor($hStatus, 0xFFD75E)
GUICtrlSetFont($hStatus, 9, 400, 0, "Segoe UI")

GUISetState(@SW_SHOW, $hGui)

HotKeySet("{INS}", "_ToggleMenuVisible")
AdlibRegister("_RefreshStatus", 1000)

; ---------- Vong lap chinh ----------
While 1
	Local $msg = GUIGetMsg()
	If $msg = $GUI_EVENT_CLOSE Then _Quit()
	If $msg = $idBtnHide Then _HideMenu()
	If $msg = $idBtnStartSel Then
		For $i = 0 To $iModCount - 1
			If GUICtrlRead($aChk[$i]) = $GUI_CHECKED Then _StartModule($i)
		Next
	EndIf
	If $msg = $idBtnStopSel Then
		For $i = 0 To $iModCount - 1
			If GUICtrlRead($aChk[$i]) = $GUI_CHECKED Then _StopModule($i)
		Next
	EndIf
	If $msg = $idBtnStopAll Then
		For $i = 0 To $iModCount - 1
			_StopModule($i)
		Next
	EndIf
	For $i = 0 To $iModCount - 1
		If $msg = $aBtn[$i] Then
			If $aPid[$i] <> 0 And ProcessExists($aPid[$i]) Then
				_StopModule($i)
			Else
				_StartModule($i)
			EndIf
			ExitLoop
		EndIf
	Next
	Sleep(20)
WEnd

; ---------- Ham xu ly ----------
Func _ToggleMenuVisible()
	If BitAND(WinGetState($hGui), 2) Then
		_HideMenu()
	Else
		GUISetState(@SW_SHOW, $hGui)
		WinActivate($hGui)
		GUICtrlSetData($hStatus, "Menu dang HIEN. Bam INS de an.")
	EndIf
EndFunc

Func _HideMenu()
	GUISetState(@SW_HIDE, $hGui)
EndFunc

Func _StartModule($i)
	If $aPid[$i] <> 0 And ProcessExists($aPid[$i]) Then Return
	Local $sFile = $aModules[$i][1]
	Local $sPath = $sModDir & "\" & $sFile
	; Uu tien ban .exe da compile cung ten (neu co)
	Local $sExe = StringRegExpReplace($sPath, "\.au3$", ".exe")
	If FileExists($sExe) Then $sPath = $sExe
	If Not FileExists($sPath) Then
		GUICtrlSetData($hStatus, "Khong tim thay file: " & $sPath)
		Return
	EndIf
	Local $pid = 0
	If StringLower(StringRight($sPath, 4)) = ".exe" Then
		$pid = Run('"' & $sPath & '"', $sModDir)
	Else
		; Chay script .au3: thu AutoIt3.exe, neu khong co thi ShellExecute
		Local $sAutoIt = _FindAutoIt()
		If $sAutoIt <> "" Then
			$pid = Run('"' & $sAutoIt & '" "' & $sPath & '"', $sModDir)
		Else
			ShellExecute($sPath, "", $sModDir)
			GUICtrlSetData($hStatus, "Da mo bang lien ket file .au3: " & $sFile & " (khong theo doi duoc tien trinh)")
			Return
		EndIf
	EndIf
	If $pid <> 0 Then
		$aPid[$i] = $pid
		GUICtrlSetData($hStatus, "Da bat: " & $aModules[$i][0])
	Else
		GUICtrlSetData($hStatus, "Loi khi mo: " & $sFile)
	EndIf
	_RefreshStatus()
EndFunc

Func _StopModule($i)
	If $aPid[$i] <> 0 Then
		If ProcessExists($aPid[$i]) Then ProcessClose($aPid[$i])
		$aPid[$i] = 0
		GUICtrlSetData($hStatus, "Da tat: " & $aModules[$i][0])
	EndIf
	_RefreshStatus()
EndFunc

Func _RefreshStatus()
	For $i = 0 To $iModCount - 1
		If $aPid[$i] <> 0 And ProcessExists($aPid[$i]) Then
			GUICtrlSetData($aLbl[$i], "DANG CHAY (PID " & $aPid[$i] & ") - " & $aModules[$i][2])
			GUICtrlSetColor($aLbl[$i], 0x51E07A)
			GUICtrlSetData($aBtn[$i], "Tat")
		Else
			If $aPid[$i] <> 0 Then $aPid[$i] = 0
			GUICtrlSetData($aLbl[$i], "Chua chay - " & $aModules[$i][2])
			GUICtrlSetColor($aLbl[$i], 0x9AA7B4)
			GUICtrlSetData($aBtn[$i], "Bat")
		EndIf
	Next
EndFunc

Func _FindAutoIt()
	Local $aCand[4] = [ _
		@ProgramFilesDir & "\AutoIt3\AutoIt3.exe", _
		@ProgramFilesDir & " (x86)\AutoIt3\AutoIt3.exe", _
		"C:\Program Files (x86)\AutoIt3\AutoIt3.exe", _
		"C:\Program Files\AutoIt3\AutoIt3.exe"]
	For $i = 0 To UBound($aCand) - 1
		If FileExists($aCand[$i]) Then Return $aCand[$i]
	Next
	Return ""
EndFunc

Func _Quit()
	AdlibUnRegister("_RefreshStatus")
	HotKeySet("{INS}")
	Exit
EndFunc
