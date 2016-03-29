# nginx learining
============================
### understanding nginx
- worker number = cpu cores
- worker_connections < nofile (ulimit -n)
- max_connects_web_server: worker_connections * worker_processes
- max_connects_reverse_server: worker_connections * worker_processes/2

### installation on centos 7
1. create /etc/yum.repos.d/nginx.repo
   > [nginx]
	 name=nginx repo
	 baseurl=http://nginx.org/packages/centos/7/$basearch/
	 gpgcheck=0
     enabled=1
    


### high availablity
[Nginx+Keepalived实现站点高可用][http://seanlook.com/2015/05/18/nginx-keepalived-ha/]

### load balancing
[nginx_load_balancing][http://nginx.org/en/docs/http/load_balancing.html]


### nginx auth
1. base auth
[Password Protect a Domain with nginx][http://magnatecha.com/password-protect-domain-with-nginx/]

### nginx config
[how-to-configure-nginx][https://www.linode.com/docs/websites/nginx/how-to-configure-nginx]


### performance tuning
[nginx performance][https://www.linode.com/docs/websites/nginx/configure-nginx-for-optimized-performance]