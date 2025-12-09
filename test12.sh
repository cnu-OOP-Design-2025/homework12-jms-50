 #!/bin/bash

g++ main.cpp -o main #2> /dev/null
./main > "Test/output1.txt"

if ! diff "Test/output1.txt" "Test/expected1.txt" > /dev/null; then
    echo "Test 1: FAIL"
else
    echo "Test 1: PASS"
fi

if ! diff "Test/output2.txt" "Test/expected2.txt" > /dev/null; then
    echo "Test 2: FAIL"
else
    echo "Test 2: PASS"
fi

