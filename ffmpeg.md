
#ffmpeg

### get media duration

```sh
ffprobe -i sample-6s.mp3 -v quiet -show_entries format=duration
#[FORMAT]
#duration=6.426122
#[/FORMAT]
```
