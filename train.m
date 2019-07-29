%%model = svmtrain(label_part,data_part, '-s 0 -t 0 -c 0.1 -g 2.7')
load model_02
data_part = xlsread('Y2018_data');
load label_2018_20
label_part = label_2018_20;
[predict_label,accuracy,dec_values]=svmpredict(label_part,data_part,model);
fprintf('accuracy=%f\n',accuracy(1));
