# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos de tu proyecto al contenedor
COPY . /app

# Instala las dependencias
RUN pip install --no-cache-dir Flask

# Expone el puerto en el que la app correrá
EXPOSE 5000

# Comando para ejecutar la app
CMD ["python", "app.py"]
