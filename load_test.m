function [nx,ny] = load_test()
%  eval(["load ",sprintf('%s/flow_%.10d.mat',caseName,nStep)])
  eval("load Red600-Ma05-L10-D5/flow_0000000000.mat")
%  disp(size(U))
  disp(ndims(U))
  nx = size(U,1);
  ny = size(U,2);
end
