# MERN Todo App with Authentication & Docker

A full-stack Todo application built using the **MERN stack (MongoDB, Express.js, React, Node.js)** with **user authentication**, **CRUD operations**, and **Docker support** for easy development and deployment.

## Features

* User Registration & Login
* Authentication using JWT & Cookies
* Create Todo
* Read All Todos
* Update Todo
* Delete Todo
* Responsive React UI
* Toast Notifications (Sonner / React Hot Toast)
* Dockerized frontend and backend

## Tech Stack

### Frontend

* React
* Vite
* Tailwind CSS
* shadcn/ui
* Axios
* Sonner
* React Hot Toast

### Backend

* Node.js
* Express.js
* MongoDB
* Mongoose
* JWT
* Cookie Parser
* bcrypt

### DevOps

* Docker
* Docker Compose

## Project Structure

```
mern-todo-app/
├── client/                 # React Frontend
│   ├── src/
│   ├── public/
│   └── package.json
│
├── server/                 # Express Backend
│   ├── controllers/
│   ├── middleware/
│   ├── models/
│   ├── routes/
│   ├── config/
│   └── package.json
│
├── docker-compose.yml
├── README.md
└── .gitignore
```

## Installation

### Clone the repository

```bash
git clone https://github.com/your-username/mern-todo-app.git
cd mern-todo-app
```

### Backend

```bash
cd server
npm install
npm run dev
```

### Frontend

```bash
cd client
npm install
npm run dev
```

## Environment Variables

Create a `.env` file inside the `server` directory.

```env
PORT=8000
MONGO_URI=your_mongodb_connection_string
JWT_SECRET=your_jwt_secret
CLIENT_URL=http://localhost:5173
```

## API Endpoints

### Authentication

| Method | Endpoint                | Description   |
| ------ | ----------------------- | ------------- |
| POST   | `/api/v1/user/register` | Register user |
| POST   | `/api/v1/user/login`    | Login user    |
| POST   | `/api/v1/user/logout`   | Logout user   |

### Todos

| Method | Endpoint               | Description   |
| ------ | ---------------------- | ------------- |
| POST   | `/api/v1/todo`         | Create todo   |
| GET    | `/api/v1/todo`         | Get all todos |
| PUT    | `/api/v1/todo/:todoId` | Update todo   |
| DELETE | `/api/v1/todo/:todoId` | Delete todo   |

## Docker

Build and run the project using Docker Compose.

```bash
docker compose up --build
```

The application will be available at:

* Frontend: `http://localhost:5173`
* Backend: `http://localhost:8000`

## Future Improvements

* Todo categories
* Due dates
* Priority levels
* Search & Filter
* Pagination
* Dark mode
* User-specific todo dashboard
* Docker deployment to cloud

## Author

**Supriyo Hanrar**

GitHub: https://github.com/your-username
