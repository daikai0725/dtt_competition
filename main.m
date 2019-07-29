load model_00
%%data_part = xlsread('Y2018_data');
%%load data_part_302
%%data_part = data_part_302;
%%load label_2018_20
%%label_part = label_2018_20;
load('data_part_302.mat')
[predict_label,accuracy,dec_values]=svmpredict(label_part,data_part,model);
%fprintf('accuracy=%f\n',accuracy);
tabulate(predict_label(:))
%%tabulate(predict_label_total(:))
%%pie(tabulate(predict_label(:)))
%%bar(tabulate(predict_label(:)))