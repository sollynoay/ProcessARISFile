function outframe = expand4(inframe8)
[m n] = size(inframe8);
nout= 4*n -3;
outframe=zeros(m,nout);
inframe=double(inframe8);
outframe(:,[1:4:nout])=inframe;
outframe(:,[2:4:nout-3]) = 0.75*inframe(:,[1:n-1]) + 0.25*inframe(:,[2:n]);
outframe(:,[3:4:nout-2]) = 0.50*inframe(:,[1:n-1]) + 0.50*inframe(:,[2:n]);
outframe(:,[4:4:nout-1]) = 0.25*inframe(:,[1:n-1]) + 0.75*inframe(:,[2:n]);
