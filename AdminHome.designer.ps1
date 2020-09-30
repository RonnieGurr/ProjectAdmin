[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$AdminHome = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Panel]$MainMenu = $null
[System.Windows.Forms.Button]$HomeButton = $null
[System.Windows.Forms.Button]$MailBoxesButton = $null
[System.Windows.Forms.Panel]$panel1 = $null
[System.Windows.Forms.MaskedTextBox]$EmailTextBox = $null
[System.Windows.Forms.Button]$LoginButton = $null
[System.Windows.Forms.MaskedTextBox]$PasswordTextBox = $null
[System.Windows.Forms.Panel]$panel2 = $null
[System.Windows.Forms.Panel]$panel6 = $null
[System.Windows.Forms.Label]$ConnectionText = $null
[System.Windows.Forms.Label]$ConnectedAs = $null
[System.ComponentModel.IContainer]$components = $null
[System.Windows.Forms.Panel]$Pan = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.Label]$DomainsText = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.DataVisualization.Charting.Chart]$TypeOfMailbox = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.Panel]$panel4 = $null
[System.Windows.Forms.ProgressBar]$LoadingBar = $null
[System.Windows.Forms.Button]$SignOutButton = $null
[System.Windows.Forms.Panel]$panel5 = $null
[System.Windows.Forms.Panel]$MailboxesHome = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
[System.Windows.Forms.DataVisualization.Charting.ChartArea]$chartArea1 = (New-Object -TypeName System.Windows.Forms.DataVisualization.Charting.ChartArea)
[System.Windows.Forms.DataVisualization.Charting.Legend]$legend1 = (New-Object -TypeName System.Windows.Forms.DataVisualization.Charting.Legend)
[System.Windows.Forms.DataVisualization.Charting.Series]$series1 = (New-Object -TypeName System.Windows.Forms.DataVisualization.Charting.Series)
$resources = Invoke-Expression (Get-Content -Path (Join-Path $PSScriptRoot 'AdminHome.resources.psd1') -Raw)
$MainMenu = (New-Object -TypeName System.Windows.Forms.Panel)
$SignOutButton = (New-Object -TypeName System.Windows.Forms.Button)
$MailBoxesButton = (New-Object -TypeName System.Windows.Forms.Button)
$HomeButton = (New-Object -TypeName System.Windows.Forms.Button)
$panel1 = (New-Object -TypeName System.Windows.Forms.Panel)
$LoginButton = (New-Object -TypeName System.Windows.Forms.Button)
$PasswordTextBox = (New-Object -TypeName System.Windows.Forms.MaskedTextBox)
$EmailTextBox = (New-Object -TypeName System.Windows.Forms.MaskedTextBox)
$panel2 = (New-Object -TypeName System.Windows.Forms.Panel)
$LoadingBar = (New-Object -TypeName System.Windows.Forms.ProgressBar)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$DomainsText = (New-Object -TypeName System.Windows.Forms.Label)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$ConnectedAs = (New-Object -TypeName System.Windows.Forms.Label)
$ConnectionText = (New-Object -TypeName System.Windows.Forms.Label)
$Pan = (New-Object -TypeName System.Windows.Forms.Panel)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$TypeOfMailbox = (New-Object -TypeName System.Windows.Forms.DataVisualization.Charting.Chart)
$panel6 = (New-Object -TypeName System.Windows.Forms.Panel)
$panel4 = (New-Object -TypeName System.Windows.Forms.Panel)
$panel5 = (New-Object -TypeName System.Windows.Forms.Panel)
$MailboxesHome = (New-Object -TypeName System.Windows.Forms.Panel)
$MainMenu.SuspendLayout()
$panel1.SuspendLayout()
$panel2.SuspendLayout()
$Pan.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$TypeOfMailbox).BeginInit()
$AdminHome.SuspendLayout()
#
#MainMenu
#
$MainMenu.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]25)),([System.Int32]([System.Byte][System.Byte]28)),([System.Int32]([System.Byte][System.Byte]32)))

$MainMenu.Controls.Add($SignOutButton)
$MainMenu.Controls.Add($MailBoxesButton)
$MainMenu.Controls.Add($HomeButton)
$MainMenu.Dock = [System.Windows.Forms.DockStyle]::Left
$MainMenu.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$MainMenu.Name = [System.String]'MainMenu'
$MainMenu.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]240,[System.Int32]1008))
$MainMenu.TabIndex = [System.Int32]0
#
#SignOutButton
#
$SignOutButton.Dock = [System.Windows.Forms.DockStyle]::Bottom
$SignOutButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$SignOutButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$SignOutButton.ForeColor = [System.Drawing.Color]::LimeGreen
$SignOutButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]956))
$SignOutButton.Name = [System.String]'SignOutButton'
$SignOutButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]240,[System.Int32]52))
$SignOutButton.TabIndex = [System.Int32]3
$SignOutButton.Text = [System.String]'SIGN OUT'
$SignOutButton.UseVisualStyleBackColor = $true
$SignOutButton.add_Click($SignOutButton_Click)
#
#MailBoxesButton
#
$MailBoxesButton.Dock = [System.Windows.Forms.DockStyle]::Top
$MailBoxesButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$MailBoxesButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$MailBoxesButton.ForeColor = [System.Drawing.Color]::LimeGreen
$MailBoxesButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]52))
$MailBoxesButton.Name = [System.String]'MailBoxesButton'
$MailBoxesButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]240,[System.Int32]52))
$MailBoxesButton.TabIndex = [System.Int32]2
$MailBoxesButton.Text = [System.String]'MAIL BOXES'
$MailBoxesButton.UseVisualStyleBackColor = $true
$MailBoxesButton.add_Click($MailBoxesButton_Click)
$MailBoxesButton.add_MouseEnter($MailBoxesButton_MouseEnter)
$MailBoxesButton.add_MouseLeave($MailBoxesButton_MouseLeave)
#
#HomeButton
#
$HomeButton.Dock = [System.Windows.Forms.DockStyle]::Top
$HomeButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$HomeButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$HomeButton.ForeColor = [System.Drawing.Color]::LimeGreen
$HomeButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$HomeButton.Name = [System.String]'HomeButton'
$HomeButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]240,[System.Int32]52))
$HomeButton.TabIndex = [System.Int32]1
$HomeButton.Text = [System.String]'HOME'
$HomeButton.UseVisualStyleBackColor = $true
$HomeButton.add_Click($HomeButton_Click)
$HomeButton.add_Enter($HomeButton_Enter)
$HomeButton.add_MouseEnter($HomeButton_MouseEnter)
$HomeButton.add_MouseLeave($HomeButton_MouseLeave)
#
#panel1
#
$panel1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$panel1.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]25)),([System.Int32]([System.Byte][System.Byte]28)),([System.Int32]([System.Byte][System.Byte]32)))

$panel1.Controls.Add($LoginButton)
$panel1.Controls.Add($PasswordTextBox)
$panel1.Controls.Add($EmailTextBox)
$panel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]246,[System.Int32]0))
$panel1.Name = [System.String]'panel1'
$panel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1634,[System.Int32]53))
$panel1.TabIndex = [System.Int32]1
$panel1.add_Paint($panel1_Paint)
#
#LoginButton
#
$LoginButton.Dock = [System.Windows.Forms.DockStyle]::Right
$LoginButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$LoginButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$LoginButton.ForeColor = [System.Drawing.Color]::LimeGreen
$LoginButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]1394,[System.Int32]0))
$LoginButton.Name = [System.String]'LoginButton'
$LoginButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]240,[System.Int32]53))
$LoginButton.TabIndex = [System.Int32]3
$LoginButton.Text = [System.String]'Login'
$LoginButton.UseVisualStyleBackColor = $true
$LoginButton.add_Click($LoginButton_Click)
$LoginButton.add_MouseEnter($LoginButton_MouseEnter)
$LoginButton.add_MouseLeave($LoginButton_MouseLeave)
#
#PasswordTextBox
#
$PasswordTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]11.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$PasswordTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]336,[System.Int32]14))
$PasswordTextBox.Name = [System.String]'PasswordTextBox'
$PasswordTextBox.PasswordChar = [System.Char]'*'
$PasswordTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]310,[System.Int32]25))
$PasswordTextBox.TabIndex = [System.Int32]1
$PasswordTextBox.add_MaskInputRejected($PasswordTextBox_MaskInputRejected)
#
#EmailTextBox
#
$EmailTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]11.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$EmailTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]14,[System.Int32]14))
$EmailTextBox.Name = [System.String]'EmailTextBox'
$EmailTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]310,[System.Int32]25))
$EmailTextBox.TabIndex = [System.Int32]0
#
#panel2
#
$panel2.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]25)),([System.Int32]([System.Byte][System.Byte]28)),([System.Int32]([System.Byte][System.Byte]32)))

$panel2.Controls.Add($LoadingBar)
$panel2.Controls.Add($label1)
$panel2.Controls.Add($DomainsText)
$panel2.Controls.Add($label2)
$panel2.Controls.Add($ConnectedAs)
$panel2.Controls.Add($ConnectionText)
$panel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]246,[System.Int32]59))
$panel2.Name = [System.String]'panel2'
$panel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]477,[System.Int32]557))
$panel2.TabIndex = [System.Int32]2
$panel2.add_Paint($panel2_Paint)
#
#LoadingBar
#
$LoadingBar.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]14,[System.Int32]525))
$LoadingBar.Maximum = [System.Int32]7
$LoadingBar.Name = [System.String]'LoadingBar'
$LoadingBar.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]448,[System.Int32]23))
$LoadingBar.TabIndex = [System.Int32]6
$LoadingBar.Visible = $false
#
#label1
#
$label1.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label1.ForeColor = [System.Drawing.Color]::White
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]14,[System.Int32]515))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]448,[System.Int32]2))
$label1.TabIndex = [System.Int32]5
#
#DomainsText
#
$DomainsText.AutoSize = $true
$DomainsText.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$DomainsText.ForeColor = [System.Drawing.Color]::White
$DomainsText.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]11,[System.Int32]90))
$DomainsText.Name = [System.String]'DomainsText'
$DomainsText.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]73,[System.Int32]16))
$DomainsText.TabIndex = [System.Int32]4
$DomainsText.Text = [System.String]'DOMAINS:'
$DomainsText.add_Click($DomainsText_Click)
#
#label2
#
$label2.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$label2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label2.ForeColor = [System.Drawing.Color]::White
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]14,[System.Int32]78))
$label2.Name = [System.String]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]448,[System.Int32]2))
$label2.TabIndex = [System.Int32]3
#
#ConnectedAs
#
$ConnectedAs.AutoSize = $true
$ConnectedAs.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$ConnectedAs.ForeColor = [System.Drawing.Color]::White
$ConnectedAs.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]11,[System.Int32]44))
$ConnectedAs.Name = [System.String]'ConnectedAs'
$ConnectedAs.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]193,[System.Int32]16))
$ConnectedAs.TabIndex = [System.Int32]1
$ConnectedAs.Text = [System.String]'CURRENTLY CONNECTED AS:'
$ConnectedAs.add_Click($ConnectedAs_Click)
#
#ConnectionText
#
$ConnectionText.AutoSize = $true
$ConnectionText.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$ConnectionText.ForeColor = [System.Drawing.Color]::White
$ConnectionText.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]10))
$ConnectionText.Name = [System.String]'ConnectionText'
$ConnectionText.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]120,[System.Int32]19))
$ConnectionText.TabIndex = [System.Int32]0
$ConnectionText.Text = [System.String]'INFORMATION'
#
#Pan
#
$Pan.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]25)),([System.Int32]([System.Byte][System.Byte]28)),([System.Int32]([System.Byte][System.Byte]32)))

$Pan.Controls.Add($label4)
$Pan.Controls.Add($label3)
$Pan.Controls.Add($TypeOfMailbox)
$Pan.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]729,[System.Int32]59))
$Pan.Name = [System.String]'Pan'
$Pan.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]477,[System.Int32]557))
$Pan.TabIndex = [System.Int32]3
#
#label4
#
$label4.AutoSize = $true
$label4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label4.ForeColor = [System.Drawing.Color]::White
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]11,[System.Int32]10))
$label4.Name = [System.String]'label4'
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]176,[System.Int32]19))
$label4.TabIndex = [System.Int32]6
$label4.Text = [System.String]'TYPE OF MAILBOXES'
#
#label3
#
$label3.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$label3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label3.ForeColor = [System.Drawing.Color]::White
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]78))
$label3.Name = [System.String]'label3'
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]448,[System.Int32]2))
$label3.TabIndex = [System.Int32]6
#
#TypeOfMailbox
#
$TypeOfMailbox.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]25)),([System.Int32]([System.Byte][System.Byte]28)),([System.Int32]([System.Byte][System.Byte]32)))

$chartArea1.Name = [System.String]'ChartArea1'
$TypeOfMailbox.ChartAreas.Add($chartArea1)
$TypeOfMailbox.Dock = [System.Windows.Forms.DockStyle]::Bottom
$legend1.Name = [System.String]'Legend1'
$TypeOfMailbox.Legends.Add($legend1)
$TypeOfMailbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]78))
$TypeOfMailbox.Name = [System.String]'TypeOfMailbox'
$series1.ChartArea = [System.String]'ChartArea1'
$series1.ChartType = [System.Windows.Forms.DataVisualization.Charting.SeriesChartType]::Doughnut
$series1.Legend = [System.String]'Legend1'
$series1.Name = [System.String]'TypeOfMailboxes'
$TypeOfMailbox.Series.Add($series1)
$TypeOfMailbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]477,[System.Int32]479))
$TypeOfMailbox.TabIndex = [System.Int32]0
$TypeOfMailbox.add_Click($TypeOfMailbox_Click)
#
#panel6
#
$panel6.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$panel6.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]25)),([System.Int32]([System.Byte][System.Byte]28)),([System.Int32]([System.Byte][System.Byte]32)))

$panel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]246,[System.Int32]622))
$panel6.Name = [System.String]'panel6'
$panel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1634,[System.Int32]371))
$panel6.TabIndex = [System.Int32]3
#
#panel4
#
$panel4.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]25)),([System.Int32]([System.Byte][System.Byte]28)),([System.Int32]([System.Byte][System.Byte]32)))

$panel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]1212,[System.Int32]59))
$panel4.Name = [System.String]'panel4'
$panel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]477,[System.Int32]557))
$panel4.TabIndex = [System.Int32]4
#
#panel5
#
$panel5.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]25)),([System.Int32]([System.Byte][System.Byte]28)),([System.Int32]([System.Byte][System.Byte]32)))

$panel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]1695,[System.Int32]59))
$panel5.Name = [System.String]'panel5'
$panel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]197,[System.Int32]557))
$panel5.TabIndex = [System.Int32]5
#
#MailboxesHome
#
$MailboxesHome.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]246,[System.Int32]3))
$MailboxesHome.Name = [System.String]'MailboxesHome'
$MailboxesHome.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1642,[System.Int32]1005))
$MailboxesHome.TabIndex = [System.Int32]6
$MailboxesHome.Visible = $false
#
#AdminHome
#
$AdminHome.AutoScroll = $true
$AdminHome.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]46)),([System.Int32]([System.Byte][System.Byte]47)),([System.Int32]([System.Byte][System.Byte]50)))

$AdminHome.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1904,[System.Int32]1005))
$AdminHome.Controls.Add($MailboxesHome)
$AdminHome.Controls.Add($panel6)
$AdminHome.Controls.Add($panel5)
$AdminHome.Controls.Add($panel4)
$AdminHome.Controls.Add($Pan)
$AdminHome.Controls.Add($panel2)
$AdminHome.Controls.Add($panel1)
$AdminHome.Controls.Add($MainMenu)
$AdminHome.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$AdminHome.Name = [System.String]'AdminHome'
$AdminHome.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$AdminHome.Text = [System.String]'Project Admin'
$AdminHome.WindowState = [System.Windows.Forms.FormWindowState]::Maximized
$AdminHome.add_FormClosed($AdminHome_FormClosed)
$AdminHome.add_Load($AdminHome_Load)
$AdminHome.add_ResizeEnd($AdminHome_ResizeEnd)
$MainMenu.ResumeLayout($false)
$panel1.ResumeLayout($false)
$panel1.PerformLayout()
$panel2.ResumeLayout($false)
$panel2.PerformLayout()
$Pan.ResumeLayout($false)
$Pan.PerformLayout()
([System.ComponentModel.ISupportInitialize]$TypeOfMailbox).EndInit()
$AdminHome.ResumeLayout($false)
Add-Member -InputObject $AdminHome -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name MainMenu -Value $MainMenu -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name HomeButton -Value $HomeButton -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name MailBoxesButton -Value $MailBoxesButton -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name panel1 -Value $panel1 -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name EmailTextBox -Value $EmailTextBox -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name LoginButton -Value $LoginButton -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name PasswordTextBox -Value $PasswordTextBox -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name panel2 -Value $panel2 -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name panel6 -Value $panel6 -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name ConnectionText -Value $ConnectionText -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name ConnectedAs -Value $ConnectedAs -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name components -Value $components -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name Pan -Value $Pan -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name DomainsText -Value $DomainsText -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name TypeOfMailbox -Value $TypeOfMailbox -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name panel4 -Value $panel4 -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name LoadingBar -Value $LoadingBar -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name SignOutButton -Value $SignOutButton -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name panel5 -Value $panel5 -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name MailboxesHome -Value $MailboxesHome -MemberType NoteProperty
Add-Member -InputObject $AdminHome -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
