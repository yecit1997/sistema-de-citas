# Usa una imagen base oficial de Python
FROM python:3.12-slim

# Establece variables de entorno
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Crea el directorio de trabajo
WORKDIR /app

# Instala las dependencias
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copia el código de la aplicación
COPY . /app/

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

# Expone el puerto en el que correrá la aplicación
EXPOSE 8000
