const express = require("express");
var http = require("http");
const cors = require("cors");
const app = express();
const port = process.env.port || 5000;
var server = http.createServer(app);
var io = require("socket.io")(server, {
    cors:
    {
        origin: "*"
    }
});

//middleware
app.use(express.json());
app.use(cors());

io.on("connection", (socket) => {
    console.log("connected");
    console.log(socket.id , "has joined");
    socket.on("/test",(msg)=>{
        console.log(msg);
    })
})

server.listen(port, "0.0.0.0", () => {
    console.log("server started");
})