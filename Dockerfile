# Usa una imagen oficial de Python como imagen base
FROM python:3.9
# Establece el directorio de trabajo en el contenedor
WORKDIR /app
# Copia el contenido del directorio actual en el contenedor en /app
COPY . /app
# Instala los paquetes necesarios especificados en requirements.txt
RUN pip install -r requirements.txt
# Haz que el puerto 80 esté disponible para el mundo exterior fuera de este contenedor
EXPOSE 80
# Define una variable de entorno
ENV NAME World
# Ejecuta main.py cuando se inicie el contenedor
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
