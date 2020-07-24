# Test

Copy file to current folder, and run `hls.sh` to generate all video part.

```bash
sh hls.sh sample.mp4 sample
```

# Sample result tree

```bash
│   .gitignore
│   hls.sh
│   index.html
│   README.md
│   sample.mp4
│
├───js
│       hls.min.js
│       hls.min.js.map
│       videojs5-hlsjs-source-handler.min.js
│       vjs-quality-picker.js
│
└───sample
        1080p.m3u8
        1080p_000000.ts
        1080p_000001.ts
        1080p_000002.ts
        1080p_000003.ts
        1080p_000004.ts
        1080p_000005.ts
        1080p_000006.ts
        1080p_000007.ts
        1080p_000008.ts
        1080p_000009.ts
        1080p_000010.ts
        1080p_000011.ts
        1080p_000012.ts
        1080p_000013.ts
        360p.m3u8
        360p_000000.ts
        360p_000001.ts
        360p_000002.ts
        360p_000003.ts
        360p_000004.ts
        360p_000005.ts
        360p_000006.ts
        360p_000007.ts
        360p_000008.ts
        360p_000009.ts
        360p_000010.ts
        360p_000011.ts
        360p_000012.ts
        360p_000013.ts
        480p.m3u8
        480p_000000.ts
        480p_000001.ts
        480p_000002.ts
        480p_000003.ts
        480p_000004.ts
        480p_000005.ts
        480p_000006.ts
        480p_000007.ts
        480p_000008.ts
        480p_000009.ts
        480p_000010.ts
        480p_000011.ts
        480p_000012.ts
        480p_000013.ts
        720p.m3u8
        720p_000000.ts
        720p_000001.ts
        720p_000002.ts
        720p_000003.ts
        720p_000004.ts
        720p_000005.ts
        720p_000006.ts
        720p_000007.ts
        720p_000008.ts
        720p_000009.ts
        720p_000010.ts
        720p_000011.ts
        720p_000012.ts
        720p_000013.ts
        master.m3u8
```
