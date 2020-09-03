#bin/bash
cd ..
make
rm alientest_minishell/bash.txt alientest_minishell/us.txt alientest_minishell/diff.txt alientest_minishell/us_errors.txt alientest_minishell/bash_errors.txt alientest_minishell/diff_errors.txt

read -p 'Which test ?: ' test
./minishell alientest_minishell/$test.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt
bash alientest_minishell/$test.sh 1>> alientest_minishell/bash.txt 2>> alientest_minishell/bash_errors.txt

diff alientest_minishell/us.txt alientest_minishell/bash.txt
diff alientest_minishell/us.txt alientest_minishell/bash.txt > alientest_minishell/diff.txt

diff alientest_minishell/us_errors.txt alientest_minishell/bash_errors.txt
diff alientest_minishell/us_errors.txt alientest_minishell/bash_errors.txt > alientest_minishell/diff_errors.txt
