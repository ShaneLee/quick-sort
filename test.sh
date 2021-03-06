#!/usr/bin/env bash 
test_arr="1,5,4,3,7,6,2,9,8,10"
expected="[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]"
expected2="1, 2, 3, 4, 5, 6, 7, 8, 9, 10"

test_sort() {
  result=$(eval "$1 ${test_arr[@]} 2>&1")
  if [ "$result" == "$expected" ]  || [  "$result" == "$expected2" ]; then
    echo "$2 Test passed"
  else
    echo "$2 Test failed, expected: $expected got: $result"
  fi
}

test_sort "python3 python/quick-sort.py" "Python"
test_sort "scala -deprecation scala/quick-sort.scala" "Scala"
