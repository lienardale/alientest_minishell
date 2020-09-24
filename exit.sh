echo
echo "--- TESTS EXIT ---"
echo


echo test | exit
exit | echo test
exit 165411651651615132132 | echo test
exit asdas | echo test
exit 1 2 3 | echo test

echo test| exit
echo test| exit 165411651651615132132
echo test | exit asdas
echo test | exit 1 2 3
echo test | exit 1 a 2 3

cd pouet ; exit ;

# echo "ls hahsda
# exit" > exit_minishell.sh
# ./minishell exit_minishell.sh
# echo $?

# echo "ls
# exit" > exit_minishell.sh
# ./minishell exit_minishell.sh
# echo $?

# echo "" > exit_minishell.sh
# ./minishell exit_minishell.sh
# echo $?

# echo "echo coucou" > exit_minishell.sh
# ./minishell exit_minishell.sh
# echo $?