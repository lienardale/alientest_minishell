cd ..
~/.norminette/norminette.rb */*.c */*.h */*/*.c */*/*.h > norme.log
errors=$(cat norme.log | grep Error)
if [ -z "$errors" ] ; then
	echo "No norme error."
else
	echo "Norm error(s), check norme.log to see details."
fi