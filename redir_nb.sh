echo
echo "--- TEST NB> ---"
echo

# expected to redir output
export > 0test.log
cat 0test.log | grep 'USER'
rm 0test.log

# expected : bash: ../alientest_minishell/test.log: No such file or directory
echo coucou > ../alientest_minishell/test.log ; ls
echo coucou >> ../alientest_minishell/test.log ; ls
# expected : is a directory
echo lol > srcs ; ls
echo lol > srcs
# echo lol >> srcs ; ls


# cree le 0 et le 3
echo coucou > 0test.log 1test.log 2test.log > 3test.log
# rien
cat 0test.log
# coucou 1test.log 2test.log
cat 3test.log
rm 0test.log 3test.log

# create lol and redir echo in it. Output : test lol
> lol echo test lol; cat lol
rm lol

cat Dockerfile 1> 0test.log
rm 0test.log
cat nop.txt 2> error.txt
rm error.txt

ls efdjhgdf 2> test.log
ls efdjhgdf 32> test.log
ls efdjhgdf 1> test.log
ls efdjhgdf 0> test.log
ls efdjhgdf '1'> test.log
ls efdjhgdf "1"> test.log
ls efdjhgdf 12> test.log
ls 2> test.log
ls 32> test.log
ls 1> test.log
ls 0> test.log
ls '1'> test.log
ls "1"> test.log
ls 12> test.log

2> test.log ls sdfsdf
\2> test.log ls sdfsdf


echo coucou >0test.log;cat 0test.log
rm 0test.log
echo test > ls >> ls ; echo test
rm ls
# expexted : test\ntest\n
echo test > ls >> ls >> ls ; echo test >> ls; cat ls
rm ls

rm test.log

# expected : bash: syntax error near unexpected token `newline'
# if in script : stops
ls >