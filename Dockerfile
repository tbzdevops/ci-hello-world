# Basis-Image: schlankes Python-Laufzeitsystem
FROM python:3.10-slim

# Arbeitsverzeichnis im Container
WORKDIR /app

# Abhängigkeiten kopieren und installieren
COPY requirements.txt .
RUN pip install -r requirements.txt

# Application Code kopieren
COPY . .

# Standard Kommando (hier ein einfaches Beispiel, z.B. das Script ausführen)
CMD ["python", "app.py"]
