const express = require('express')
const app = express()
const mysql = require('mysql')
const port = process.env.PORT || 5000

let pool = mysql.createPool({
  connectionLimit: 100,
  host: '35.193.239.243',
  user: 'root',
  password: 'Skate123!',
  admin: 'admin',
  debug: false
})
function get_users(req, res) {
  pool.query('SELECT * FROM users', function(err, rows) {
    if(err){
      return res.json({
        'error': true,
        'message': 'Error occured: ' + err 
      })
    } else {
      res.json(rows)
    }
  })
}

function getFirstNames(req, res){
  //let sql = 'SELECT id, first_name FROM users WHERE id < 10'
  let sql = 'SELECT ??, ?? FROM ?? WHERE ?? < ?'
  const replacements = ['id', 'first_name', 'users', 'id', 10]
  sql = mysql.format(sql, replacements)
  pool.query(sql, function(err, rows){
    if(err)  {
      return res.json({
        'error': true,
        'message': 'Error occured: ' + err
      })
    }else {
      res.json(rows)
    }
  })
}

app.get('/', function(err, res) {
  get_users(req, res)
})

app.get('/first-names', function(req, res){
  getFirstNames(req, res)
})

app.listen(port, () => {
  console.log('Example app listening on port ${port}')
}); 