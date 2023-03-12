# docker-AAXtoMP3

A dockerized [AAXtoMP3](https://github.com/KrumpetPirate/AAXtoMP3).

AAXtoMP3 is great for converting Audible files to MP3 so I can use my
purchased titles on a dedicated MP3 player. Setting up and maintaining the deps on MacOS is annoying so I'm packaging this up into a Dockerfile and adding a Makefile with targets to run tasks easily.

## Use

### With Docker

```sh
docker run <url or tag> <options>
```

Note: a full list of options can be found [here](https://github.com/KrumpetPirate/AAXtoMP3/blob/master/README.md#options-for-aaxtomp3)

### With make

Creates a single MP3 file:

```sh
make mp3
```

Create multiple MP3 files. One for each chapter:

```sh
make chapters
```
