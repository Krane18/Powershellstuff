#Block senders in Exchange for a user account
#Edit user
#For a list use a ljst to loop. not shown

$mbx = Get-MailboxJunkEmailConfiguration -Identity <user>
$list = Import-Csv .\blocksenders.csv
$list | %{$mbx.BlockedSendersAndDomains +=$_.BlockedSenders}
Set-MailboxJunkEmailConfiguration -Identity <user> -BlockedSendersAndDomains $mbx.BlockedSendersAndDomains