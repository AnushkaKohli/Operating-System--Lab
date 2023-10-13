# 8. Ramesh’s basic salary (BASIC) is input through keyboard. His dearness allowance (DA) is 52% of BASIC. House rent allowance (HRA) is 15% BASIC. Contributory provident fund is 12% of (BASIC + DA). Write a shell script to calculate his gross salary and take home salary using the following formula:Gross salary = BASIC + DA + HRA + (BASIC + DA) * 0.12 Take home salary = BASIC + DA + HRA - (BASIC + DA) * 0.12

echo "Enter the basic salary"
read basicSalary
da=`expr $basicSalary \* 52 / 100`
hra=`expr $basicSalary \* 15 / 100`
pf=`expr $basicSalary + $da \* 12 / 100`
grossSalary=`expr $basicSalary + $da + $hra + $pf`  
takeHomeSalary=`expr $basicSalary + $da + $hra - $pf`
echo "Gross salary = $grossSalary"
echo "Take home salary = $takeHomeSalary"
