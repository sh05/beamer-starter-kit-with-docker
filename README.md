# beamer-starter-kit-with-docker

beamer-starter-kit-with-docker is settings for Japanese beamer beginer.

## Features

You can easily start beamer experience, using docker.

## Requirement

- Docker
- Docker-Compose

## Usage

### Quickly
```bash
docker-compose up
```

### Normally
```bash
# only at the first time
docker pull paperist/alpine-texlive-ja:latest
docker-compose build
docker-compose up

# after the second time
docker-compose up
```

### PDF location

`texsrc/main.pdf`

## Note

###  for handout

beamer can make handout, slides without animation and page number.

```bash
docker-compose run --rm beamer /workdir/tex_compile_with_handout.sh
```

#### PDF location

`texsrc/handout.pdf`
