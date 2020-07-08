<#
    .SYNOPSIS
        Test Interview: to call a function to return first reocurring character
    .EXAMPLE
        .\TestFunction.ps1 -foo "abcdedcba"
#>
Param
(
    [parameter(Mandatory=$true)]
    [string]
    $foo 
)


function Get-FirstReoccuringChar {
    <#
        .SYNOPSIS
            Return first reoccuring character
        .EXAMPLE
            Get-FirstReoccuringChar -strValue "abcdedcba"
    #>
    Param
    (
        [parameter(Mandatory=$true)]
        [string]
        $strValue
    )

    # Create a new Array
    $arr = New-Object System.Collections.ArrayList

    for($i=0; $i -le $strValue.Length - 1; $i++)
    {
        $c = $strValue[$i]

        if ($arr.Contains($c))
        {
            return $c
        }
        else
        {
            $arr.Add($c) | Out-Null
        }
    }
}

Get-FirstReoccuringChar -strValue $foo
