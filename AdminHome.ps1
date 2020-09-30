$HomeButton_Click = {

	$MailBoxesHome.Hide()

}

$MailBoxesButton_Click = {

	$MailboxesHome.Show()

	if ($AdminHome.Width -le 1320) {
		
		$MailboxesHome.Width = 957
	
	}

	else {

		$MailboxesHome.Width = 1657

	}

}

$SignOutButton_Click = {

	if ((Get-PSSession).Count -gt 0) {

		Remove-PSSession (Get-PSSession)
		$AdminHome.Dispose()
		.\Restart.ps1

	}

	else {

		$foo

	}

}

$AdminHome_FormClosed = {

	Remove-PSSession (Get-PSSession) -ErrorAction SilentlyContinue

}

$AdminHome_ResizeEnd = {

	if ($AdminHome.Width -le 1320) {
		
		$panel4.Hide()
		$panel5.Hide()
		$MailboxesHome.Width = 957
	
	}

	else {
	
		$panel4.Show()
		$panel5.Show()
		$MailboxesHome.Width = 1657

	}

}

$AdminHome_Load = {

	Add-Type -AssemblyName System.Drawing
	Add-Type -AssemblyName System.Windows.Forms.DataVisualization
	
	
	if ($AdminHome.Width -le 1320) {
		
		$panel4.Hide()
		$panel5.Hide()
	
	}

	else {
	
		$panel4.Show()
		$panel5.Show()
	}

}

$LoginButton_Click = {

	try {

		$LoadingBar.Show()
		$LoadingSteps = 1
		$LoadingBar.Value = $LoadingSteps

		$AdminHome.Cursor = "WaitCursor"

		$Username = $EmailTextBox.Text
		$Password = $PasswordTextBox.Text
		$secstr = New-Object -TypeName System.Security.SecureString
		$Password.ToCharArray() | ForEach-Object {$secstr.AppendChar($_)}
		$cred = new-object -typename System.Management.Automation.PSCredential -argumentlist $Username, $secstr

		$LoadingSteps++
		$LoadingBar.Value = $LoadingSteps

		$session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/powershell/ -Credential $cred -Authentication Basic –AllowRedirection
		Import-PSSession $session

		$LoadingSteps++
		$LoadingBar.Value = $LoadingSteps

		Connect-MsolService -Credential $cred

		$LoadingSteps++
		$LoadingBar.Value = $LoadingSteps

		$AdminHome.Text = $AdminHome.Text + " | " + $Username
		$ConnectedAs.Text = $ConnectedAs.Text + "`n" + $Username
		$Domains += @(Get-MsolDomain | Select-Object -ExpandProperty Name)
		$DomainNames = "`n"

		$LoadingSteps++
		$LoadingBar.Value = $LoadingSteps

		foreach ($Domain in $Domains) {
			$DomainNames += @($Domain + "`n")
		}

		$DomainsText.Text = $DomainsText.Text + $DomainNames

		try {

			#Set Series Name
			$seriesname = "TypeOfMailboxes"
			$TypeOfMailbox.Series[$seriesname].IsValueShownAsLabel = $true

			$LoadingSteps++
		    	$LoadingBar.Value = $LoadingSteps

			#Add some datapoints so the series. in this case you can pass the values to this method
			$TypeOfMailbox.Series[$seriesname].Points.AddXY("All Mailboxes", (Get-Mailbox -ResultSize Unlimited | Select-Object PrimarySmtpAddress).Count)
			$TypeOfMailbox.Series[$seriesname].Points.AddXY("Shared Mailboxes", (Get-Mailbox -ResultSize Unlimited -Filter {recipienttypedetails -eq "SharedMailbox"}).Count)
			$TypeOfMailbox.Series[$seriesname].Points.AddXY("User Mailboxes", (Get-User -RecipientTypeDetails UserMailbox -ResultSize Unlimited | where {$_.UseraccountControl -notlike “*accountdisabled*”}).Count)
			$TypeOfMailbox.Series[$seriesname].Points.AddXY("Leavers/Unlicensed & Blocked Mailboxes", (Get-MsolUser -All | Where-Object {$_.isLicensed -eq $false -and $_.BlockCredential -eq $true}).Count) 

			$LoadingSteps++
		    $LoadingBar.Value = $LoadingSteps
			$LoadingBar.Hide()
		
		}

		catch {

			$foo

		}
		
		$AdminHome.Cursor = "Default"

	}

	catch {

		$LoginButton.Text = "Login"
		$EmailTextBox.Text = "Error"
		Remove-PSSession -Session (Get-PSSession)
		$AdminHome.Cursor = "Default"

$ErrorMessage = $_.Exception.Message
    $FailedItem = $_.Exception.ItemName

$ErrorMessage 
$FailedItem 
	}

}

$LoginButton_MouseLeave = {

	$LoginButton.ForeColor = "LimeGreen"

}

$LoginButton_MouseEnter = {

	$LoginButton.ForeColor = "White"

}

$MailBoxesButton_MouseLeave = {

	$MailBoxesButton.ForeColor = "LimeGreen"

}

$MailBoxesButton_MouseEnter = {

	$MailBoxesButton.ForeColor = "White"

}

$HomeButton_MouseLeave = {

	$HomeButton.ForeColor = "LimeGreen"

}

$HomeButton_MouseEnter = {

	$HomeButton.ForeColor = "white"

}



. (Join-Path $PSScriptRoot 'AdminHome.designer.ps1')

$AdminHome.ShowDialog()