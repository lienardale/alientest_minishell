echo
echo "--- TESTS EXIT ---"
echo

echo "ls hahsda
exit" > exit_minishell.sh
./minishell exit_minishell.sh
echo $?

echo "ls
exit" > exit_minishell.sh
./minishell exit_minishell.sh
echo $?

echo "" > exit_minishell.sh
./minishell exit_minishell.sh
echo $?

echo "echo coucou" > exit_minishell.sh
./minishell exit_minishell.sh
echo $?