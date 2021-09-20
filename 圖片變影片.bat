REM 圖片變影片
REM 0.5         →每張照片呈現0.5秒，可自由修改，如改為2代表每張照片呈現2秒。
REM 360/        → 所有照片放在ffmpeg的bin資料夾下的360資料夾內。
REM %%4d.jpg    → 照片檔名為4位數字連續，如 0000.jpg、0001.jpg……
REM output.mp4  → 輸出檔案的檔名
ffmpeg.exe -r 1/0.5 -i 2012/I%%04d.png -r 30 -s 399x390 output.mp4
pause

REM 把影片時間拉長四倍
ffmpeg -i output.mp4 -vf setpts=4.0*PTS output01.mp4
pause

REM 把影片時間縮短一半
ffmpeg -i output.mp4 -vf setpts=PTS*0.5 output02.mp4
pause