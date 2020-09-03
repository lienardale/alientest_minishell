# alientest_minishell

/!\ DOESN'T IF YOUR MINISHELL DOES NOT TAKE *.sh FILES AS ARGUMENT /!\

exemple : ./minishell test.sh

clone into your minishell repo without changing its name
cd alientest_minishell

to run all tests : bash run.sh

to run one test : bash test.sh

diffs with bash will be printed in stdout & in diff.txt
bash stdout -> bash.txt
minishell stdout -> us.txt
bash stderr -> bash_errors.txt
minishell stderr -> us_errors.txt

/!\ Work in progress
- Does not test return or exit values
- Does not test signals
- Does not test leaks