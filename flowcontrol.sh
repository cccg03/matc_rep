#/bin/sh
echo Enter your name
read username

if [ "$username" == "root" ]; then
	echo "Do you have the power, $username?"
	read gotpower
	if [ "$gotpower" == "y" ] || [ "$gotpower" == "yes" ]; then
		echo "Oh really? You got the power?"
		echo "Well, how much power do you have?"
		read powerlevel
		if [ "$powerlevel" -gt 4 ] && [ "$powerlevel" -lt 9000 ]; then
			echo "Wow, that's pretty powerful!"
		elif [ "$powerlevel" -le 4 ]; then
			echo "Ha! I thought you had the power. That's pretty weak."
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
