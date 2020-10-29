#bin/bash

ALL=( cat ls echo pwd cd env export unset exit semi_colon quote backslash pipe redir_in redir_out append redir_nb parsing return roalvare )
EXECVE=( cat ls )
BLT=( echo pwd cd env export unset exit )
PARSING=( semi_colon quote backslash pipe redir_in redir_out append redir_nb parsing return )
OTHER=( roalvare pcariou )
HARDCORE=( cd env pipe pwd redir )
LOGS=( bash us diff us_errors bash_errors diff_errors )

if [ "$(uname -s)" != "Linux" ]
	then
		RED="\033[91m"
		GREEN="\033[92m"
		YELLOW="\033[93m"
		BLUE="\033[94m"
		PURPLE="\033[95m"
		CYAN="\033[96m"
		WHITE="\033[97m"
	else
		RED="\e[91m"
		GREEN="\e[92m"
		YELLOW="\e[93m"
		BLUE="\e[94m"
		PURPLE="\e[95m"
		CYAN="\e[96m"
		WHITE="\e[97m"
fi

cd ..
make 1> /dev/null

clean()
{
    for log in ${LOGS[*]}
    do
        rm alientest_minishell/$log.txt 2> /dev/null
    done
}

do_diff()
{
    echo -en $RED
    diff alientest_minishell/us.txt alientest_minishell/bash.txt
    echo -en $WHITE
    diff alientest_minishell/us.txt alientest_minishell/bash.txt > alientest_minishell/diff.txt

    echo -en $RED
    diff alientest_minishell/us_errors.txt alientest_minishell/bash_errors.txt | grep -v ls | grep -v cat | grep -v - | grep -v c | grep -v a
    # diff alientest_minishell/us_errors.txt alientest_minishell/bash_errors.txt
    echo -en $WHITE
    diff alientest_minishell/us_errors.txt alientest_minishell/bash_errors.txt > alientest_minishell/diff_errors.txt
}

all_tests()
{
    for scr in ${ALL[*]} 
	do
		./minishell < alientest_minishell/$scr.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt
        bash < alientest_minishell/$scr.sh 1>> alientest_minishell/bash.txt 2>> alientest_minishell/bash_errors.txt
	done
}

execve()
{
    for scr in ${EXECVE[*]} 
	do
		./minishell < alientest_minishell/$scr.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt
        bash < alientest_minishell/$scr.sh 1>> alientest_minishell/bash.txt 2>> alientest_minishell/bash_errors.txt
	done
}

blt()
{
    for scr in ${BLT[*]} 
	do
		./minishell < alientest_minishell/$scr.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt
        bash < alientest_minishell/$scr.sh 1>> alientest_minishell/bash.txt 2>> alientest_minishell/bash_errors.txt
	done
}

parse()
{
    for scr in ${PARSING[*]} 
	do
		./minishell < alientest_minishell/$scr.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt
        bash < alientest_minishell/$scr.sh 1>> alientest_minishell/bash.txt 2>> alientest_minishell/bash_errors.txt
	done
}

hard()
{
    for scr in ${HARDCORE[*]} 
	do
		./minishell < alientest_minishell/hardcore_tests/${scr}_hardcore.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt
        bash < alientest_minishell/hardcore_tests/${scr}_hardcore.sh 1>> alientest_minishell/bash.txt 2>> alientest_minishell/bash_errors.txt
	done
}

one()
{
	./minishell < alientest_minishell/$1.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt
     bash < alientest_minishell/$1.sh 1>> alientest_minishell/bash.txt 2>> alientest_minishell/bash_errors.txt
}

# testing signals

# ./minishell alientest_minishell/signal.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt
# bash alientest_minishell/signal.sh 1>> alientest_minishell/bash.txt 2>> alientest_minishell/bash_errors.txt

clean


if [ -z "$1" ]; then
        echo -en $BLUE
        echo 'What do you want to test ?'
        echo -en $GREEN
        echo -n '- For all tests, type "all"
- For only execve tests, type "exec"
- For only builtins tests, type "blt"
- For only parsing tests, type "parse"
- For hardcore tests, type "hard"
- To test only one script, enter "one"
- To exit, enter "exit"'
        echo -e $WHITE
        read -p '> ' test
        if [ "$test" == "all" ]; then
            all_tests
            elif [ "$test" ==  "exec" ]
            then
                execve
            elif [ "$test" ==  "blt" ]
            then
                blt
            elif [ "$test" ==  "parse" ]
            then
                parse
            elif [ "$test" ==  "hard" ]
            then
                hard
            elif [ "$test" ==  "one" ]
            then
                echo -en $BLUE
                echo "Which one ?"
                echo -en $GREEN
                for scr in ${ALL[*]} 
	                do
                        echo " - $scr"
	                done
                # echo -en $BLUE
                # echo "Hardcore tests :"
                # echo -en $GREEN
                # for scr in ${HARDCORE[*]} 
	            #     do
                #         echo " - ${scr}_hardcore"
	            #     done
                echo -en $WHITE
                read -p '> ' test
                one "$test"
            elif [ "$test" ==  "exit" ]
            then
                exit
            fi
    else
        all_tests
    fi
if [ "$test" !=  "exit" ]
    then
        do_diff
    fi