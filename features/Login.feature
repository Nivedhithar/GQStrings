Feature: Verify whether user can Login

Scenario Outline: Verify with various combinatons of login and check the login works with correct Team name email address and password 

		Given the "Team name" as "<Teamname>"
		Then give the "Email address" as "<Emailaddress>"
		Then give the "Password" as "<Password>"
		And I click on Log in button
		
Examples: credentials
|		Teamname	 |		Emailaddress	    | 		Password       |
|abcded				 | 						    |		1234		   |
|xyzsta				 | xyz@ab.com			    |					   |
|					 |						    |					   |
|					 |nive.r@gquotient.com		|		Nive		   |
|Nivedhitha			 |nivedhitha.r@gquotient.com|		Nivedhitha	   |
		