# Dockerized AWS CLI

Build awscli:

```
docker build -t awscli .
```

Create a script:

```bash
echo "docker run --rm -v \$(pwd):/root/workdir -v \${HOME}/.aws:/root/.aws awscli \"\$@\"" > /usr/local/bin/aws
```
