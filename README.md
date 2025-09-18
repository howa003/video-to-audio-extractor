# Video to MP3 Extractor (Batch Script)

This repository contains a simple Windows batch script for extracting MP3 audio tracks from all video files in a given folder.  
It uses [FFmpeg](https://ffmpeg.org/) as the backend for conversion.

---

## Features
- Converts **all video files** in the `videos/` folder into MP3 format (supported formats include: `mp4`, `mkv`, `avi`, `mov`, `webm`, etc.).
- Stores results in the `mp3/` folder (created automatically).
- Uses **LAME MP3 encoder** with highest variable bitrate quality (`-q:a 0`).
- Reads `ffmpeg_path` from `config.bat`, so you can configure your FFmpeg location once and reuse it.

---

## Requirements
- Windows
- [FFmpeg](https://ffmpeg.org/download.html) (compiled with `libmp3lame`)
- A `config.bat` file in the same directory as the script, e.g.:

  ```bat
  :: config.bat
  set "ffmpeg_path=C:\tools\ffmpeg\bin\ffmpeg.exe"

## Usage

1. Create a `videos/` folder next to the script.

2. Place your video files into the `videos/` folder.  

3. Run the batch script:
   ```bash
   extract_mp3s.bat
   ```

## Example

If videos/ contains:
```bash
videos/
 ├─ clip1.mp4
 ├─ movie.mkv
 └─ recording.avi
```

After running the script, mp3/ will contain:
```bash
mp3/
 ├─ clip1.mp3
 ├─ movie.mp3
 └─ recording.mp3
```
## Notes
The script overwrites existing MP3s without asking (because of -y).

## License
GNU Affero General Public License (AGPL v3)
