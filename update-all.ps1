param (
    [switch] $Push,
    [switch] $Force
)

# Force this script to stop whenever an reror occurs.
$ErrorActionPreference = "Stop"

import-module -Name $PSScriptRoot\au\AU

$Options = [ordered]@{
    Push = $Push
    Force = $Force
}

$global:au_Root = $PSScriptRoot
updateall -Name "*" -Options $Options | Out-Null
