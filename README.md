docker-novnc
============

A minimal image running x11 on Docker, including Openbox, Firefox, and accessible with a browser
## Uses 
1. Test some software
2.  2. Anonymous access to the web
> NOTE: the browser is considered to be a proxy so use tor to access sites like reddit
```
git clone https://github.com/light4/docker-novnc.git
cd docker-novnc
make
docker run -td -p 6080:6080 docker-novnc
```



## Credits

* [NoVNC](http://kanaka.github.io/noVNC/)
* [docker-novnc](https://github.com/paimpozhil/docker-novnc)
* [docker-novnc](https://github.com/light4/docker-novnc)
