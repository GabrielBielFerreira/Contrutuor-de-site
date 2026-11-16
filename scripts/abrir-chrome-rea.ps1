# Abre um Chrome separado, com a porta de depuração 9222, para o REA inspecionar um site.
# Uso: .\scripts\abrir-chrome-rea.ps1 https://site-de-referencia.com
# O perfil fica em %LOCALAPPDATA%\rea-browser-profile; seus logins e abas normais não são usados.
# Feche esta janela do Chrome quando terminar a investigação.

param(
  [Parameter(Position = 0)]
  [string]$Url = "about:blank",
  [int]$Porta = 9222
)

$candidatos = @(
  "$env:ProgramFiles\Google\Chrome\Application\chrome.exe",
  "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe",
  "$env:LOCALAPPDATA\Google\Chrome\Application\chrome.exe",
  "$env:ProgramFiles\BraveSoftware\Brave-Browser\Application\brave.exe",
  "${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe"
)
$navegador = $candidatos | Where-Object { $_ -and (Test-Path $_) } | Select-Object -First 1
if (-not $navegador) {
  Write-Host "Não achei Chrome, Brave nem Edge. Instale o Google Chrome e rode de novo." -ForegroundColor Red
  exit 1
}

$perfil = Join-Path $env:LOCALAPPDATA "rea-browser-profile"
New-Item -ItemType Directory -Force -Path $perfil | Out-Null

Start-Process -FilePath $navegador -ArgumentList @(
  "--remote-debugging-port=$Porta",
  "--remote-debugging-address=127.0.0.1",
  "--user-data-dir=`"$perfil`"",
  "--no-first-run",
  $Url
)

Write-Host "Chrome de investigação aberto em $Url" -ForegroundColor Green
Write-Host "Endpoint para o REA: http://127.0.0.1:$Porta"
Write-Host "Teste: rea list-browser-targets http://127.0.0.1:$Porta --json"
