FROM mcr.microsoft.com/playwright/python:v1.34.0

# Install python application dependencies
COPY . /app
WORKDIR /app

RUN pip install pytest-playwright
RUN playwright install --with-deps chromium

ENTRYPOINT ["python3", "-m", "pytest"]

