//console.log("Hi, I am from NodeJS Home");
const http = require('http');

const server = http.createServer((req,res)=>{

res.write("Welcome to Node app");
res.end();

});

server.listen(3000);
//server.listen(process.env.PORT);  // allows the port to be dynamic


// each app is given a port by the OS.






