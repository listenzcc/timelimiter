close all
clear
clc

delete(timerfindall)

t = timer

startfcn = 'disp(''start'')';
stopfcn = 'disp(''stop'')';
timerfcn = 'disp(''timer''); toc; stop(t); save( datestr(now, ''yy-mm-dd-hh-MM-ss'')); keyboard;';

t.StartDelay = 1;
t.Period = 2;
t.ExecutionMode = 'fixedRate';
t.StartFcn = startfcn;
t.StopFcn = stopfcn;
t.TimerFcn = timerfcn;

t

start(t)

tic
endlessscript;
toc

stop(t)
delete(t)