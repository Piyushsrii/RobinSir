Welcome in Files

#!/bin/bash -x
i=1
countH=0
countT=0
declare -A flipCoinDict
declare -A flipCoinDict1
while [ $i -ne $flipTime ]
do
          randomTime=$(( (RANDOM%2)+1 ))
          case $randomTime in

          1)
                  flipCoinDict[$i]="H"
                  ((countH++))
                      ;;
          2)
                  flipCoinDict[$i]="T"
                  ((countT++))
                         ;;
          *)
                   echo "No value is pending"
                        ;;
                     esac
          ((i++))
done
dupletHPer=`echo $countH $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
dupletTPer=`echo $countT $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
count=0
arr[((count++))]=$((dupletHPer))
arr[((count++))]=$((dupletTPer))
echo ${arr[@]}

countHH=0
countHT=0
countTH=0
countTT=0
sorting=0;
declare -A flipCoinDict
while [ $i -ne $flipTime ]
do
          randomTime=$(( (RANDOM%4)+1 ))
          case $randomTime in

          1)
                  flipCoinDict[$i]="HH"
                  ((countHH++))
                      ;;
          2)
                  flipCoinDict[$i]="HT"
                  ((countHT++))
                         ;;
          3)
                  flipCoinDict[$i]="TT"
                  ((countTT++))
                      ;;
          4)
                  flipCoinDict[$i]="TH"
                  ((countHH++))
                       ;;
          *)
                   echo "No value is pending"
                        ;;
                     esac
          ((i++))
done
dupletHHPer=`echo $countHH $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
dupletHTPer=`echo $countHT $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
dupletTTPer=`echo $countTT $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
dupletTHPer=`echo $countTH $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1 }'`
count=0
arr1[((count++))]=$((dupletHHPer))
arr1[((count++))]=$((dupletHTPer))
arr1[((count++))]=$((dupletTTPer))
arr1[((count++))]=$((dupletTHPer))
echo ${arr1[@]}

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
arr2[((count++))]=$((dupletHHHPer))
arr2[((count++))]=$((dupletHHTPer))
arr2[((count++))]=$((dupletHTTPer))
arr2[((count++))]=$((dupletTTTPer))
arr2[((count++))]=$((dupletTThPer))
arr2[((count++))]=$((dupletTHHPer))
arr2[((count++))]=$((dupletTHTPer))
arr2[((count++))]=$((dupletHTHPer))
echo ${arr2[@]}
AllFlippingCoinSorted=$(printf '%s\n' "${arr[@]}" "${arr1[@]}" "${arr2[@]}" | sort -n )
