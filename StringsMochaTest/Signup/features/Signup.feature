Feature: Verify whether user can Sign up

Scenario Outline: I want to Sign up into the web console

		Given the "Team name" as "<Teamname>"
		Then give the "Owner Email address" as "<OwnerEmailaddress>"
		Then give the "Owner name" as "<Ownername>"
		Then give the "Password" as "<Password>"
		Then give the "Confirm Password" as "<ConfirmPassword>"
		And I click on Sign up button
		
		
Examples: credentials
|		Teamname	 |		OwnerEmailaddress	| 		Ownername      |	Password  |	ConfirmPassword	|
|abcded				 | 						    |		Nive		   |  1234		  |	1234			|
|xyzsta				 | xyz@ab.com			    |					   |  abcd        |abcd           	|
|Test      			 | test@team.com            |		test           | 	          |nive             |
|Test2				 | testing2@team.com        |       Test2          |  test2       |                 |
|					 |						    |					   |			  |                 |
|					 |nive.r@gquotient.com		|		Nive		   |              |                 |
|Nivedhitha			 |nivedhitha.r@gquotient.com|		Nivedhitha	   | Nivedhitha#  | Nivedhitha#     |	
		