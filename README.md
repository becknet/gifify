# gifify

## Ein Projekt mit Docker um aus Videos animierte GIFs zu erstellen

### Überblick
Der Container bietet die Möglichkeit, aus einem Film einen Ausschnitt in ein animierters GIF umzuwandeln.

### verwendete Software
- ubuntu:latest
- ffmpeg
- imageMagick
- node.js
- npm
- gfsicle (https://github.com/pornel/giflossy/releases/download/lossy%2F1.82.1/gifsicle-1.82.1-lossy.zip)
- gifify 

### Image erstellen
```docker build -t [containerName]```

### Container ausführen
```docker run -v $(pwd):/data [containerName] [input] -o [output.gif]```
- $(pwd):/data mapt das aktuelle Verzeichnis nach /data im Container
- [ input ]: Video-File
- [ output.gif ] generiertes GIF im aktuellen Verzeichnis

### weitere Parameter
```
-h, --help              output usage information
-V, --version           output the version number
--colors <n>            Number of colors, up to 255, defaults to 80
--compress <n>          Compression (quality) level, from 0 (no compression) to 100, defaults to 40
--from <position>       Start position, hh:mm:ss or seconds, defaults to 0
--fps <n>               Frames Per Second, defaults to 10
-o, --output <file>     Output file, defaults to stdout
--resize <W:H>          Resize output, use -1 when specifying only width or height. `350:100`, `400:-1`, `-1:200`
--reverse               Reverses movie
--speed <n>             Movie speed, defaults to 1
--subtitles <filepath>  Subtitle filepath to burn to the GIF
--text <string>         Add some text at the bottom of the movie
--to <position>         Seconds, defaults to end of movie
--no-loop               Will show every frame once without looping
```

### bekannte Probleme
Hat das Video eine zu grosse Auflösung, kann es im Container zu einem Speicherüberlauf kommen
```--resize``` behebt dieses Problem.


