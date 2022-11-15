
```
docker build -t povtest:1 - < povray.dockerfile
```

```
docker run -t --rm -v $PWD:/povfiles --user $(id -u):$(id -g) povtest:1 povray /povfiles/debug.pov
```

----

# Example Render

![debug.png](example-debug.png)


