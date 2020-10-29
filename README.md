# alientest_minishell

clone into your minishell repo without changing its name
cd alientest_minishell

to test norme :
    'bash norme.sh'

to run tests : 
    'bash run.sh' if you want to see all the options
    'bash test.sh' if you know which test you want to run

diffs with bash will be printed in stdout & in diff.txt
bash stdout -> bash.txt
minishell stdout -> us.txt
bash stderr -> bash_errors.txt
minishell stderr -> us_errors.txt

/!\ Work in progress
- Does not test return or exit values very extensively
- Does not test signals