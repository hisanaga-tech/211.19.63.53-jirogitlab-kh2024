procedure SENGA_01;

LABEL 99;

	PROCEDURE sub ( h : HANDLE );
	BEGIN

   

	  	IF GetType ( h ) = 2 THEN
		BEGIN

		    setlw(h,4);
                       setpenfore(h,21845,21845,21845);

		END;
	END;


BEGIN


ForEachObject ( sub, (sel=true) );


end;
run(SENGA_01);