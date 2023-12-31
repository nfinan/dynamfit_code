FROM python:3.8-slim

# Set the working directory within the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose a port to access the app (if needed)
EXPOSE 5040

# Specify the command to run when the container starts
# CMD ["python", "app/dynamfit2.py"]
CMD ["flask", "run", "-h","0.0.0.0", "-p", "5040"]