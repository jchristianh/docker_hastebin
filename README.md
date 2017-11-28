### thezengarden/hastebin
-----

Hastebin requires Redis which is run as an extra service inside this image. Please see the source repo (```https://github.com/jchristianh/tzg_hastebin```) to obtain the full repo contents used in building this image.


#### Run the container:
-----
```
docker run -ti -d --name tzg_hastebin --hostname tzg_hastebin -p 7777:7777 thezengarden/hastebin && docker logs -f tzg_hastebin
```

#### GitHub:
[thezengarden/hastebin - jchristianh](https://github.com/jchristianh/tzg_hastebin)

#### Maintainers:
[Chris H. \<chris@thezengarden.net\>](mailto:chris@thezengarden.net)

