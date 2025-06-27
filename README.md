# drf_template

A ready-to-use Django REST Framework project template.

## Features

- Django 4.2 with Django REST Framework 3.16
- PostgreSQL integration (via Docker Compose)
- CORS support with `django-cors-headers`
- N+1 query detection using `nplusone`
- Dockerfile and docker-compose for easy setup
- Code formatting and linting: Black, isort, Flake8
- Pre-commit hooks for code quality
- Sample logging configuration
- Poetry for dependency management

## Quick Start

1. **Clone the repository:**
   ```sh
   git clone https://github.com/kevyder/drf_template.git
   cd drf_template
   ```

2. **Start the development environment:**
   ```sh
   docker-compose up --build
   ```

3. **Access the app:**
   - API: [http://localhost:8001/](http://localhost:8001/)
   - Admin: [http://localhost:8001/admin/](http://localhost:8001/admin/)

## Development

- Python 3.10+
- Install [Poetry](https://python-poetry.org/docs/#installation) 2.1.1 for dependency management.
  ```sh
  pip install poetry==2.1.1
  ```
- Install dependencies:
  ```sh
  poetry install
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
  poetry run pytest
  ```

## Pre-commit

- Install pre-commit hooks:

  ```sh
  poetry run pre-commit install
  ```

## License

This project is licensed under the [Apache 2.0 License](LICENSE).
