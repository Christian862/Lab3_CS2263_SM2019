
# TODO: add targets to compile LinkedList.c

# TODO: add a target for each .input file in the Data directory to run the compiled LinkedList program with the tests in ./Data

# TODO: add a target that can run all the tests above.

# Test Cases
Test: test1 test2 test3

test1: Stack Data/test1.input Data/test1.expected
	./Stack < Data/test1.input > test1.result
	./TestPassed.sh test1.result Data/test1.expected

test2: Stack Data/test2.input Data/test2.expected
	./ArraySort < Data/test2.input > test2.result
	./TestPassed.sh test2.result Data/test2.expected

test3: Stack Data/test3.input Data/test3.expected
	./Stack < Data/test3.input > test3.result
	./TestPassed.sh test3.result Data/test3.expected

