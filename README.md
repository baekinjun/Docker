# Docker example
###installation 
<pre>
  cd /home
  git clone https://github.com/baekinjun/Docker-example
  cd Docker example
</pre>

###RUN
<pre>
 #Login For private Docker Repository
 docker login
 docker pull qor711/docker-example
 docker run -p 80:80 -v /home/Docker-example/Project:/var/www/html qor711/docker-example
</pre>
