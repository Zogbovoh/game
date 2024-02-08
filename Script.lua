
broodje = false;
OV = false;

function story(aName)
	if(aName == "start") then
		CLS()
	    setBackground("lelystadcentrum.jpg")
		playSound("dramatic.wav")
	    createTextfield("Je komt aan in lelystad en probeert over te stappen, maar je kan je OV-kaart niet vinden. Je ziet dat een zwerver jouw kaart oppakt en vertrekt. Je gaat hem achterna.")
	    createButton("exit", "Loop helemaal naar huis")
		createButton("straat", "Ga de stad in")
    end
    if(aName == "straat") then
	    CLS()
        setBackground("jpeg.jpeg")
		playSound("crowd.wav")
		createTextfield("Je bent in het centrum van Lelystad. Waar ga je heen?")
		createButton("steeg", "Loop het steegje in")
		createButton("Subway", "Ga naar de subway")
		createButton("station", "Ga naar het station")
	end
	if(aName == "steeg") then
	    CLS()
	    setBackground("steeg.jpg")
		playSound("stappen.wav")
	    createTextfield("Aan het eind van het steegje zie je de zwerver die jouw kaart heeft")
		createButton("zwerver", "Loop naar de zwerver toe")
    end
	if (aName == "zwerver") then
	    CLS()
	    setBackground("zwerver.jpg")
		playSound("ghoul-urgh.wav")
	    createTextfield("Sorry, heb je iets wat ik kan eten? Ik geef je iets waardevols terug")
		createButton("straat", "Ik heb niks bij me, sorry")
		createButton("blij", "Ik heb een broodje voor je")
	end
	if (aName == "blij") then
	   CLS()
	if (broodje == true) then
	    setBackground("blijezwerver.jpg")
		createTextfield("Dankjewel! ik heb deze OV-kaart gevonden maar jij mag hem wel hebben.")
		createButton("straat", "Loop terug naar het centrum")
		   OV = true;
	else
	CLS()
		setBackground("sippezwerver.jpg")
		createTextfield("Maar je hebt helemaal geen eten bij je. Probeer je mij in de maling te nemen?")
		createButton("straat", "Loop het steegje uit")
	end
	end
	if(aName == "Subway") then
	    CLS()
		setBackground("Subway1.jpeg")
		playSound("subway.wav")
		createTextfield("Hey ben je van ubereats? Ik heb een ansjovies met kaas sub liggen.")
		createButton("straat", "Dat vieze broodje is niet van mij")
		createButton("broodje", "Ja?")
    end
	if(aName == "broodje") then
	   CLS()
	   setBackground("subway2.jpg")
	   playSound("cash.wav")
	   createTextfield("Hier is je bestelling")
	   createButton("straat", "Loop naar buiten")
	   broodje = true;
    end
	if(aName == "station") then
	   CLS()
	   if (OV == true) then
		   setBackground("stationlelystad.jpg")
		   playSound("wee.wav")
		   createTextfield("Je bent net op tijd voor de trein naar huis!")
		   createButton("exit", "Je stapt in de trein en relax tot je thuis komt")
		else
		   CLS()
		   setBackground("poortjes.jpg")
		   playSound("trein.wav")
		   createTextfield("Je kan niet verder zonder een OV-kaart")
		   createButton("straat", "Ga terug naar de stad")
		end
    end
	if(aName == "exit") then
	     exitGame();
	end
end