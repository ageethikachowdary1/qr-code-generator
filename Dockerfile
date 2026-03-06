# Use the official Python image
FROM python:3.12-slim-bullseye

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Create non-root user and directories
RUN useradd -m myuser && mkdir logs qr_codes && chown myuser:myuser logs qr_codes

# Copy application files
COPY --chown=myuser:myuser . .

# Switch to non-root user
USER myuser

# Run the application
ENTRYPOINT ["python", "main.py"]
CMD ["--url", "http://github.com/kaw393939"]