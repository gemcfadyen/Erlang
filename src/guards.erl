-module(guards).


-compile(export_all).


valid_day(Date, Month) -> 
				if Date =< 28 -> "Good";
		        	        Date =< 30 , Month=:=8; Month=:=4; Month=:=6; Month=:=11 -> "Good"; 
		                    Date=< 31, Month=:=1; Month=:=5; Month=:=7; Month=:=8; Month=:=10; Month=:=12 -> "Good";
				true -> "Bad" end.


beach(Temperature) ->
              case Temperature of
			       {celsius, N} when N >=20, N =< 45 ->'favourable';
			       {kelvin, N} when N >= 296, N =< 318 -> 'scientifically favourable';
                   {fahernheit, N} when N >= 68, N =<113 -> 'favourable in the USA';
                   _ -> 'avoid beach'
               end.
