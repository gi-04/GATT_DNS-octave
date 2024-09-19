X2=X;
Y2=Y;
Z2=Z;
flowParameters2=flowParameters;
flowType2=flowType;
wall2=wall;

caseName = "Red600-Ma05-L10-D5";
nStep = 32;

%save(sprintf('%s/flow_%.10d.mat',caseName,nStep),"v7")

%fid = fopen("saved_file.mat",'w');
%save("-mat7-binary","fid")

%eval("save -v7 name.mat")


% fiz estes testes com o intuito de salvar arquivos, sendo que na verdade eu
% precisava ler (contexto: checkPreviousRun). no entanto, já está pronto, e
% deixo aqui guardado pra fins de referência futura
% - gigiaero - 19/09/2024
eval(["save -v7 ",sprintf('%s/flow_%.10d.mat',caseName,nStep)])

%fclose(fid);
