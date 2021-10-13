clear
clc

% ��������
Data = iris_dataset;
[row,col] = size(Data);

% �����ֵ
m = mean(Data,2);

%����Э�������
C = 1/col*(Data - m*ones(1,col))*(Data - m*ones(1,col))';

%���������ֽ�
[W,D] = eig(C);

%����仯����
k = 2;
d = diag(D);
[~,inx] = sort(d,'descend');
W_PCA = W(:,inx(1:2));

% �������ݽ�ά
Y = W_PCA'*Data;

%��������ά������չʾ

% PCA����������
figure;
plot(Y(1,:),Y(2,:),'*');
% PCA����ǰ������
figure;
plot(Data(1,:),Data(2,:),'*');




