server {
    listen 80;

    location / {
        proxy_pass http://backend;
       	proxy_set_header HOST $host;
    	proxy_set_header X-Forwarded-Proto $scheme;
    	proxy_set_header X-Real-IP $remote_addr;
    	proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    }