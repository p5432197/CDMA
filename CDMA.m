clear all
clc
x = [0:1:7]
W_1 = [-1]
W_2 = [W_1 W_1;W_1 W_1*(-1)]
W_4 = [W_2 W_2;W_2 W_2*(-1)]
W_8 = [W_4 W_4;W_4 W_4*(-1)]
for i = 1:8
    if rand(1) >0.5
        U_1(i) = 1;
    else
        U_1(i) = -1;
    end
end

for i = 1:8
    if rand(1) >0.5
        U_2(i) = 1;
    else
        U_2(i) = -1;
    end
end

for i = 1:8
    if rand(1) >0.5
        U_3(i) = 1;
    else
        U_3(i) = -1;
    end
end

for i = 1:8
    if rand(1) >0.5
        U_4(i) = 1;
    else
        U_4(i) = -1;
    end
end

for i = 1:8
    if rand(1) >0.5
        U_5(i) = 1;
    else
        U_5(i) = -1;
    end
end

for i = 1:8
    if rand(1) >0.5
        U_6(i) = 1;
    else
        U_6(i) = -1;
    end
end

for i = 1:8
    if rand(1) >0.5
        U_7(i) = 1;
    else
        U_7(i) = -1;
    end
end

figure(1); % �Ĥ@�ӹϪ����
subplot(8, 1, 1); % ���ε����� 8x1�A�{�b�ϥβĤ@��
bar(U_1); % �yø�G���y��
hold on; % �O�d���e����
title('User1 data'); % ��ܼ��D
xlabel('bits'); % ��� x �y�Ъ�����
ylabel('data'); % ��� y �y�Ъ�����

subplot(8, 1, 2); % ���ε����� 8x1�A�{�b�ϥβĤG��
bar(U_2); % �yø�G���y��
hold on; % �O�d���e����
title('User2 data'); % ��ܼ��D
xlabel('bits'); % ��� x �y�Ъ�����
ylabel('data'); % ��� y �y�Ъ�����

subplot(8, 1, 3); % ���ε����� 8x1�A�{�b�ϥβĤT��
bar(U_3); % �yø�G���y��
hold on; % �O�d���e����
title('User3 data'); % ��ܼ��D
xlabel('bits'); % ��� x �y�Ъ�����
ylabel('data'); % ��� y �y�Ъ�����

subplot(8, 1, 4); % ���ε����� 8x1�A�{�b�ϥβĥ|��
bar(U_4); % �yø�G���y��
hold on; % �O�d���e����
title('User4 data'); % ��ܼ��D
xlabel('bits'); % ��� x �y�Ъ�����
ylabel('data'); % ��� y �y�Ъ�����

subplot(8, 1, 5); % ���ε����� 8x1�A�{�b�ϥβĤ���
bar(U_5); % �yø�G���y��
hold on; % �O�d���e����
title('User5 data'); % ��ܼ��D
xlabel('bits'); % ��� x �y�Ъ�����
ylabel('data'); % ��� y �y�Ъ�����

subplot(8, 1, 6); % ���ε����� 8x1�A�{�b�ϥβĤ���
bar(U_6); % �yø�G���y��
hold on; % �O�d���e����
title('User6 data'); % ��ܼ��D
xlabel('bits'); % ��� x �y�Ъ�����
ylabel('data'); % ��� y �y�Ъ�����

subplot(8, 1, 7); % ���ε����� 8x1�A�{�b�ϥβĤC��
bar(U_7); % �yø�G���y��
hold on; % �O�d���e����
title('User7 data'); % ��ܼ��D
xlabel('bits'); % ��� x �y�Ъ�����
ylabel('data'); % ��� y �y�Ъ�����

for i = 1:8
    for j = 1:8
        data(i,j) = U_1(i).*W_8(2,j)+U_2(i).*W_8(3,j)+U_3(i).*W_8(4,j)+U_4(i).*W_8(5,j)+U_5(i).*W_8(6,j)+U_6(i).*W_8(7,j)+U_7(i).*W_8(8,j)
    end
end

subplot(8, 1, 8); % ���ε����� 8x1�A�{�b�ϥβĤK��
bar(data); % �yø�G���y��
hold on; % �O�d���e����
title('encode data'); % ��ܼ��D
xlabel('bits'); % ��� x �y�Ъ�����
ylabel('data'); % ��� y �y�Ъ�����

figure(2); % �Ĥ@�ӹϪ����

for i = 1:8
    a(i)=sum(data(i,1:8).*W_8(2,1:8))/8;
end
subplot(8, 1, 1); % ���ε����� 8x1�A�{�b�ϥβĤ@��
bar(a); % �yø�G���y��
hold on; % �O�d���e����
title('decode data'); % ��ܼ��D
xlabel('bits'); % ��� x �y�Ъ�����
ylabel('data'); % ��� y �y�Ъ�����

for i = 1:8
    b(i)=sum(data(i,1:8).*W_8(3,1:8))/8;
end
subplot(8, 1, 2); % ���ε����� 8x1�A�{�b�ϥβĤG��
bar(b); % �yø�G���y��
hold on; % �O�d���e����
title('decode data'); % ��ܼ��D
xlabel('bits'); % ��� x �y�Ъ�����
ylabel('data'); % ��� y �y�Ъ�����

for i = 1:8
    c(i)=sum(data(i,1:8).*W_8(4,1:8))/8;
end
subplot(8, 1, 3); % ���ε����� 8x1�A�{�b�ϥβĤT��
bar(c); % �yø�G���y��
hold on; % �O�d���e����
title('decode data'); % ��ܼ��D
xlabel('bits'); % ��� x �y�Ъ�����
ylabel('data'); % ��� y �y�Ъ�����

for i = 1:8
    d(i)=sum(data(i,1:8).*W_8(5,1:8))/8;
end
subplot(8, 1, 4); % ���ε����� 8x1�A�{�b�ϥβĥ|��
bar(d); % �yø�G���y��
hold on; % �O�d���e����
title('decode data'); % ��ܼ��D
xlabel('bits'); % ��� x �y�Ъ�����
ylabel('data'); % ��� y �y�Ъ�����
for i = 1:8
    e(i)=sum(data(i,1:8).*W_8(6,1:8))/8;
end
subplot(8, 1, 5); % ���ε����� 8x1�A�{�b�ϥβĤ���
bar(e); % �yø�G���y��
hold on; % �O�d���e����
title('decode data'); % ��ܼ��D
xlabel('bits'); % ��� x �y�Ъ�����
ylabel('data'); % ��� y �y�Ъ�����

for i = 1:8
    f(i)=sum(data(i,1:8).*W_8(7,1:8))/8;
end
subplot(8, 1, 6); % ���ε����� 8x1�A�{�b�ϥβĤ���
bar(f); % �yø�G���y��
hold on; % �O�d���e����
title('decode data'); % ��ܼ��D
xlabel('bits'); % ��� x �y�Ъ�����
ylabel('data'); % ��� y �y�Ъ�����

for i = 1:8
    g(i)=sum(data(i,1:8).*W_8(8,1:8))/8;
end
subplot(8, 1, 7); % ���ε����� 8x1�A�{�b�ϥβĤC��
bar(g); % �yø�G���y��
hold on; % �O�d���e����
title('decode data'); % ��ܼ��D
xlabel('bits'); % ��� x �y�Ъ�����
ylabel('data'); % ��� y �y�Ъ�����