Welcome in Files

#!/bin/bash -x
read -p "Enter the coin fliping time : " flipTime
i=1
countHHH=0
countHHT=0
countHTT=0
countTTT=0
countTTH=0
countTHH=0
countTHT=0
countHTH=0
declare -A flipCoinDict
while [ $i -ne $flipTime ]
do
          randomTime=$(( (RANDOM%4)+1 ))
          case $randomTime in

          1)
                  flipCoinDict[$i]="HHH"
                  ((countHHH++))
                      ;;
          2)
                  flipCoinDict[$i]="HHT"
                  ((countHHT++))
                         ;;
          3)
                  flipCoinDict[$i]="HTT"
                  ((countHTT++))
                      ;;
          4)
                  flipCoinDict[$i]="TTT"
                  ((countTTT++))
                       ;;
          5)
                  flipCoinDict[$i]="TTH"
                  ((countTTH++))
                      ;;
          6)
                  flipCoinDict[$i]="THH"
                  ((countTHH++))
                         ;;
          7)
                  flipCoinDict[$i]="THT"
                  ((countTHT++))
                      ;;
          8)
                  flipCoinDict[$i]="HTH"
                  ((countHTH++))
                       ;;

          *)
                   echo "No value is pending"
                        ;;
                     esac
          ((i++))
done
dupletHHHPer=`echo $countHHH $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
dupletHHTPer=`echo $countHHT $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
dupletHTTPer=`echo $countHTT $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
dupletTTTPer=`echo $countTTT $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
dupletTTHPer=`echo $countTTH $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
dupletTHHPer=`echo $countTHH $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
dupletTHTPer=`echo $countTHT $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
dupletHTHPer=`echo $countHTH $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
count=0
arr1[((count++))]=$((dupletHHHPer))
arr1[((count++))]=$((dupletHHTPer))
arr1[((count++))]=$((dupletHTTPer))
arr1[((count++))]=$((dupletTTTPer))
arr1[((count++))]=$((dupletTThPer))
arr1[((count++))]=$((dupletTHHPer))
arr1[((count++))]=$((dupletTHTPer))
arr1[((count++))]=$((dupletHTHPer))
echo ${arr1[@]}
