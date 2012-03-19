Option Explicit
Dim UserName, Password, RedirectPage
Dim fs, f
While NOT IsAlphaNumeric(Username)
	If Username <> "" AND NOT IsAlphaNumeric(Username) Then
		MsgBox "Username must be alphanumeric, without spaces!",16,"Password Helper"
	End If
	Username = InputBox("Enter Username:","Password Helper")
Wend
While NOT IsAlphaNumeric(Password)
	If Password <> "" AND NOT IsAlphaNumeric(Password) Then
		MsgBox "Password must be alphanumeric, without spaces!",16,"Password Helper"
	End If
	Password = InputBox("Enter Password:","Password Helper")
Wend
While RedirectPage = ""
	RedirectPage = InputBox("Please enter the URL of the password protected page:","Password Helper")
Wend
Set fs = CreateObject("Scripting.FileSystemObject")
Set f = fs.OpenTextFile(Trim(Username) & Trim(Password) & ".js",2,True)
f.WriteLine("auth = true;")
f.Write("redirect = """ & RedirectPage & """;")
Set f = Nothing
Set fs = Nothing
MsgBox "Password file created!"

Function IsAlphaNumeric(str)
	Dim ianRegEx
	Set ianRegEx = New RegExp
	ianRegEx.Pattern = "^[a-zA-Z0-9]+$"
	ianRegEx.Global = True
	IsAlphaNumeric = ianRegEx.Test(str)
End Function