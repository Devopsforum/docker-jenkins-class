CSRF Protection
 	Crumb Issuer	
Strict Crumb Issuer
 	Expiration (in hours)	
2
 		Check the session ID
 		Prevent BREACH attack
    
    
#/bin/bash
crumb=$(curl -u "trigger:1234" -s 'http://<IP>:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
curl -u "trigger:1234" -H "$crumb" -X POST http://<IP>:8080/job/ENV/build?delay=0sec


Note : edit the IP as required this above script will trigger the job automatically whenever the script executes.
