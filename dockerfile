FROM python:3.9-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /code

# Copy the dependencies file to the working directory
COPY ./requirements.txt /code/

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    libc-dev \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Install dependencies
RUN pip install --upgrade pip
RUN pip install Django==4.2.5
RUN pip install -r requirements.txt

# Copy the current directory contents into the container at /code/
COPY . /code/

# Expose the port Django runs on
EXPOSE 8000

# Run Django application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]