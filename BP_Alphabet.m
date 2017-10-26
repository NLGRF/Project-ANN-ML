%Backprogation to pattern recognition problem (Alphabet).

[Al,T]=prprob;
%prprop is pattern recognition problem data for nnet toolbox demo
%All demos data of nnet toobox are on path \toolbox\nnet\nndemos 
%of the installation directory, for example
%C:\Program Files\MATLAB\R2009a\toolbox\nnet\nndemos

net=newff(minmax(Al),[1 36],{'logsig','purelin'},'traingdx');
net.trainParam.epochs=1000
net.trainParam.goal=0.0001
net.trainParam.show=1

%train
net = train(net,Al,T);

%test for Seg with the same training data
output=sim(net,Al(:,36));
[m,A_Id]=max(output)

Seg = Al(:,36);
plotchar(Seg)

%test for A with noise generated
%Anoise=Al(:,6)+0.20*randn(size(Al(:,6)));

%figure
%plotchar(Anoise)
%output=sim(net,Anoise);
%[m,A_Id]=max(output)


