data50 = data{1633:1836,:};
data50 = sortrows(data50,3);

perdata = data50(1:17,[2 4 5]);
for c = 2:12
    d = (c-1)*17+1;
    e = c*17;
    temp = data50(d:e,[2 4 5]);
    perdata = cat(3,perdata,temp)
end

subplot(1,2,1)
plot(perdata(:,1,1),perdata(:,2,1))
hold on
xlabel('No. of transmits')
ylabel('Percentage Error')
title('Transmits v/s %-error')
for c = 2:12
    plot(perdata(:,1,c),perdata(:,2,c))
end
legend('0.1%','0.3%', '1.0%','1.5%','2.0%','2.5%','3.0%','3.5%','4.0%','4.5%','5.0%','10%')
hold off

subplot(1,2,2)
plot(perdata(:,1,1),perdata(:,3,1))
hold on
xlabel('No. of transmits')
ylabel('Time Taken(s)')
title('Transmits v/s Time Taken')
for c = 2:12
    plot(perdata(:,1,c),perdata(:,3,c))
end
legend('0.1%','0.3%', '1.0%','1.5%','2.0%','2.5%','3.0%','3.5%','4.0%','4.5%','5.0%','10%')
hold off