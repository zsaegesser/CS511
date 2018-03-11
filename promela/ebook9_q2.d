proctype P
	state   1 -(tr  11)-> state   2  [id   0 tp   2] [----G] /home/zach/Documents/CS511/promela/ebook9_q2.pml:6 => np = 1
	state   2 -(tr  12)-> state   3  [id   1 tp   2] [----G] /home/zach/Documents/CS511/promela/ebook9_q2.pml:7 => np = (nq+1)
	state   3 -(tr  13)-> state   7  [id   2 tp   2] [----G] /home/zach/Documents/CS511/promela/ebook9_q2.pml:13 => (((np==0)||(np<=nq)))
	state   7 -(tr  14)-> state   5  [id   3 tp   2] [A---G] /home/zach/Documents/CS511/promela/ebook9_q2.pml:16 => critical = (critical+1)
	state   5 -(tr  15)-> state   6  [id   4 tp   2] [A---G] /home/zach/Documents/CS511/promela/ebook9_q2.pml:17 => assert((critical==1))
	state   6 -(tr  16)-> state   8  [id   5 tp   2] [----G] /home/zach/Documents/CS511/promela/ebook9_q2.pml:18 => critical = 0
	state   8 -(tr  17)-> state   9  [id   7 tp   2] [----G] /home/zach/Documents/CS511/promela/ebook9_q2.pml:21 => np = 0
	state   9 -(tr  18)-> state   0  [id   8 tp 3500] [--e-L] /home/zach/Documents/CS511/promela/ebook9_q2.pml:22 => -end-
proctype Q
	state   1 -(tr   3)-> state   2  [id   9 tp   2] [----G] /home/zach/Documents/CS511/promela/ebook9_q2.pml:25 => nq = 1
	state   2 -(tr   4)-> state   3  [id  10 tp   2] [----G] /home/zach/Documents/CS511/promela/ebook9_q2.pml:26 => nq = (np+1)
	state   3 -(tr   5)-> state   7  [id  11 tp   2] [----G] /home/zach/Documents/CS511/promela/ebook9_q2.pml:28 => (((nq==0)||(nq<=np)))
	state   7 -(tr   6)-> state   5  [id  12 tp   2] [A---G] /home/zach/Documents/CS511/promela/ebook9_q2.pml:31 => critical = (critical+1)
	state   5 -(tr   7)-> state   6  [id  13 tp   2] [A---G] /home/zach/Documents/CS511/promela/ebook9_q2.pml:32 => assert((critical==1))
	state   6 -(tr   8)-> state   8  [id  14 tp   2] [----G] /home/zach/Documents/CS511/promela/ebook9_q2.pml:33 => critical = 0
	state   8 -(tr   9)-> state   9  [id  16 tp   2] [----G] /home/zach/Documents/CS511/promela/ebook9_q2.pml:36 => nq = 0
	state   9 -(tr  10)-> state   0  [id  17 tp 3500] [--e-L] /home/zach/Documents/CS511/promela/ebook9_q2.pml:37 => -end-

Transition Type: A=atomic; D=d_step; L=local; G=global
Source-State Labels: p=progress; e=end; a=accept;

pan: elapsed time 1.72e+07 seconds
pan: rate         0 states/second
