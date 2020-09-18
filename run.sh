#bin/bash

# bash norme.sh
bash all_tests.sh

errors=$(cat diff.txt)
if [ -z "$errors" ] ; then
	echo "All tests ok."
else
	echo "Error(s), check diff.txt to see details."
fi

errors=$(cat diff_errors.txt)
if [ -z "$errors" ] ; then
	echo "All error tests ok."
else
	echo "Diffs in error output, check diff_errors.txt to see details."
fi
# bash valgrind.sh