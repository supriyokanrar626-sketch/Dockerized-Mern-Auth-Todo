# Dockerized MERN Auth Todo

A full-stack **MERN (MongoDB, Express.js, React, Node.js)** Todo application with **JWT authentication**, **HTTP-only cookie based login**, **protected routes**, **CRUD operations**, and **Docker Compose support**.

## Features

* User registration
* User login and logout
* JWT authentication with **HTTP-only cookies**
* Protected routes
* Create, read, update, and delete todos
* Responsive React frontend
* Express.js REST API
* MongoDB database
* Fully containerized using **Docker and Docker Compose**

## Tech Stack

### Frontend

* React
* Vite
* Tailwind CSS
* Axios
* Sonner

### Backend

* Node.js
* Express.js
* MongoDB (Mongoose)
* JWT
* bcrypt
* cookie-parser

### DevOps

* Docker
* Docker Compose

## Project Structure

```text
Dockerized-Mern-Auth-Todo/
├── client/
├── server/
├── docker-compose.yml
└── README.md
```

## Authentication Flow

1. Register a new account
2. Login with email and password
3. Server generates a JWT
4. JWT is stored in an **HTTP-only cookie**
5. Protected routes verify authentication through the `/me` endpoint
6. Authenticated users can manage their todos

## API Endpoints

### Authentication

* `POST /api/v1/user/register`
* `POST /api/v1/user/login`
* `GET /api/v1/user/logout`
* `GET /api/v1/user/me`

### Todos

* `GET /api/v1/todo`
* `POST /api/v1/todo`
* `PUT /api/v1/todo/:todoId`
* `DELETE /api/v1/todo/:todoId`

## Docker Setup

### Clone the repository

```bash
git clone https://github.com/your-username/Dockerized-Mern-Auth-Todo.git
cd Dockerized-Mern-Auth-Todo
```

### Create environment file

Create `server/.env` from `server/.env.example`.

Example:

```env
PORT=8000
MONGO_URI=mongodb://mongo:27017/todoapp
SECRET_KEY=your_secret_key_here
```

### Run with Docker

```bash
docker compose up --build
```

### Access the application

* Frontend: http://localhost:5173
* Backend: http://localhost:8000

## Docker Services

The project uses three containers:

* **frontend** — React + Vite
* **backend** — Express API
* **mongo** — MongoDB database

## Future Improvements

* User-specific todos
* Todo completion status
* Due dates
* Search and filtering
* Dark mode
* Production deployment with Nginx and HTTPS

## Author

**Supriyo Kanrar**

GitHub: https://github.com/supriyokanrar626-sketch

## License

This project is licensed under the MIT License.
