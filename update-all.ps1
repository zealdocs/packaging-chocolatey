param (
    [switch] $Push,
    [switch] $Force
)

import-module -Name $PSScriptRoot\au\AU

$Options = [ordered]@{
    Push = $Push
    Force = $Force
}

$global:au_Root = $PSScriptRoot
updateall -Name "*" -Options $Options | Out-Null
