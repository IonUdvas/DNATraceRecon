length = data{1:24,1};

per1 = data{1:24,3};
per2 = data{25:48,3};
per3 = data{49:72,3};
per4 = data{73:96,3};
per5 = data{97:120,3};

tt1 = data{1:24,4};
tt2 = data{25:48,4};
tt3 = data{49:72,4};
tt4 = data{73:96,4};
tt5 = data{97:120,4};

plot(length, tt1, 'ro-')
hold on
xlabel('Length of transmittedString')
ylabel('Time Taken')
title('Time Taken vs Length')
plot(length, tt2, 'go-')
plot(length, tt3, 'ko-')
plot(length, tt4, 'bo-')
plot(length, tt5, 'mo-')
legend('0.1%','0.3%','1.0%','3.0%','10.0%')