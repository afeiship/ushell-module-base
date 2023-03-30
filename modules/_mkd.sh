#!/usr/bin/env bash

cd $HOME/alo7i/daily-works/src/$(date +%Y)/$(date +%Y-%m)

# this weekday
start_date=$(date +"%Y-%m-%d")

# 循环生成七天的日期
for ((i=0; i<7; i++)); do
  date=$(date -d "$start_date +$i day" +"%Y-%m-%d")

  # if date is in this month
  if [[ $date =~ $(date +"%Y-%m") ]]; then
    if [[ -f $date.md ]]; then
      continue
    fi

    # check if date is friday
    if [[ $(date -d $date +%u) -eq 5 ]]; then
      printf "# $date \n\n# weekly\n" >> ${date}_weekly.md
    else
      echo "# $date" >> $date.md
    fi
  fi

done

cd -

unset start_date;
