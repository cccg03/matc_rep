#/bin/sh
echo Enter your name
read username

if [ "$username" == "root" ]; then
	echo "Do you have the power?"
	read gotpower
	if [ "$gotpower" == "y" ] || [ "$gotpower" == "yes" ]; then
		echo "You got the power!"
		echo "How much power do you have?"
		read powerlevel
		if [ "$powerlevel" -gt 4 ] && [ "$powerlevel" -lt 9000 ]; then
			echo "Wow, that's pretty powerful!"
		elif [ "$powerlevel" -le 4 ]; then
			echo "Oh...that's pretty weak."
		else
			echo "OVER NINE THOUSAND!!!!"
		fi
	
	else
		echo "Sorry, gotta have the power"
	fi
elif [ "$username" == "somebody" ]; then
	echo "I got the power!"
else
	echo "Welcome, $username!"
fi
