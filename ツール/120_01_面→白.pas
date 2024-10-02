PROCEDURE sample11;
LABEL 99;

	PROCEDURE sub ( objH : HANDLE );
	BEGIN

   
 	

	  	IF getFPAT(objH)<>0 THEN {白以外の面を}
           BEGIN

           setFILLback(objH,65535,65535,65535);         {面を白にする}

		END;


	  	



IF (GetType ( objH ) = 63) 
or (GetType ( objH ) = 2) 
or (GetType ( objH ) = 3)
or (GetType ( objH ) = 4)
or (GetType ( objH ) = 5)
or (GetType ( objH ) = 6)
or (GetType ( objH ) = 12) 
or (GetType ( objH ) = 13) 
or (GetType ( objH ) = 17)    
or (GetType ( objH ) = 21)
or (GetType ( objH ) = 10)  


THEN 


           BEGIN

           setpenfore(objH,0,0,0);         {線を黒にする}

		END;


	END;


	BEGIN


  DOMENUTEXTBYNAME('symbol to group',0);

	ForEachObject ( sub, (sel=true) );

{ｴﾗｰのための繰り返し}

                BEGIN
  DOMENUTEXTBYNAME('symbol to group',0);

	ForEachObject ( sub, (sel=true) );
END;

DSelectAll;

settool(-128);

END;


RUN ( sample11 );