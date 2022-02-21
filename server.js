const express = require('express');
const inquirer = require('inquirer');
const db = require('./db/connection');
// const apiRoutes = require('./routes/apiRoutes');
const cTable = require('console.table');


const PORT = process.env.PORT || 3001;
const app = express();

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());


app.use((req, res) => {
  res.status(404).end();
});

// Use apiRoutes
// app.use('/api', apiRoutes);




db.connect(err => {
  if (err) throw err;
  console.log('Database connected.');
  app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
  });
});

function startApp() {
  inquirer
    .prompt([
      {
        type: 'list',
        name: 'start',
        message: 'What would you like to do?',
        choices:['View', 'Add', 'Update', 'Exit']
      }
    ]).then (function(res){
      switch(res.start){
        
        case 'View':
            view();
            break;
        case 'Add':
            add();
            break;
        case 'Update':
            update();
            break;
        case 'Exit':
          console.log('All done')
          break;
      }
    });
  }

  function view() {
    inquirer
    .prompt([
      {
        type: 'list',
        name: 'view',
        message: 'Select an option to view',
        choices:['All employees', 'By department', 'By role']
      }
    ]).then (function(res){
      switch(res.view){
        
        case 'All employees':
            view();
            break;
        case 'By department':
            add();
            break;
        case 'By role':
            update();
            break;
        case 'Exit':
          console.log('All done')
          break;
      }
    });
  }

      
    

startApp()
