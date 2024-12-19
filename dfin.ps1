# Get date (YYYY-MM-DD)
$fecha = Get-Date -Format "yyyy-MM-dd"

# URL
$url = "https://www.elfinanciero.com.mx/graficos/edicion-impresa/download.php?file=edicion-digital.pdf"

# Download folder
$carpeta_descargas = "C:\Users\vjvelascorios\Desktop\El Financiero"

# Filename
$nombre_archivo = "el_financiero-$fecha.pdf"

# Create folder if it doesn't exist
New-Item -ItemType Directory -Force -Path $carpeta_descargas

# Download file
Invoke-WebRequest -Uri $url -OutFile "$carpeta_descargas\$nombre_archivo"

Write-Host "File downloaded as: $carpeta_descargas\$nombre_archivo"
