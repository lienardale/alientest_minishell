#bin/bash
make
rm tests/bash.txt tests/us.txt tests/diff.txt tests/us_errors.txt tests/bash_errors.txt tests/diff_errors.txt
# touch tests/bash.txt tests/us.txt


# testing execve

./minishell tests/cat.sh 1>> tests/us.txt 2>> tests/us_errors.txt
bash tests/cat.sh >> tests/bash.txt 2>> tests/bash_errors.txt

./minishell tests/ls.sh 1>> tests/us.txt 2>> tests/us_errors.txt
bash tests/ls.sh >> tests/bash.txt 2>> tests/bash_errors.txt


# testing builtins

./minishell tests/echo.sh 1>> tests/us.txt 2>> tests/us_errors.txt
bash tests/echo.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt

./minishell tests/pwd.sh 1>> tests/us.txt 2>> tests/us_errors.txt
bash tests/pwd.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt

./minishell tests/cd.sh 1>> tests/us.txt 2>> tests/us_errors.txt
bash tests/cd.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt

./minishell tests/env.sh 1>> tests/us.txt 2>> tests/us_errors.txt
bash tests/env.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt

./minishell tests/export.sh 1>> tests/us.txt 2>> tests/us_errors.txt
bash tests/export.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt

./minishell tests/unset.sh 1>> tests/us.txt 2>> tests/us_errors.txt
bash tests/unset.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt

# ./minishell tests/exit.sh 1>> tests/us.txt 2>> tests/us_errors.txt
# bash tests/exit.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt


# testing special characters


./minishell tests/semi_colon.sh 1>> tests/us.txt 2>> tests/us_errors.txt
bash tests/semi_colon.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt

./minishell tests/quote.sh 1>> tests/us.txt 2>> tests/us_errors.txt
bash tests/quote.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt

./minishell tests/backslash.sh 1>> tests/us.txt 2>> tests/us_errors.txt
bash tests/backslash.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt

./minishell tests/pipe.sh 1>> tests/us.txt 2>> tests/us_errors.txt
bash tests/pipe.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt

./minishell tests/redir_in.sh 1>> tests/us.txt 2>> tests/us_errors.txt
bash tests/redir_in.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt

./minishell tests/redir_out.sh 1>> tests/us.txt  2>> tests/us_errors.txt
bash tests/redir_out.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt

./minishell tests/append.sh 1>> tests/us.txt  2>> tests/us_errors.txt
bash tests/append.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt

# ./minishell tests/redir_nb.sh 1>> tests/us.txt  2>> tests/us_errors.txt
# bash tests/redir_nb.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt

./minishell tests/parsing.sh 1>> tests/us.txt 2>> tests/us_errors.txt
bash tests/parsing.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt

./minishell tests/return.sh 1>> tests/us.txt 2>> tests/us_errors.txt
bash tests/return.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt


# testing signals

# ./minishell tests/signal.sh 1>> tests/us.txt 2>> tests/us_errors.txt
# bash tests/signal.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt


./minishell tests/roalvare.sh 1>> tests/us.txt 2>> tests/us_errors.txt
bash tests/roalvare.sh 1>> tests/bash.txt 2>> tests/bash_errors.txt


diff tests/us.txt tests/bash.txt
diff tests/us.txt tests/bash.txt > tests/diff.txt

diff tests/us_errors.txt tests/bash_errors.txt
diff tests/us_errors.txt tests/bash_errors.txt > tests/diff_errors.txt
