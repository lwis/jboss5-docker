#JBoss 5 Docker Image

Base image for using JBoss 5 with JDK 5 64 bit.

Automated Docker Registry Build available [here](https://registry.hub.docker.com/u/lwis/jboss5/).

Pull the image using;

`docker pull lwis/jboss5`

## Usage

Basic usage with arbitrary ports assignation. See `docker ps`, for actual ports.

```
docker run -P lwis/jboss5 /opt/jboss-5.1.0.GA/bin/run.sh --host=0.0.0.0
```


Exposing/Reassigning ports:

```
docker run -p 8080:8080 -p 8787:8787 lwis/jboss5 /opt/jboss-5.1.0.GA/bin/run.sh --host=0.0.0.0
```

For more information on the JBoss `run.sh` options, you can [refer to the official documentation](https://docs.jboss.org/jbossas/guides/installguide/r1/en/html/start-stop.html).
