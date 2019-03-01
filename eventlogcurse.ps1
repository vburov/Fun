$Log_name = (Get-WinEvent -ListLog * -Force).LogName
for ($i=0; $i -lt $Log_name.length; $i++)
{
$Log = Get-WinEvent -ListLog $Log_name[$i]
if (!$Log.IsEnable)
{
$Log.IsEnabled = $true
$Log.SaveChanges()
}
}
