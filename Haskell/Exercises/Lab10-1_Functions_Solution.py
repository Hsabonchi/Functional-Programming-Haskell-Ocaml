""" Lab 10: Part 1: Python Functions [7 POINTS] """

"""
Please solve the problems with the following steps:
-- (1) Write your code between the line "# YOUR CODE START HERE" and the line "# YOUR CODE END HERE" after each problem description.
    -- Please use the function NAME given in the corresponding problem description.
        We will use a grading program to automatically load and grade your submission.
        If you do NOT use the specified function name, the grading program can NOT load
        your submission and you will get ZERO for this assignment.
-- (2) Submit the MODIFIED file (with your code) in Canvas.
    -- Please do NOT change the file name.

Please do all of these in Python 3, NOT Python 2. Your submitted file MUST be compilable
(i.e. NO compiling errors) in Python 3, otherwise you will get ZERO.
If you have some uncompilable code, I recommend COMMENTing them. 

After writing your code, you should figure out some test cases (put your test code between
the line "# YOUR TEST START HERE" and the line "# YOUR TEST END HERE" after the corresponding
implementation) and TEST your implementation thoroughly.
The testing procedure is as follows:
-- Open a command prompt and locate to the directory/folder of THIS script/file.
-- In the command prompt, type $python THISFILENAME.py$ OR $python3 THISFILENAME.py$ to
    run the script, you should see the print outputs of the tests.
"""


"""
Q1 [2 POINTS]:
Write a RECURSIVE function named $compute1$ to calculate m(i) = 1 + 1/2 + 1/3 + ... + 1/i,
where i is a positive integer.

e.g. $compute1(1)$ returns 1
e.g. $compute1(2)$ returns 1.5
e.g. $compute1(3)$ returns 1.8333333333333333
Notes:
-- The floating-point numbers' precision is machine dependent.
-- Hence, your running results may NOT be exactly same with the above results,
    but with a small error.
"""
# YOUR CODE START HERE
def compute1(n):
    if n == 1:
        return 1
    return 1/n + compute1(n - 1)
# YOUR CODE END HERE

# YOUR TEST START HERE
print("Test Q1:")
print("compute1(1) returns " + str(compute1(1)))
print("compute1(2) returns " + str(compute1(2)))
print("compute1(3) returns " + str(compute1(3)))
print("compute1(4) returns " + str(compute1(4)))
print("compute1(5) returns " + str(compute1(5)))
# YOUR TEST END HERE


"""
Q2 [2 POINTS]:
Write a RECURSIVE function named $compute2$ to calculate m(i) = 1/2 + 2/3 + ... + i/(i + 1),
where i is a positive integer.

e.g. $compute2(1)$ returns 0.5
e.g. $compute2(2)$ returns 1.1666666666666665
e.g. $compute2(3)$ returns 1.9166666666666665
Notes:
-- The floating-point numbers' precision is machine dependent.
-- Hence, your running results may NOT be exactly same with the above results,
    but with a small error.
"""
# YOUR CODE START HERE
def compute2(n):
    if n == 1:
        return 1/2
    return n/(1 + n) + compute2(n - 1)
# YOUR CODE END HERE

# YOUR TEST START HERE
print("\nTest Q2:")
print("compute2(1) returns " + str(compute2(1)))
print("compute2(2) returns " + str(compute2(2)))
print("compute2(3) returns " + str(compute2(3)))
print("compute2(4) returns " + str(compute2(4)))
print("compute2(5) returns " + str(compute2(5)))
# YOUR TEST END HERE


"""
Q3 [3 POINTS]:
Write a RECURSIVE function named $max_sort$ that takes a list of integers and
sorts the list in the INCREASING order with the sorting algorithm as follows.
-- find the max and put it at the end of the list
-- then recursively sort the remainder of the list

e.g. $max_sort([])$ returns []
e.g. $max_sort([1])$ returns [1]
e.g. $max_sort([3, 1, 5, 1])$ returns [1, 1, 3, 5]

Hints:
-- You can create/use any helper functions you need, provide that you wrote it
    yourself, or it's built into Python.
"""
# References:
# -- Python Standard Library Built-in Functions: https://docs.python.org/3/library/functions.html
# -- Built-in Functions for lists: https://docs.python.org/3/tutorial/datastructures.html#more-on-lists
# YOUR CODE START HERE
def max_sort(nums):
    if len(nums) <= 1:
        return nums
    mx = max(nums)
    nums.remove(mx)
    return max_sort(nums) + [mx]
# YOUR CODE END HERE

# YOUR TEST START HERE
print("\nTest Q3:")
print("max_sort([]) returns " + str(max_sort([])))
print("max_sort([1]) returns " + str(max_sort([1])))
print("max_sort([3, 1, 5, 1]) returns " + str(max_sort([3, 1, 5, 1])))
print("max_sort([5, 4, 3, 2]) returns " + str(max_sort([5, 4, 3, 2])))
print("max_sort([2, 3, 4, 5]) returns " + str(max_sort([2, 3, 4, 5])))
# YOUR TEST END HERE
