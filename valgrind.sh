#bin/bash

cd ..

make
read -p 'Which test ?: ' test

if [ "$test" = "all" ] ; then
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/cat.sh 2> leak.log ; echo CAT > all_leaks.log  ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/ls.sh 2>> leak.log ; echo LS >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/echo.sh 2>> leak.log ; echo ECHO >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/pwd.sh 2>> leak.log ; echo PWD >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/cd.sh 2>> leak.log ; echo CD >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/env.sh 2>> leak.log ; echo ENV >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/export.sh 2>> leak.log ; echo EXPORT >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/unset.sh 2>> leak.log ; echo UNSET >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/exit.sh 2>> leak.log ; echo EXIT >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/semi_colon.sh 2>> leak.log ; echo SEMICOLON >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/quote.sh 2>> leak.log ; echo QUOTE >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/backslash.sh 2>> leak.log ; echo BKSLH >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/pipe.sh 2>> leak.log ; echo PIPE >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/redir_in.sh 2>> leak.log ; echo REDIN >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/redir_out.sh 2>> leak.log ; echo REDOUT >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/append.sh 2>> leak.log ; echo APPEND >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/redir_nb.sh 2>> leak.log ; echo REDNB >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/parsing.sh 2>> leak.log ; echo PARSING >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/return.sh 2>> leak.log ; echo RETURN >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/roalvalre.sh 2>> leak.log ; echo ROALVARE >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell < alientest_minishell/echo.sh 2>> leak.log ; echo STDIN1 >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell < alientest_minishell/ls.sh 2>> leak.log ; echo STDIN2 >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell test/backslash.sh 2>> leak.log ; echo ERROR1 >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	echo >> all_leaks.log
	echo ----- ----- >> all_leaks.log
	echo >> all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/error.sh 2>> leak.log ; echo ERROR2 >> all_leaks.log ; tail leak.log | grep -v minishell | grep -v error >> all_leaks.log
	tail all_leaks.log
elif [ -n "$test" ] ; then
	valgrind --leak-check=full --show-leak-kinds=all ./minishell alientest_minishell/$test.sh 2> leaks.log
	tail leaks.log
else
	valgrind --leak-check=full --show-leak-kinds=all ./minishell 2> leaks.log
	tail leaks.log
fi
