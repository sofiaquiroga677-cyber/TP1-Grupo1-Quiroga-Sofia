TP1 - Grupo 1 / Tema 1 - Sofia Quiroga
# Lic. Carlos Pacheco

Write-Host "=== TP1 - TEMA 1 - Sofia Quiroga ===" -ForegroundColor Cyan
$usuariosLocales = Get-LocalUser
Write-Host "Lista de usuarios locales:" -ForegroundColor Yellow
$usuariosLocales | Select-Object Name, Enabled | Format-Table
$cantidadTotal = $usuariosLocales.Count
Write-Host "Cantidad total: $cantidadTotal"
[int]$numeroLimite = Read-Host "Ingrese un numero entero como limite"
if (($cantidadTotal -gt $numeroLimite) -and ($cantidadTotal -lt 10)) {
    Write-Host "CUMPLE: $cantidadTotal es mayor a $numeroLimite y menor a 10" -ForegroundColor Green
} else {
    Write-Host "NO CUMPLE: $cantidadTotal NO es mayor a $numeroLimite y menor a 10" -ForegroundColor Red
}
$PSVersionTable