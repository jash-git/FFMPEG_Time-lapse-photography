REM �Ϥ��ܼv��
REM 0.5         ���C�i�Ӥ��e�{0.5��A�i�ۥѭק�A�p�אּ2�N��C�i�Ӥ��e�{2��C
REM 360/        �� �Ҧ��Ӥ���bffmpeg��bin��Ƨ��U��360��Ƨ����C
REM %%4d.jpg    �� �Ӥ��ɦW��4��Ʀr�s��A�p 0000.jpg�B0001.jpg�K�K
REM output.mp4  �� ��X�ɮת��ɦW
ffmpeg.exe -r 1/0.5 -i 2012/I%%04d.png -r 30 -s 399x390 output.mp4
pause

REM ��v���ɶ��Ԫ��|��
ffmpeg -i output.mp4 -vf setpts=4.0*PTS output01.mp4
pause

REM ��v���ɶ��Y�u�@�b
ffmpeg -i output.mp4 -vf setpts=PTS*0.5 output02.mp4
pause