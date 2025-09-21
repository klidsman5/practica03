# Imagen base
FROM python:3.11-slim

WORKDIR /app

# Copiar requirements desde src
COPY src/requirements.txt ./requirements.txt

# Instalar dependencias
RUN pip install -r requirements.txt

# Copiar todo el código
COPY src/ .

# Comando por defecto
CMD ["python", "main.py"]
