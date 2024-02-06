--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--

broodje = false;
OV = false;

function story(aName)
	if(aName == "start") then
		CLS()
	    setBackground("lelystadcentrum.jpg")
	    createTextfield("Je zit in lelystad en probeert over te stappen, maar je kan je OV-kaart niet vinden")
	    createButton("eind", "Loop helemaal naar huis")
		createButton("straat", "ga de stad in")
    end
    if(aName == "straat") then
	    CLS()
        setBackground("jpeg.jpeg")
		createTextfield("Je bent in het centrum van Lelystad. Waar ga je heen?")
		createButton("Steeg", "Loop het steegje in")
		createButton("Subway", "Ga naar de subway")
	end
	if(aName == "Steeg") then
	    CLS()
	    setBackground("steeg.jpeg")
	    createTextfield("Aan het eind van het steegje zie je een oude magere zwerver")
		createButton("zwerver", "loop naar de zwerver toe")
    end
	if (aName == "zwerver") then
	    setBackground("zwerver.jpg")
	    createTextfield("Sorry, heb je iets wat ik kan eten? Ik geef je iets waardevols terug")
		createButton("straat", "ik heb niks bij me sorry")
		createButton("blij", "Ik heb een broodje voor je")
	end
	if (aName == "blij") then
	    setBackground("blijezwerver.jpg")
		createTextfield("Dankjewel voor dit broodje! ik heb deze OV-kaart gevonden maar jij mag hem wel hebben.")
		createButton("straat" "loop terug naar het centrum")
		OV = true;
	end
	if(aName == "Subway") then
	    CLS()
		setBackground("Subway1.jpeg")
		createTextfield("Hey ben je van ubereats? Ik heb een ansjovies met kaas sub liggen.")
		createButton("dat vieze broodje is niet van mij")
		createButton("broodje" "Ja?")
    end
	if(aName == "broodje") then
	   CLS()
	   setBackground("subway2.jpg")
	   createTextfield("Hier is je bestelling")
	   createButton("straat" "loop naar buiten")
	   broodje = true;
    end
end