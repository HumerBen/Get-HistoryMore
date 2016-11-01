<#
	Get more history commands
#>
function Get-HistoryMore
{
	[CmdletBinding(SupportsShouldProcess=$False)]
	<#
		.EXAMPLE
		Example 1: Give a example
		.EXAMPLE
		give other example
	#>

	param 
	(
		[Parameter(
			HelpMessage="Input a number",
			Position=0)]
		[Int]$Id
	)
	
	# 获取记录历史文件路径
#	$HistoryPath = (Get-PSReadlineOption).HistorySavePath
	$MyHistoryPath = "D:\cmder_mini\config\PSHistory\MyPSHistory"
	$HistoryFile = Get-Content -Encoding UTF8 -Path $MyHistoryPath

	# 将文件内容赋给数组并且加上行号
	$Counter = 1
	$HistoryCommandArray = @()

	foreach ( $line in $HistoryFile )
	{
		$HistoryCommandArray += "  $Counter - $line" ;
		$Counter += 1
	}
	
	# 判断Id参数是否为空
	if ($Id)
	{
		# 如果有Id参数时
		Write-Host $HistoryCommandArray[$Id-1]
	}
	else
	{
		# 如果没有Id参数时将数组内容逆向并分页显示
		$HistoryCommandArrayReverse = @()
		for ( $i = $HistoryCommandArray.Length ; $i -ge 1 ; $i -= 1 )
		{
			#$i
			$HistoryCommandArrayReverse += $HistoryCommandArray[$i]
		}

		# 显示命令
		$HistoryCommandArrayReverse | Out-Host -Paging
	}
	
}