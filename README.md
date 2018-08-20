# Dockerized AWS CLI

Build awscli:

```
docker build -t awscli .
```

Create an alias on your `.bashrc` (`.bash_profile` if you are on Mac OS X) or `.zshrc`:

```bash
alias aws="docker run --rm -v ${PWD}:/root/workdir -v ${HOME}/.aws:/root/.aws awscli"
```

Update the alias in order that changes to take effect:
```bash
source ~/.bashrc
```

