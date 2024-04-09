#!/bin/bash
chmod + maze.c

echo -n "Test 1: Test the overmuch number of command line arguments"
./maze TestData/test1.txt 10 10 10 < Input/operationsFile1.txt > tmp
if grep -q "ERROR: The number of command line arguments is not correct" tmp;
then
    echo -e "\e[32m PASS \e[0m"
else
    echo -e "\e[31m FAIL \e[0m"
fi

echo -n "Test 2: Test the too little number of command line arguments"
./maze 10 < Input/operationsFile2.txt > tmp
if grep -q "ERROR: The number of command line arguments is not correct" tmp;
then
    echo -e "\e[32m PASS \e[0m"
else
    echo -e "\e[31m FAIL \e[0m"
fi

echo -n "Test 3: Test the uncorrect Filename of maze"
./maze TestData/test0.txt 10 10 < Input/operationsFile3.txt > tmp
if grep -q "ERROR: The file is not exist" tmp;
then
    echo -e "\e[32m PASS \e[0m"
else
    echo -e "\e[31m FAIL \e[0m"
fi

echo -n "Test 4: Test the invalid data type"
./maze TestData/test4.txt 10.0 10 < Input/operationsFile4.txt > tmp
if grep -q "ERROR: The arguments of width and height are not valid" tmp;
then
    echo -e "\e[32m PASS \e[0m"
else
    echo -e "\e[31m FAIL \e[0m"
fi

echo -n "Test 5: Test the invalid data type"
./maze TestData/test5.txt 3 10 < Input/operationsFile5.txt > tmp
if grep -q "ERROR: The arguments of width and height are not valid" tmp;
then
    echo -e "\e[32m PASS \e[0m"
else
    echo -e "\e[31m FAIL \e[0m"
fi

echo -n "Test 6: Test the invalid data type"
./maze TestData/test6.txt 10 101 < Input/operationsFile6.txt > tmp
if grep -q "ERROR: The arguments of width and height are not valid" tmp;
then
    echo -e "\e[32m PASS \e[0m"
else
    echo -e "\e[31m FAIL \e[0m"
fi

# echo -n "Test 7: Test missing point of S or E"
# ./maze TestData/test7.txt 10 10 < Input/operationsFile7.txt > tmp
# if grep -q "ERROR: The map is not valid" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 8: The maze is not a rectangle (less)"
# ./maze TestData/test8.txt 10 10 < Input/operationsFile8.txt > tmp
# if grep -q "ERROR: The map is not valid" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 9: The invalid symbol in the maze"
# ./maze TestData/test9.txt 10 10 < Input/operationsFile9.txt > tmp
# if grep -q "ERROR: The map is not valid" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 10: Successfully reached the end of the maze"
# ./maze TestData/test10.txt 10 10 < Input/operationsFile10.txt > tmp
# if grep -q "Winner Winner, Chicken dinner! -Yuk1 wish you happy every day" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 11: Encountered a wall while moving"
# ./maze TestData/test11.txt 10 10 < Input/operationsFile11.txt > tmp
# if grep -q "oops! This step may have hit a snag.Please try again" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 12: A boundary is encountered while moving"
# ./maze TestData/test12.txt 10 10 < Input/operationsFile12.txt > tmp
# if grep -q "oops! This step may have hit a snag.Please try again" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 13: The game continues after encountering a snag"
# ./maze TestData/test13.txt 10 10 < Input/operationsFile13.txt > tmp
# if grep -q "Winner Winner, Chicken dinner! -Yuk1 wish you happy every day" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 14: Check the map"
# ./maze TestData/test14.txt 10 10 < Input/operationsFile14.txt > tmp
# if grep -q "Winner Winner, Chicken dinner! -Yuk1 wish you happy every day" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 15: Check Input is case insensitive"
# ./maze TestData/test15.txt 10 10 < Input/operationsFile15.txt > tmp
# if grep -q "Winner Winner, Chicken dinner! -Yuk1 wish you happy every day" tmp && grep -q "This is the maze" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 16: Invalid operation input"
# ./maze TestData/test16.txt 10 10 < Input/operationsFile16.txt > tmp
# if grep -q "The operation is not valid, Please change it" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 17: Overmuch operational inputs after reaching the end point"
# ./maze TestData/test17.txt 10 10 < Input/operationsFile17.txt > tmp
# if grep -q "Winner Winner, Chicken dinner! -Yuk1 wish you happy every day" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 18: Too little operational inputs before reaching the end point"
# ./maze TestData/test18.txt 50 50 < Input/operationsFile18.txt > tmp
# if grep -q "oops! Please add operations" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 19: End unreachable"
# ./maze TestData/test19.txt 10 10 < Input/operationsFile19.txt > tmp
# if grep -q "oops! Please add operations" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 20: Boundary case with length and width of 5 (Successfully)"
# ./maze TestData/test20.txt 5 5 < Input/operationsFile20.txt > tmp
# if grep -q "Winner Winner, Chicken dinner! -Yuk1 wish you happy every day" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 21: Boundary case with length and width of 5 (Unuccessfully)"
# ./maze TestData/test21.txt 5 5 < Input/operationsFile21.txt > tmp
# if grep -q "oops! Please add operations" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 22: Boundary case with length and width of 100 (Successfully)"
# ./maze TestData/test22.txt 100 100 < Input/operationsFile22.txt > tmp
# if grep -q "Winner Winner, Chicken dinner! -Yuk1 wish you happy every day" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 23: Boundary case with length and width of 100 (Unuccessfully)"
# ./maze TestData/test23.txt 100 100 < Input/operationsFile23.txt > tmp
# if grep -q "oops! Please add operations" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 24: Repeatable S or E points"
# ./maze TestData/test24.txt 10 10 < Input/operationsFile24.txt > tmp
# if grep -q "ERROR: The map is not valid" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 25: Test the uncorrect Filename of operation"
# ./maze TestData/test25.txt 10 10 < Input/operationsFile25.txt > tmp
# if grep -q "ERROR: The operation file is not exist" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 26: The maze is not a rectangle (more)"
# ./maze TestData/test26.txt 10 10 < Input/operationsFile26.txt > tmp
# if grep -q "ERROR: The map is not valid" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi

# echo -n "Test 27: Check the maze before moving"
# ./maze TestData/test27.txt 10 10 < Input/operationsFile27.txt > tmp
# if grep -q "ERROR: The map is not valid" tmp;
# then
#     echo -e "\e[32m PASS \e[0m"
# else
#     echo -e "\e[31m FAIL \e[0m"
# fi