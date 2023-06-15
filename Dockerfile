# Base image
FROM python:3.9

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy project files to the working directory
COPY . .

# Expose the port on which your Django app will run (change if necessary)
EXPOSE 8000

# Run the Django development server
CMD python ./manage.py runserver 0.0.0.0:8000
