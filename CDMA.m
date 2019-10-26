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

figure(1); % 第一個圖表視窗
subplot(8, 1, 1); % 分割視窗為 8x1，現在使用第一個
bar(U_1); % 描繪二維座標
hold on; % 保留之前的圖
title('User1 data'); % 顯示標題
xlabel('bits'); % 顯示 x 座標的標籤
ylabel('data'); % 顯示 y 座標的標籤

subplot(8, 1, 2); % 分割視窗為 8x1，現在使用第二個
bar(U_2); % 描繪二維座標
hold on; % 保留之前的圖
title('User2 data'); % 顯示標題
xlabel('bits'); % 顯示 x 座標的標籤
ylabel('data'); % 顯示 y 座標的標籤

subplot(8, 1, 3); % 分割視窗為 8x1，現在使用第三個
bar(U_3); % 描繪二維座標
hold on; % 保留之前的圖
title('User3 data'); % 顯示標題
xlabel('bits'); % 顯示 x 座標的標籤
ylabel('data'); % 顯示 y 座標的標籤

subplot(8, 1, 4); % 分割視窗為 8x1，現在使用第四個
bar(U_4); % 描繪二維座標
hold on; % 保留之前的圖
title('User4 data'); % 顯示標題
xlabel('bits'); % 顯示 x 座標的標籤
ylabel('data'); % 顯示 y 座標的標籤

subplot(8, 1, 5); % 分割視窗為 8x1，現在使用第五個
bar(U_5); % 描繪二維座標
hold on; % 保留之前的圖
title('User5 data'); % 顯示標題
xlabel('bits'); % 顯示 x 座標的標籤
ylabel('data'); % 顯示 y 座標的標籤

subplot(8, 1, 6); % 分割視窗為 8x1，現在使用第六個
bar(U_6); % 描繪二維座標
hold on; % 保留之前的圖
title('User6 data'); % 顯示標題
xlabel('bits'); % 顯示 x 座標的標籤
ylabel('data'); % 顯示 y 座標的標籤

subplot(8, 1, 7); % 分割視窗為 8x1，現在使用第七個
bar(U_7); % 描繪二維座標
hold on; % 保留之前的圖
title('User7 data'); % 顯示標題
xlabel('bits'); % 顯示 x 座標的標籤
ylabel('data'); % 顯示 y 座標的標籤

for i = 1:8
    for j = 1:8
        data(i,j) = U_1(i).*W_8(2,j)+U_2(i).*W_8(3,j)+U_3(i).*W_8(4,j)+U_4(i).*W_8(5,j)+U_5(i).*W_8(6,j)+U_6(i).*W_8(7,j)+U_7(i).*W_8(8,j)
    end
end

subplot(8, 1, 8); % 分割視窗為 8x1，現在使用第八個
bar(data); % 描繪二維座標
hold on; % 保留之前的圖
title('encode data'); % 顯示標題
xlabel('bits'); % 顯示 x 座標的標籤
ylabel('data'); % 顯示 y 座標的標籤

figure(2); % 第一個圖表視窗

for i = 1:8
    a(i)=sum(data(i,1:8).*W_8(2,1:8))/8;
end
subplot(8, 1, 1); % 分割視窗為 8x1，現在使用第一個
bar(a); % 描繪二維座標
hold on; % 保留之前的圖
title('decode data'); % 顯示標題
xlabel('bits'); % 顯示 x 座標的標籤
ylabel('data'); % 顯示 y 座標的標籤

for i = 1:8
    b(i)=sum(data(i,1:8).*W_8(3,1:8))/8;
end
subplot(8, 1, 2); % 分割視窗為 8x1，現在使用第二個
bar(b); % 描繪二維座標
hold on; % 保留之前的圖
title('decode data'); % 顯示標題
xlabel('bits'); % 顯示 x 座標的標籤
ylabel('data'); % 顯示 y 座標的標籤

for i = 1:8
    c(i)=sum(data(i,1:8).*W_8(4,1:8))/8;
end
subplot(8, 1, 3); % 分割視窗為 8x1，現在使用第三個
bar(c); % 描繪二維座標
hold on; % 保留之前的圖
title('decode data'); % 顯示標題
xlabel('bits'); % 顯示 x 座標的標籤
ylabel('data'); % 顯示 y 座標的標籤

for i = 1:8
    d(i)=sum(data(i,1:8).*W_8(5,1:8))/8;
end
subplot(8, 1, 4); % 分割視窗為 8x1，現在使用第四個
bar(d); % 描繪二維座標
hold on; % 保留之前的圖
title('decode data'); % 顯示標題
xlabel('bits'); % 顯示 x 座標的標籤
ylabel('data'); % 顯示 y 座標的標籤
for i = 1:8
    e(i)=sum(data(i,1:8).*W_8(6,1:8))/8;
end
subplot(8, 1, 5); % 分割視窗為 8x1，現在使用第五個
bar(e); % 描繪二維座標
hold on; % 保留之前的圖
title('decode data'); % 顯示標題
xlabel('bits'); % 顯示 x 座標的標籤
ylabel('data'); % 顯示 y 座標的標籤

for i = 1:8
    f(i)=sum(data(i,1:8).*W_8(7,1:8))/8;
end
subplot(8, 1, 6); % 分割視窗為 8x1，現在使用第六個
bar(f); % 描繪二維座標
hold on; % 保留之前的圖
title('decode data'); % 顯示標題
xlabel('bits'); % 顯示 x 座標的標籤
ylabel('data'); % 顯示 y 座標的標籤

for i = 1:8
    g(i)=sum(data(i,1:8).*W_8(8,1:8))/8;
end
subplot(8, 1, 7); % 分割視窗為 8x1，現在使用第七個
bar(g); % 描繪二維座標
hold on; % 保留之前的圖
title('decode data'); % 顯示標題
xlabel('bits'); % 顯示 x 座標的標籤
ylabel('data'); % 顯示 y 座標的標籤