
rm alientest_minishell/bash.txt alientest_minishell/us.txt alientest_minishell/diff.txt alientest_minishell/us_errors.txt alientest_minishell/bash_errors.txt alientest_minishell/diff_errors.txt
# touch alientest_minishell/bash.txt alientest_minishell/us.txt


# testing execve

./minishell alientest_minishell/cat.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt

./minishell alientest_minishell/ls.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt

# testing builtins

./minishell alientest_minishell/echo.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt

./minishell alientest_minishell/pwd.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt

./minishell alientest_minishell/cd.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt

./minishell alientest_minishell/env.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt

./minishell alientest_minishell/export.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt

./minishell alientest_minishell/unset.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt

./minishell alientest_minishell/exit.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt


# testing special characters


./minishell alientest_minishell/semi_colon.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt

./minishell alientest_minishell/quote.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt

./minishell alientest_minishell/backslash.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt

./minishell alientest_minishell/pipe.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt

./minishell alientest_minishell/redir_in.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt

./minishell alientest_minishell/redir_out.sh 1>> alientest_minishell/us.txt  2>> alientest_minishell/us_errors.txt

./minishell alientest_minishell/append.sh 1>> alientest_minishell/us.txt  2>> alientest_minishell/us_errors.txt

./minishell alientest_minishell/redir_nb.sh 1>> alientest_minishell/us.txt  2>> alientest_minishell/us_errors.txt

./minishell alientest_minishell/parsing.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt

./minishell alientest_minishell/return.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt


# testing signals

# ./minishell alientest_minishell/signal.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt
# bash alientest_minishell/signal.sh 1>> alientest_minishell/bash.txt 2>> alientest_minishell/bash_errors.txt


./minishell alientest_minishell/roalvare.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt


# testing stdin

./minishell < alientest_minishell/echo.sh
./minishell < alientest_minishell/ls.sh
