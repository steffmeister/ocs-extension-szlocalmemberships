'----------------------------------------------------------
' Plugin for OCS Inventory NG 2.x
' Script : Local Memberships
' Version : 1.0
' Date : 06/09/2021
' Authors : Stefan ZIDAR
'----------------------------------------------------------
' OS checked [X] on	32b	64b	(Professionnal edition)
'	Windows XP		[ ]
'	Windows Vista	[ ]	[ ]
'	Windows 7		[ ]	[ ]
'	Windows 8.1		[ ]	[ ]	
'	Windows 10		[ ]	[X]
'	Windows 2k8R2		[ ]
'	Windows 2k12R2		[ ]
'	Windows 2k16		[ ]
' ---------------------------------------------------------
' NOTE : No checked on Windows 8
' ---------------------------------------------------------
Option Explicit
'On Error Resume Next

'====================================================

dim colGroups, objGroup, objUser

Set colGroups = GetObject("WinNT://localhost")
colGroups.Filter = Array("group")
For Each objGroup In colGroups
     
    For Each objUser in objGroup.Members
		wscript.Echo "<SZLOCALMEMBERSHIPS><GROUP>" & objGroup.Name & "</GROUP><USER>" & objUser.Name & "</USER></SZLOCALMEMBERSHIPS>"
    Next
Next
