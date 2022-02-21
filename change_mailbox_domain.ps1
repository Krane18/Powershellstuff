#Change the domain of a list of user mailboxes to another domain available from a csv
#Works for existing mailboxes
$csv = "updateemailaddrress.csv"

ForEach ($user in $csv) {

    Set-Mailbox -Identity $user -EmailAddresses $email -alias $alias

}