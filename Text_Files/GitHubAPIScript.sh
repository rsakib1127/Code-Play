#!/bin/bash
read -sp 'Personal Access Token: ' PAT
echo
echo Thank you $PAT for providing Personal Access Token


# Checking Personal Access Token
curl -i -H "Authorization: token $PAT" \
    https://api.github.com/user
    
###########################################################
###########################################################
###########################################################
###########################################################
###########################################################
###########################################################
echo

read -p "Enter your organization Name: " org


read -p "Do you want to create a repository? ( If Yes press y | N for No) " token
if [ $token = "y" ] || [ $token = "Y" ]
then
 echo "Creating Repository"
 read -p 'Please Enter Repository Name You want to Create: ' repo
 curl -i -H "Authorization: token $PAT"     -d "{ \"name\": \"$repo\", \"auto_init\": true, \"private\": true,\"gitignore_template\": \"nanoc\" }" https://api.github.com/orgs/$org/repos
 echo
 echo Thank you for your coopration 
 echo Your Repository Name is $repo
fi





###########################################################
###########################################################
###########################################################
###########################################################
###########################################################
###########################################################
echo
echo
read -p "Do you want to create a Team ? ( If Yes press y | N for No) " token
if [ $token = "y" ] || [ $token = "Y" ]
then
 echo "Creating Team"

#read -p 'Please Enter Your Organization Name For Creating Team: ' org
 echo
 read -p 'Please Enter New Team Name: ' team
 echo Thank you for your co-opration 

 curl -i -H "Authorization: token $PAT"     -d "{\"name\":\"$team\"}" https://api.github.com/orgs/$org/teams
fi



###########################################################
###########################################################
###########################################################
###########################################################
###########################################################
###########################################################

echo

###########################################################
###########################################################
###########################################################
###########################################################
###########################################################
###########################################################
read -p "Do you want to add a member? (If yes press Y | n for No) " token
echo
if [ $token = "y" ] || [ $token = "Y" ]
then
 	#read -p "enter team Name " team
 	a=1
	while [ $a = 1 ]
	do
		read -p "Enter GitHub Username of Member: " name
		curl -X PUT -H "Authorization: token $PAT"     -d "{\"role\":\"role\"}" https://api.github.com/orgs/$org/teams/$team/memberships/$name
 		read -p "Do you want to add more member? (if Yes press 1 | 0 for No ) " a
	done
fi

echo "Done"
###########################################################
###########################################################
###########################################################
###########################################################
###########################################################
###########################################################
echo 
read -p "Do you want to assign repository to a team ? ( If Yes press y | N for No) " token
if [ $token = "y" ] || [ $token = "Y" ]
then
	
 echo "Assigning Repository to Team"
 read -p "Please Enter Team Name " team
 read -p "Please Enter Organization Name " repo
 read -p "Please Enter Owner Name " owner
 read -p "Enter Repository Name" repoName
 
 curl -X PUT -H "Authorization: token $PAT"     -d "{\"permission\":\"admin\"}" https://api.github.com/orgs/$org/teams/$team/repos/$owner/$repo
fi


