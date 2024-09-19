function IC = unique_IC(A)

  % This function returns the array IC as given in the outputs of unique() in
  % MATLAB (view help for unique() in MATLAB for details). This was necessary
  % because unique() in Octave does not yet have IC implemented in the outputs.
  % - gigiaero - 19/09/2024

  C = unique(A,'rows','stable');

  IC = zeros(size(A,1),1);

  for i = 1:size(C,1)
    target = ismember(A,C(i,:),'rows');
    target_idx = find(target == 1);
    IC(target_idx) = i;
  end

end

%A2 = [3,4,5,6;1,1,1,1;1,2,3,4;1,1,1,1;1,2,3,4];
