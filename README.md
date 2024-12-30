docker-novnc
============

A minimal image running x11 on Docker, including Openbox, Firefox, and accessible with a browser
## Uses 
1. Test some software
2.  2. Anonymous access to the web
> NOTE: the browser is considered to be in a proxy so use tor to access sites like reddit
```
git clone https://github.com/gitxpresso/docker-novnc.git
cd docker-novnc
docker build -t brave .
docker run -td -p 6080:6080 --name brave brave
```

Go to `https://localhost:6080/vnc.html` to visit the vnc server


## Credits

* [NoVNC](http://kanaka.github.io/noVNC/)
* [docker-novnc](https://github.com/paimpozhil/docker-novnc)
* [docker-novnc](https://github.com/light4/docker-novnc)
