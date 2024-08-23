# Fullstack Web App - React template

A full-stack web application built with **React.js** on the frontend and **Node.js** with **Express** on the backend, using **MongoDB** for the database.

## Table of Contents

1. [Project Description](#project-description)
2. [Tech Stack](#tech-stack)
3. [Folder Structure](#folder-structure)
4. [Installation and Setup](#installation-and-setup)
   - [Frontend (React)](#frontend-react)
   - [Backend (Node.js + Express)](#backend-nodejs--express)
5. [API Endpoints](#api-endpoints)
6. [Running the Project](#running-the-project)
7. [Features](#features)
8. [Environment Variables](#environment-variables)

## Project Description

This project is a web application that allows users to interact with a frontend built using **React.js** and a backend API built with **Node.js** and **Express**. The backend communicates with a **MongoDB** database to store and retrieve data. It includes a user management system that fetches data from an API and displays it on the frontend.

The app has:
- A basic **home page**.
- A **user page** where users can view a list of users fetched from the backend API.

## Tech Stack

### Frontend:
- **React.js**: For building the user interface.
- **React Router**: For handling navigation between different pages.
- **Axios**: For making HTTP requests from the frontend to the backend API.

### Backend:
- **Node.js**: Server runtime environment.
- **Express.js**: Web framework for Node.js.
- **Mongoose**: MongoDB object modeling tool.
- **CORS**: Middleware to handle cross-origin requests.

### Database:
- **MongoDB**: NoSQL database to store user information.

## Folder Structure

```
├── client/                  # Frontend (React) code
│   ├── public/              # Public static files
│   └── src/                 # React components and services
│       ├── components/      # Reusable components
│       ├── pages/           # Page components (Home, Users)
│       ├── services/        # API service (Axios)
│       ├── styles/          # CSS files for styling
│       ├── App.js           # Main application component
│       └── index.js         # Entry point for React
├── server/                  # Backend (Node.js + Express) code
│   ├── config/              # Database configuration
│   ├── controllers/         # API controllers (business logic)
│   ├── models/              # Mongoose models (database schemas)
│   ├── routes/              # API routes
│   └── index.js             # Entry point for the server
├── .env                     # Environment variables
├── package.json             # Root-level package.json for managing scripts
├── README.md                # Project documentation
└── .gitignore               # Ignored files for git
```

## Installation and Setup

### Prerequisites
- **Node.js** (v18+)
- **MongoDB** (local or cloud-based instance)
- **npm** (Node package manager)

### Frontend (React)

1. Navigate to the `client` folder:
   ```bash
   cd client
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Run the development server:
   ```bash
   npm start
   ```

4. The frontend will be running on [http://localhost:3000](http://localhost:3000).

### Backend (Node.js + Express)

1. Navigate to the `server` folder:
   ```bash
   cd server
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Create a `.env` file in the `server` directory with the following content:
   ```env
   MONGO_URI=mongodb://localhost:27017/mydb
   PORT=5000
   ```

4. Run the server:
   ```bash
   npm run dev
   ```

5. The backend will be running on [http://localhost:5000](http://localhost:5000).

## API Endpoints

The following endpoints are available in the backend:

- **GET /api/users**: Fetches all users from the database.
- **POST /api/users**: Creates a new user.

### Example API Request:

```bash
GET http://localhost:5000/api/users
```

```bash
POST http://localhost:5000/api/users
{
  "name": "John Doe",
  "email": "john@example.com"
}
```

## Running the Project

Once both frontend and backend servers are running, the project should be fully functional:

- The React frontend runs at [http://localhost:3000](http://localhost:3000).
- The Express backend API runs at [http://localhost:5000](http://localhost:5000).

To run both the frontend and backend simultaneously, you can also add a `concurrently` script in the root `package.json` and run:

```bash
npm run dev
```

This will launch both the frontend and backend together.

## Features

- **User Management**: Users can view a list of users from the backend API.
- **Responsive Design**: The UI is designed to work across multiple devices.
- **Modular Structure**: Separation of concerns with components, services, and pages.

## Environment Variables

### Frontend

In the **`client/.env`** file, add:

```env
REACT_APP_API_URL=http://localhost:5000
```

### Backend

In the **`server/.env`** file, configure the following:

```env
MONGO_URI=mongodb://localhost:27017/mydb
PORT=5000
```

Make sure to replace the `MONGO_URI` with your actual MongoDB connection string if you are using a remote MongoDB instance (like MongoDB Atlas).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
```

---

### **Key Sections Explained**:

1. **Project Description**: Describes what the project is about and its core features.
2. **Tech Stack**: Lists the technologies used in both the frontend and backend.
3. **Folder Structure**: Shows the overall project structure, highlighting the `client` and `server` folders.
4. **Installation and Setup**: Provides instructions on how to set up and run both the frontend and backend locally.
5. **API Endpoints**: Documents the available API endpoints for the backend and how to interact with them.
6. **Running the Project**: Explains how to run both parts of the project either separately or simultaneously.
7. **Features**: Summarizes the key features of the app.
8. **Environment Variables**: Details the `.env` configurations for both frontend and backend.