const express = require('express');
const router = express.Router();
const db = require('../../db/connection');

// Get all parties
router.get('/department', (req, res) => {
    
  });
  
  // Get single party
  router.get('/department/:id', (req, res) => {});
  
  // Delete a party
  router.delete('/department/:id', (req, res) => {});
  
  module.exports = router;