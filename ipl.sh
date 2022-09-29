echo "Please Enter a favourite team in IPL 2022"

echo "hint : GT RR CSK"

read teamName

declare -A cskTeam

matchesPlayed=14

won=0

lost=0

nrr=""

points=0

rcbTeam=("Maxwell" "Siraj" "Virat" "Abd")

miTeam=("Bumrah" "Pollard" "Ishant" "Rohit")

cskTeam[bat]="Duplessis"

cskTeam[bowl]="Bravo"

cskTeam[allrounder]="Jadeja"

cskTeam[captain]="Dhoni"
dcTeam=("Rishabh" "Shardul" "Axar" "Prithwi")


           if [ $teamName == "RCB" ]

           then

               position=4
	   elif [$teameName == "DC"]
	   then
		position=5

           elif [ $teamName == "MI" ]

           then

               position=10

           elif [ $teamName == "CSK" ]

                        then

                                position=9

           else

               echo "Please check your team , It is invalid format ..."

           fi

  function rolesByPlayer() {

      echo "$1 Is a $3 Of $2"

  }

  function categoriesByTeam() {

           case $1 in

          RCB)

                 for player in ${rcbTeam[@]}

           do

               if [ $player == "Abd" ]

               then

                   rolesByPlayer $player $1 "Batsman"

              elif [ $player == "Maxwell" ]

               then

                   rolesByPlayer $player $1 "All-Rounder"    

               elif [ $player == "Virat" ]

               then

                   rolesByPlayer $player $1 "Captain"

               else

                   rolesByPlayer $player $1 "Bowler"

                                fi

           done

             ;;

          MI)

                        for player in ${miTeam[@]}

                        do

                                if [ $player == "Ishant" ]

                                then

                                        rolesByPlayer $player $1 "Batsman"

                                elif [ $player == "Pollard" ]

                                then

                                        rolesByPlayer $player $1 "All-Rounder"

                                elif [ $player == "Rohit" ]

                                then

                                        rolesByPlayer $player $1 "Captain"

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

                                elif [ $player == "Jadeja" ]

                                then

                                        rolesByPlayer $player $1 "All-Rounder"

                                elif [ $player == "Dhoni" ]

                                then

                                        rolesByPlayer $player $1 "Captain"

                                else

                                        rolesByPlayer $player $1 "Bowler"

                                fi

                        done

                ;;

          *)

               echo ""

            ;;

       esac

  }

  function playoffs() {

       

      if [ $1 -le 4 ]

      then

       echo "$2 Is eligible for Play-Offs"

           else

       echo "$2 Is not eligible for Play-Offs"

           fi



  }

  function pointsCalculator() {

           

           lost=$((matchesPlayed-$1))

           points=$(($1*2))

           echo "User Selected Team Is $teamName"

           echo "Match Played : $matchesPlayed"

           echo "Place Secured : $3"

           echo "Won : $1 and Lost : $lost"

           echo "Runrate : $2"

           echo "Points : $points"

           playoffs $3 $teamName

           categoriesByTeam $teamName



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

   4)

      won=8

      nrr="-0.253"

      pointsCalculator $won $nrr $position      

      ;;

   *)

     echo ""

     ;;

  esac
