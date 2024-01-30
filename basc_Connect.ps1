Connect-PnPOnline -URL 'https://meshsystemsus.sharepoint.com/sites/FinanceHRITOPS-InformationTechnology/' -Interactive -ValidateConnection:$true
Connect-ExchangeOnline -ShowBanner:$false -UseMultiThreading:$true -UserPrincipalName justin.tison@meshsystems.com
Connect-MicrosoftTeams