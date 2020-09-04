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
echo lol >> srcs ; ls

# expected : bash: syntax error near unexpected token `newline'
# if in script : stops
# ls >

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

# /!\ All above is ok /!\

# echo coucou >0test.log;cat 0test.log
# echo test > ls >> ls >> ls ; echo test

# expexted : test\ntest\n
# echo test > ls >> ls >> ls ; echo test >> ls; cat ls
# rm ls


# # the last redir file is the one taken into account
# # the args concat themselves
# # if simple redir present for the final file it takes over append, but if it is for another file, append takes over
# >lol echo > test>lol>test>>lol>test mdr >lol test >test; cat test ; cat lol
#  >> lol >> lol > lol >> lol echo coucou; cat lol
# echo coucou >> lol >> lol >test >> lol ; cat lol
# rm lol test

# echo coucou > test0.log >> test0.log > test1.log >> test0.log ; cat -e test0.log
# echo coucou > test0.log >> test0.log > test1.log >> test0.log ; cat -e test0.log
# rm test0.log test1.log

# echo salut > lol >> lol > lol
# echo salut > lol >> lol >> lol
# echo salut >> lol > test >> lol




# cat Dockerfile 1> 0test.log
# cat nop.txt 2> error.txt

# ls efdjhgdf 2> test.log
# ls efdjhgdf 32> test.log
# ls efdjhgdf 1> test.log
# ls efdjhgdf 1>2 test.log
# ls efdjhgdf 0> test.log
# ls efdjhgdf -1> test.log
# ls efdjhgdf \1> test.log
# ls efdjhgdf '1'> test.log
# ls efdjhgdf "1"> test.log
# ls efdjhgdf 12> test.log
# ls efdjhgdf -1> test.log
# ls efdjhgdf 2147483647> test.log
# ls efdjhgdf -2147483648> test.log
# ls efdjhgdf 2147483648654565> test.log

# ls 2> test.log
# ls 32> test.log
# ls 1> test.log
# ls 1>2 test.log
# ls 0> test.log
# ls -1> test.log
# ls \1> test.log
# ls '1'> test.log
# ls "1"> test.log
# ls 12> test.log
# ls -1> test.log
# ls 2147483647> test.log
# ls -2147483648> test.log
# ls 2147483648654565> test.log

# 2> test.log ls sdfsdf
