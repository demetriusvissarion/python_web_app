# Steps to create app

# Create the project directory

```shell
mkdir admin
cd admin
```

# Create a virtual environment to isolate our package dependencies locally

```shell
python -m venv env
env\Scripts\activate
```

# Install Django and dependencies into the virtual environment (Docker will install the other dependencies)

```shell
pip install django
pip install djangorestframework
```

# Set up a new project with a single application

```shell
django-admin startproject admin .  # Note the trailing '.' character
cd admin
```

# Sync database

```shell
python manage.py migrate
```

# Run server

```shell
python manage.py runserver
```

Output should be similar to:

```shell
Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).
March 30, 2023 - 17:27:24
Django version 4.1.7, using settings 'admin.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CTRL-BREAK.
[30/Mar/2023 17:31:49] "GET / HTTP/1.1" 200 10681
[30/Mar/2023 17:31:49] "GET /static/admin/css/fonts.css HTTP/1.1" 200 423
[30/Mar/2023 17:31:49] "GET /static/admin/fonts/Roboto-Bold-webfont.woff HTTP/1.1" 200 86184
[30/Mar/2023 17:31:49] "GET /static/admin/fonts/Roboto-Regular-webfont.woff HTTP/1.1" 200 85876
[30/Mar/2023 17:31:49] "GET /static/admin/fonts/Roboto-Light-webfont.woff HTTP/1.1" 200 85692
Not Found: /favicon.ico
[30/Mar/2023 17:31:49] "GET /favicon.ico HTTP/1.1" 404 2109
```

# Check in browser if server is running

run in browser: http://127.0.0.1:8000/

# Run server with Docker

```shell
docker-compose up
```

Output should be similar to:

```shell
[+] Running 1/0
 - Container python_web_app-backend-1  Created                                                                                                                              0.0s
Attaching to python_web_app-backend-1
python_web_app-backend-1  | Watching for file changes with StatReloader
python_web_app-backend-1  | [07/Apr/2023 11:06:01] "GET / HTTP/1.1" 200 10681
python_web_app-backend-1  | [07/Apr/2023 11:06:01] "GET /static/admin/css/fonts.css HTTP/1.1" 200 423
python_web_app-backend-1  | [07/Apr/2023 11:06:01] "GET /static/admin/fonts/Roboto-Bold-webfont.woff HTTP/1.1" 200 86184
python_web_app-backend-1  | [07/Apr/2023 11:06:01] "GET /static/admin/fonts/Roboto-Light-webfont.woff HTTP/1.1" 200 85692
python_web_app-backend-1  | [07/Apr/2023 11:06:01] "GET /static/admin/fonts/Roboto-Regular-webfont.woff HTTP/1.1" 200 85876
python_web_app-backend-1  | [07/Apr/2023 11:06:03] "GET / HTTP/1.1" 200 10681
python_web_app-backend-1  | [07/Apr/2023 11:06:44] "GET / HTTP/1.1" 200 10681
python_web_app-backend-1  | [07/Apr/2023 11:06:44] "GET /static/admin/css/fonts.css HTTP/1.1" 304 0
python_web_app-backend-1  | [07/Apr/2023 11:06:44] "GET /static/admin/fonts/Roboto-Bold-webfont.woff HTTP/1.1" 304 0
python_web_app-backend-1  | [07/Apr/2023 11:06:44] "GET /static/admin/fonts/Roboto-Regular-webfont.woff HTTP/1.1" 304 0
python_web_app-backend-1  | [07/Apr/2023 11:06:44] "GET /static/admin/fonts/Roboto-Light-webfont.woff HTTP/1.1" 304 0
```
