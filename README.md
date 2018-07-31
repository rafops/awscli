# Dockerized AWS CLI

Create an alias on your `.bashrc` or `.zshrc`:

```bash
alias aws="docker run -v ${PWD}:/root/workdir -v ${HOME}/.aws:/root/.aws awscli"
```
