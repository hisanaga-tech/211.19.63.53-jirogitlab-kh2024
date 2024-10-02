PROCEDURE sample11;
LABEL 99;

	PROCEDURE sub ( objH : HANDLE );
	BEGIN

   

	  	IF GetType ( objH ) = 63 THEN
		BEGIN

		    delobject(objh);

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

Group;
Ungroup;

DSelectAll;

END;


RUN ( sample11 );