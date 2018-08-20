# Dockerized AWS CLI

Build awscli:

```
docker build -t awscli .
```

Create an alias on your `.bashrc` or `.zshrc`:

```bash
alias aws="docker run --rm -v ${PWD}:/root/workdir -v ${HOME}/.aws:/root/.aws awscli"
```
