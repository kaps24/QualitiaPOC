AutoItSetOption("WinTitleMatchMode" , -1)
Dim $file
Local $windowTitles[2]
Local $i
Local $arraySize
Local $iswindowPresent=False
Dim $Text,$result
$debugLogFile = 'C:/ProgramData/Qualitia/Logs//deinpuma1171/admin/manuscript/1.01/1.01/IterationNumber_109/TC_LA_01_Verify new Job login over Journal Dashboard_ab1d1fc7fcac4af9afd7ede463375f8e/Iteration_1/DebugLog.html'
$file = FileOpen($debugLogFile, 1)
$windowTitles[0]="Authentication Required"
$windowTitles[1]="null"
$arraySize=UBound($windowTitles)
For $i = 0 to $arraySize - 1
WinWaitActive($windowTitles[$i],"","20")
If WinExists($windowTitles[$i]) Then
 $iswindowPresent=True
 ExitLoop
EndIf
Next
If $iswindowPresent<>False Then
FileWrite($file, 'The window Authentication Required exists')
Send("mali02",1)
Send("{TAB}")
Send("malia87",1)
Send("{ENTER}")
Else
FileWrite($file, 'The window Authentication Required does not exist')
EndIf