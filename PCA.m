clear
clc

% 创建数据
Data = iris_dataset;
[row,col] = size(Data);

% 计算均值
m = mean(Data,2);

%计算协方差矩阵
C = 1/col*(Data - m*ones(1,col))*(Data - m*ones(1,col))';

%进行特征分解
[W,D] = eig(C);

%计算变化矩阵
k = 2;
d = diag(D);
[~,inx] = sort(d,'descend');
W_PCA = W(:,inx(1:2));

% 进行数据降维
Y = W_PCA'*Data;

%至进行两维的数据展示

% PCA处理后的数据
figure;
plot(Y(1,:),Y(2,:),'*');
% PCA处理前的数据
figure;
plot(Data(1,:),Data(2,:),'*');




