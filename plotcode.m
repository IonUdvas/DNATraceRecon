len1 = data1{:,1};
trans1 = data1{:,2};
prob1 = data1{:,3};
per1 = data1{:,4};
tt1 = data1{:,5};

len2 = data2{:,1};
trans2 = data2{:,2};
prob2 = data2{:,3};
per2 = data2{:,4};
tt2 = data2{:,5};

len3 = data3{:,1};
trans3 = data3{:,2};
prob3 = data3{:,3};
per3 = data3{:,4};
tt3 = data3{:,5};

len4 = data4{:,1};
trans4 = data4{:,2};
prob4 = data4{:,3};
per4 = data4{:,4};
tt4 = data4{:,5};

len5 = data5{:,1};
trans5 = data5{:,2};
prob5 = data5{:,3};
per5 = data5{:,4};
tt5 = data5{:,5};

plot(len1,per1)
ylim([-5 100])
xlabel('No. of transmits')
ylabel('% Error')
hold on
plot(len2,per2)
plot(len3,per3)
plot(len4,per4)
plot(len5,per5)

legend({'0.1%', '0.3%', '1.0%', '3.0%', '10.0%'},'Location','northwest')