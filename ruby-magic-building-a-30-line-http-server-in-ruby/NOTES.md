## Usage

TCP Server
```
	ruby tcp_server.rb &> /dev/null & # Run TCP socket server in the background
	telnet localhost 5678 # Connect to TCP server
```

HTTP Server
```
        ruby http_server.rb &> /dev/null & # Run HTTP socket server in the background
```

Visit localhost:5678 using a browser.


