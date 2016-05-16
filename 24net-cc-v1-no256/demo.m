clear;
addpath ..;
%simplenn net
net = load('f24netc.mat');
% Fill in default values
net = vl_simplenn_tidy(net) ;
net = dagnn.DagNN.fromSimpleNN(net, 'canonicalNames', true) ;
net.addLayer('error', dagnn.Loss('loss', 'classerror'), ...
    {'x7','label'}, 'error') ;
draw_full_net(net,'24netc');

