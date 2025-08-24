# The Best HTTP Server™  

Welcome to **the pinnacle of web server technology**. Forget Nginx, Apache, Caddy, or any of those so-called "production-ready" toys. This is the **only** HTTP server you will ever need.

---

## Features That Will Blow Your Mind 🚀

- **Handles exactly ONE request** 
  Why bother with concurrency, threading, or event loops? This server believes in quality, not quantity. You get one connection. Make it count. 

- **GET requests only**  
  Who even uses POST, PUT, DELETE, PATCH, or OPTIONS anyway? REST APIs are overrated. If you want anything other than GET, you're simply not a minimalist. 

- **Responses so consistent it hurts** 
  You either get:
  - `200 OK` with a groundbreaking `<h1>Hello, World!</h1>`  
  - `404 Not Found` with the poetry of `<h1>File not found!</h1>`  
  That’s it. No JSON, no CSS, no bloat. Perfection in two flavors.  

- **Fixed-size buffer** (1000 bytes of pure luxury)  
  If your request doesn’t fit, maybe you should reconsider your life choices.  

- **Automatic server shutdown after a request** 
  Why would you keep a server running? That just wastes electricity. This one accepts your request, sends a response, and *drops the mic*.  

- **Zero configuration** 
  Tired of editing endless config files? With this server, there are no options at all. What you see is what you get.  

---

## Benchmarks (totally real, not fake) 🏎️

- **QPS (Queries Per Server Lifetime):** 1  
- **Latency:** Yes.  
- **Throughput:** One majestic request.  
- **Memory usage:** Who cares, it just dies after one request.  

---

## Why This Is Better Than Nginx

- Nginx: Handles millions of requests, async, supports TLS, reverse proxy, load balancing.  
- This Server: Doesn’t even pretend. One request, one response, goodbye.  

Clearly, simplicity wins.  

---

## Roadmap 🗺️

- [ ] Support for TWO requests before terminating.  
- [ ] Add POST support (if I'm feeling adventurous).  
- [ ] Consider a buffer larger than 1000 bytes.  
- [ ] Maybe not terminate after serving. (Low priority, questionable feature creep).  

---

## Installation 🛠️

Just build it. If it compiles, it runs. If it runs, it handles one request. If it handles one request, you’ve already hit peak performance.  

---

## Disclaimer ⚠️

This server is not suitable for:  
- Production  
- Development  
- Local testing  
- Anything requiring more than one request  

But hey, at least it’s written in Zig. 
