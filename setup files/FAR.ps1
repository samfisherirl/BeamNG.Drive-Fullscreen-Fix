$filePath = 'game-settings.ini'
(Get-Content $filePath -raw) -replace 'GraphicDisplayModes = Window', 'GraphicDisplayModes = Fullscreen' | Set-Content $filePath 

