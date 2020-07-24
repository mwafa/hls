VIDEO_IN=${1}
VIDEO_OUT=${2}
mkdir $VIDEO_OUT
ffmpeg -hide_banner -y -i $VIDEO_IN \
  -vf scale=w=640:h=360:force_original_aspect_ratio=decrease -c:a aac -ar 48000 -c:v h264 -profile:v main -crf 20 -sc_threshold 0 -g 48 -keyint_min 48 -hls_time 4 -hls_playlist_type vod  -b:v 800k -maxrate 856k -bufsize 1200k -b:a 96k -hls_segment_filename $VIDEO_OUT/360p_%06d.ts $VIDEO_OUT/360p.m3u8 \
  -vf scale=w=842:h=480:force_original_aspect_ratio=decrease -c:a aac -ar 48000 -c:v h264 -profile:v main -crf 20 -sc_threshold 0 -g 48 -keyint_min 48 -hls_time 4 -hls_playlist_type vod -b:v 1400k -maxrate 1498k -bufsize 2100k -b:a 128k -hls_segment_filename $VIDEO_OUT/480p_%06d.ts $VIDEO_OUT/480p.m3u8 \
  -vf scale=w=1280:h=720:force_original_aspect_ratio=decrease -c:a aac -ar 48000 -c:v h264 -profile:v main -crf 20 -sc_threshold 0 -g 48 -keyint_min 48 -hls_time 4 -hls_playlist_type vod -b:v 2800k -maxrate 2996k -bufsize 4200k -b:a 128k -hls_segment_filename $VIDEO_OUT/720p_%06d.ts $VIDEO_OUT/720p.m3u8 \
  -vf scale=w=1920:h=1080:force_original_aspect_ratio=decrease -c:a aac -ar 48000 -c:v h264 -profile:v main -crf 20 -sc_threshold 0 -g 48 -keyint_min 48 -hls_time 4 -hls_playlist_type vod -b:v 5000k -maxrate 5350k -bufsize 7500k -b:a 192k -hls_segment_filename $VIDEO_OUT/1080p_%06d.ts $VIDEO_OUT/1080p.m3u8

# Write to master
echo "#EXTM3U" > $VIDEO_OUT/master.m3u8
echo "#EXT-X-VERSION:3" >> $VIDEO_OUT/master.m3u8
echo "#EXT-X-STREAM-INF:BANDWIDTH=800000,RESOLUTION=640x360" >> $VIDEO_OUT/master.m3u8
echo "360p.m3u8" >> $VIDEO_OUT/master.m3u8
echo "#EXT-X-STREAM-INF:BANDWIDTH=1400000,RESOLUTION=842x480" >> $VIDEO_OUT/master.m3u8
echo "480p.m3u8" >> $VIDEO_OUT/master.m3u8
echo "#EXT-X-STREAM-INF:BANDWIDTH=2800000,RESOLUTION=1280x720" >> $VIDEO_OUT/master.m3u8
echo "720p.m3u8" >> $VIDEO_OUT/master.m3u8
echo "#EXT-X-STREAM-INF:BANDWIDTH=5000000,RESOLUTION=1920x1080" >> $VIDEO_OUT/master.m3u8
echo "1080p.m3u8" >> $VIDEO_OUT/master.m3u8
