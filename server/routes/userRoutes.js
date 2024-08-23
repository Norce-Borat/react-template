const express = require('express');
const { getUsers, createUser } = require('../controllers/userController');
const router = express.Router();

// GET /api/users - Fetch all users
router.get('/', getUsers);

// POST /api/users - Create a new user
router.post('/', createUser);

module.exports = router;
