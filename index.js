const express = require('express')
const app = express()
const port = 8000

app.get('/', (req, res) => {
    res.send('This simple page using express where deployment on docker')
})

app.listen(port, () => {
    console.log('server is running at ' + port)
})