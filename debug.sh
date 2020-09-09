# ALL ABOVE THIS IS OK

# /bin/lol;echo $?
# /bin/ls/lol;echo $?
# ./srcs;echo $?
# README.md;echo $?
# cat < Reckkt;echo $
# exit | echo test;echo $?
# echo test | exit;echo $?

        # # should not exit
# exit 2 sad 15 asdf a5s 
# # should exit
# exit sad 6a sd sd

	# exit status pb
# ls -Z

# wrong error msg -> tries to use cd if a path is entered without a cmd
# /bin/ls/lol

# wrong error msg
# ./srcs
# README.md

# exits instead of not exiting
# echo test | exit
# exit | echo test

# exit 1 2
# check in VM if exits or no (exits in 3.2, does not in 5.0)
# echo $?

# pb prompt
# echo \
# echo "
# echo '


# ps -ef | grep "minishell" | grep -v 'grep' | awk '{print $2}' | xargs kill
# ps -ef | grep ./minishell | grep -v 'grep' | awk '{print $2}' | xargs kill
# ps -ef | grep ./minishell | grep -v 'grep' | cut -b 7,8,9,10,11 | xargs kill

# echo lol; echo test | | wc


# affiche le prompt instead of not + multiple prompts at end of cmd
# ./minishell < alientest_minishell/echo.sh