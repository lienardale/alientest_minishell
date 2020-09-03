echo "--- TESTS ECHO ---"
echo coucou
echo -n coucou
echo "coucou"
echo -n "coucou"
echo "coucou" "bonjour"
echo 'coucou' bonjour
echo "coucou
1
2
3
4
5
6
7
8
9
10
11
12"
echo

# expected :
# "test1
# test2"
echo test1\
; echo test2



# bash trims the spaces when they are not escaped
echo -n 2 : \	\	coucou
echo -n 2 : 		coucou
