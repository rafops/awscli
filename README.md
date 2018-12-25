# Dockerized AWS CLI

Build awscli:

```
docker build -t awscli .
```

Create a wrapper script:

```bash
echo "docker run --rm -v \$(pwd):/root/workdir -v \${HOME}/.aws:/root/.aws -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_SESSION_TOKEN awscli \"\$@\"" > /usr/local/bin/aws
```
