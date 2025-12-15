FROM python:3.14.0-slim

ENV PYTHONUNBUFFERED 1
ENV UV_VERSION=0.9.17
ENV UV_PROJECT_ENVIRONMENT="/usr/local/"

# Set work directory
WORKDIR /app

# Install UV
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir uv==$UV_VERSION

# Copy using uv.lock* in case it doesn't exist yet
COPY ./pyproject.toml ./uv.lock* /app/

# Install dependencies
RUN uv sync --no-dev

COPY . /app/

RUN mkdir -p /postgres_data
RUN adduser --disabled-password --gecos '' user
RUN chown -R user:user /postgres_data/
USER user
