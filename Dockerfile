# Imagen base
FROM python:3.9

# Directorio de trabajo
WORKDIR /app

# Copiar requirements e instalar dependencias
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copiar el resto del código
COPY . .

# Exponer puerto
EXPOSE 8082

# Comando de inicio
CMD ["python", "app.py"]
