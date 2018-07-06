#!/bin/sh
if [ -f autoCompletion ]
then
    echo -e "Launch Unit Test..."
else
    echo -e "autoComplection binary not found !"
    exit
fi
./autoCompletion exampleDict 2>/dev/null 1>.log < test1
cmp .log .test1result 1>.cmplog
if [ -s .cmplog ]
then
    echo -e "[TEST 1] \033[31mKO\033[0m"
else
    echo -e "[TEST 1] \033[32mPASSED\033[0m"
fi
./autoCompletion exampleDict 2>/dev/null 1>.log < test2
cmp .log .test2result 1>.cmplog
if [ -s .cmplog ]
then
    echo -e "[TEST 2] \033[31mKO\033[0m"
else
    echo -e "[TEST 2] \033[32mPASSED\033[0m"
fi
./autoCompletion exampleDict 2>/dev/null 1>.log < test3
cmp .log .test3result 1>.cmplog
if [ -s .cmplog ]
then
    echo -e "[TEST 3] \033[31mKO\033[0m"
else
    echo -e "[TEST 3] \033[32mPASSED\033[0m"
fi
./autoCompletion exampleDict 2>/dev/null 1>.log < test4
cmp .log .test4result 1>.cmplog
if [ -s .cmplog ]
then
    echo -e "[TEST 4] \033[31mKO\033[0m"
else
    echo -e "[TEST 4] \033[32mPASSED\033[0m"
fi
./autoCompletion exampleDict 2>/dev/null 1>.log < test5
cmp .log .test5result 1>.cmplog
if [ -s .cmplog ]
then
    echo -e "[TEST 5] \033[31mKO\033[0m"
else
    echo -e "[TEST 5] \033[32mPASSED\033[0m"
fi
./autoCompletion exampleDict 2>/dev/null 1>.log < test6
cmp .log .test6result 1>.cmplog
if [ -s .cmplog ]
then
    echo -e "[TEST 6] \033[31mKO\033[0m"
else
    echo -e "[TEST 6] \033[32mPASSED\033[0m"
fi
./autoCompletion exampleDict 2>/dev/null 1>.log < test7
cmp .log .test7result 1>.cmplog
if [ -s .cmplog ]
then
    echo -e "[TEST 7] \033[31mKO\033[0m"
else
    echo -e "[TEST 7] \033[32mPASSED\033[0m"
fi
./autoCompletion exampleDict 2>/dev/null 1>.log < test8
cmp .log .test8result 1>.cmplog
if [ -s .cmplog ]
then
    echo -e "[TEST 8] \033[31mKO\033[0m"
else
    echo -e "[TEST 8] \033[32mPASSED\033[0m"
fi
./autoCompletion exampleDict 2>/dev/null 1>.log < test9
cmp .log .test9result 1>.cmplog
if [ -s .cmplog ]
then
    echo -e "[TEST 9] \033[31mKO\033[0m"
else
    echo -e "[TEST 9] \033[32mPASSED\033[0m"
fi
rm -rf .log
rm -rf .cmplog
