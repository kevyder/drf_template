FROM python:3.11

ENV PYTHONUNBUFFERED 1

# Update and install build dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        gcc \
        python3-dev \
        musl-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Poetry
RUN pip3 install poetry
RUN poetry config virtualenvs.create false

# Copy using poetry.lock* in case it doesn't exist yet
COPY ./pyproject.toml ./poetry.lock* /app/

# Clean up build dependencies
RUN apt-get purge -y --auto-remove \
        gcc \
        python3-dev \
        musl-dev

WORKDIR /app
COPY . /app/

RUN mkdir -p /postgres_data
RUN adduser --disabled-password --gecos '' user
RUN chown -R user:user /postgres_data/
RUN poetry install --no-root
USER user
