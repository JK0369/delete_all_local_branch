#!/bin/bash

read -p "삭제에서 제외할 브랜치 이름을 입력하세요: " branch_name
read -p "$branch_name 을 제외한 모든 브랜치를 지우시겠습니까? (y/n)" answer

if [ "$answer" == "y" ]; then
  echo "Yes"
  cd bank_channel_ios
  git branch | grep -v "$branch_name" | xargs git branch -D
else
  echo "No"
fi
