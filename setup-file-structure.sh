#!/bin/bash

# Create root level structure
mkdir -p client/public client/src/assets client/src/components client/src/pages client/src/services client/src/styles client/src/utils
mkdir -p server/config server/controllers server/models server/routes server/middleware

# Create frontend (React) folder structure
echo "Creating frontend (client) structure..."

# Public folder
touch client/public/index.html

# Src folder
touch client/src/assets/.gitkeep
touch client/src/components/.gitkeep
touch client/src/pages/.gitkeep
touch client/src/services/api.js
touch client/src/styles/.gitkeep
touch client/src/utils/.gitkeep
touch client/src/App.js
touch client/src/index.js
touch client/src/routes.js

# Create frontend package.json placeholder and .env file
touch client/package.json
touch client/.env

echo "Frontend structure created."

# Create backend (Node.js) folder structure
echo "Creating backend (server) structure..."

# Config folder
touch server/config/db.js

# Controllers folder
touch server/controllers/userController.js

# Models folder
touch server/models/User.js

# Routes folder
touch server/routes/userRoutes.js

# Middleware folder
touch server/middleware/.gitkeep

# Create backend files
touch server/index.js
touch server/package.json
touch server/.env
touch server/README.md

echo "Backend structure created."

# Create global README.md
touch README.md

echo "Folder and file structure created successfully!"
