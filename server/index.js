const Express = require('express');
const serverResponse = require('./game-of-thrones');
var cors = require('cors');

const server = new Express();
server.use(cors());

server.get('/', (req, res) => {
    res
        .status(200)
        .json(serverResponse)
});

server.listen(3000, () => {
    console.log("Server listening on http://localhost:3000");
});