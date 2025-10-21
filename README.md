# drf_template

A production-ready Django REST Framework project template.

## Features

- Django 4.2 with Django REST Framework 3.16
- PostgreSQL integration (via Docker Compose)
- CORS support with `django-cors-headers`
- N+1 query detection using `nplusone`
- Dockerfile and docker-compose for easy setup
- Code formatting and linting: Black, isort, Flake8
- Pre-commit hooks for code quality
- Sample logging configuration
- UV for dependency management

## Quick Start

1. **Clone the repository:**
   ```sh
   git clone https://github.com/yourusername/drf_template.git
   cd drf_template
   ```

2. **Start the development environment:**
   ```sh
   docker-compose up --build
   ```

3. **Access the app:**
   - API: [http://localhost:8080/](http://localhost:8080/)
   - Admin: [http://localhost:8080/admin/](http://localhost:8080/admin/)

## Development

- Python 3.13+
- Install [UV](https://github.com/astral-sh/uv) for dependency management:
  ```sh
  pip install uv
  ```
- Install dependencies:
  ```sh
  uv sync
  ```
- Run migrations:
  ```sh
  python manage.py migrate
  ```
- Start server:
  ```sh
  python manage.py runserver
  ```

## Testing

- Run tests:
  ```sh
  uv run pytest
  ```

## Code Quality

- Format code:
  ```sh
  uv run black .
  ```
- Lint code:
  ```sh
  uv run flake8
  ```
- Sort imports:
  ```sh
  uv run isort .
  ```

## Pre-commit

- Install pre-commit hooks:
  ```sh
  uv run pre-commit install
  ```

## License

This project is licensed under the [Apache 2.0 License](LICENSE).
