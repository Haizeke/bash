#!/bin/bash

read -p "Enter the name of your car brand:" car

case $car in
    Tesla)
	    #runs if car variable is exactly tesla
	echo -n "$car's car factory is in the USA."
	echo " Na elon musk get am"
	;;


    McLaren | Mercedes | Audi | Ferrari)
	    echo -n "$car's factory is in Germany"
	    echo " Tough stuff"
	    ;;
    

    Toyota | Mazda | Mitsubishi | subaru)
	    echo -n "$car's factory is in japan"
	    echo " Goes hard!"
	    ;;


    *)
	    echo -n "$car's factory is unknown, I don't know this brand"
	    echo " You can educate me"
esac

echo ""
echo "You're pretty curious"

