const http = require('http')
const fs = require('fs')

fs.readFile('./index.html', function (error, html) {
    const server = http.createServer((req, res) => {
        res.writeHead(200, { 'content-type': 'html' })
        res.write(html)
        res.end()
    })
    server.listen( 3000)
})
