$csv = userslist.csv 

foreach ($user in $csv) {

New-ADUser `
    -Name $name `
    -SamAccountName $email `
    -AccountPassword (-AsSecureStrong "PasswordTest!1") `
    -ChangePasswordAtLogon $true `
    -Description "test Account Creation" `
    -Enabled $true

}

#Confirm the account was created using the Get-ADUser cmdlet
#Get-ADUser -Identity (users name)