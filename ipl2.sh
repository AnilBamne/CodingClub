echo "Please enter your faviroite Team name in IPL 2022"
echo " hint : GT RR CSK RCB "
read teamName

matchesPlayed=14
won=0
lost=0
nrr=""
points=0
rcbTeam=("Virat" "Maxwell" "siraj" "Abd")
miTeam=("Rohit" "Pollard" "Bumrah" "Ishan")
dcTeam=("Rishabh" "Axar" "Prithvi" "Rashid")
cskTeam=("Dhoni" "Jadeja" "Duplessis" "Bravo")

	if [ $teamName == RCB ]
	then
		position=4
	elif [ $teamName == DC ]
	then
		position=5
	elif [ $teamName == MI ]
	then
		position=10
	elif [ $teamName == CSK ]
	then
		position=9
	else
		echo "Invalid input : Please enter a valid Team name"
	fi

function rolesByPlayer() {
	echo "$1 is a $3 of $2"

}

function categoriesByteam() {
	case $1 in
	RCB)
		for player in ${rcbTeam[@]}
		do
			if [ $player == "Abd" ]
			then
			    	rolesByPlayer $player $1 "Batsman"
			elif [ $player == "Virat" ]
			then
				rolesByPlayer $player $1 "Captain"
			elif [ $player == "Maxwell" ]
                        then
				rolesByPlayer $player $1 "Allrownder"
			else
				rolesByPlayer $player $1 "Bowler"
			fi
		done
	;;
	MI)
		 for player in ${miTeam[@]}
                 do
                        if [ $player == "Ishan" ]
                        then
                                rolesByPlayer $player $1 "Batsman"
                        elif [ $player == "Rohit" ]
                        then
                                rolesByPlayer $player $1 "Captain"
                        elif [ $player == "Pollard" ]
                        then
                                rolesByPlayer $player $1 "Allrownder"
                        else
                                rolesByPlayer $player $1 "Bowler"
                        fi
                done
	;;
	CSK)
		for player in ${cskTeam[@]}
                do
                        if [ $player == "Duplessis" ]
                        then
                                rolesByPlayer $player $1 "Batsman"
                        elif [ $player == "Dhoni" ]
                        then
                                rolesByPlayer $player $1 "Captain"
                        elif [ $player == "Jadeja" ]
                        then
                                rolesByPlayer $player $1 "Allrownder"
                        else
                                rolesByPlayer $player $1 "Bowler"
                        fi
                done
	;;
	DC)
		for player in ${dcTeam[@]}
                do
                        if [ $player == "Prithvi" ]
                        then
                                rolesByPlayer $player $1 "Batsman"
                        elif [ $player == "Rishabh" ]
                        then
                                rolesByPlayer $player $1 "Captain"
                        elif [ $player == "Axar" ]
                        then
                                rolesByPlayer $player $1 "Allrownder"
                        else
                                rolesByPlayer $player $1 "Bowler"
                        fi
                done
	;;
	*)
		echo "plese enter a valid team nME"
	;;
	esac
}

function playoffs() {
	if [ $1 -le 4 ]
	then
		echo "$2 is Eligible for play-offs"
	else
		echo "$2 is not eligible for play-off"
	fi

}

function pointsCalculator() {

	lost=$((matchesPlayed-$1))
	points=$(($1*2))
	echo "Your selected team is $teamName"
	echo "Matches played : $matchesPlayed"
	echo "Place secured in points table : $3"
	echo "won : $1 and lost : $lost"
	echo "Net Runrate : $2"
echo "Points : $points"
playoffs $3 $teamName
categoriesByteam $teamName

}

case $position in
10)
	won=4
	nrr="-0.506"
	pointsCalculator $won $nrr $position
	;;
9)

	won=4
	nrr="-0.203"
	pointsCalculator $won $nrr $position
	;;
5)
	won=6
	nrr="0.532"
	pointsCalculator $won $nrr $position
	;;
4)
	won=8
	nrr="-0.253"
	pointsCalculator $won $nrr $position
	;;
*)
	echo "please check ur team name"
	;;
esac



