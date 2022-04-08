sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0

sudo apt-add-repository https://cli.github.com/packages

sudo apt update

$ sudo apt install gh


# github access key : b8f0c0fc96e1942ca592e1d4898992f5959cbe8d


#

curl https://api.github.com/users/Traideas
curl -i -u Traideas:b8f0c0fc96e1942ca592e1d4898992f5959cbe8d https://api.github.com/user

# view repositories for the authenticated user:
curl -i -H "Authorization: token b8f0c0fc96e1942ca592e1d4898992f5959cbe8d" \
    https://api.github.com/user
    
    
#list repositories for another user:
curl -i https://api.github.com/orgs/octo-org/repos


#creating repository:
curl -i -H "Authorization: token b8f0c0fc96e1942ca592e1d4898992f5959cbe8d" -d '{ "name": "blog", "auto_init": true, "private": true,"gitignore_template": "nanoc" }' https://api.github.com/user/repos
    
    
    
# creating a repo for you organization

curl -i -H "Authorization: token $pat"     -d "{ \"name\": \"$repo\", \"auto_init\": true, \"private\": true,\"gitignore_template\": \"nanoc\" }" https://api.github.com/orgs/Traideas-Technology/repos

# Creating a team 
curl -i -H "Authorization: token b8f0c0fc96e1942ca592e1d4898992f5959cbe8d"     -d '{"name":"workers"}' https://api.github.com/orgs/Traideas-Technology/teams



# get a team by name
curl -i -H "Authorization: token b8f0c0fc96e1942ca592e1d4898992f5959cbe8d" https://api.github.com/orgs/Traideas-Technology/teams/workers




# update teams
curl -X PATCH -H "Authorization: token b8f0c0fc96e1942ca592e1d4898992f5959cbe8d"     -d '{"name":"newworker"}' https://api.github.com/user/repos/teams/workers


# delete a team

curl -X DELETE -H "Authorization: token b8f0c0fc96e1942ca592e1d4898992f5959cbe8d" https://api.github.com/orgs/Traideas-Technology/teams/newworker


#add member

curl -X PUT -H "Authorization: token b8f0c0fc96e1942ca592e1d4898992f5959cbe8d"     -d '{"role":"role"}' https://api.github.com/orgs/Traideas-Technology/teams/workers/memberships/rsakib1127

curl -X PUT -H "Authorization: token b8f0c0fc96e1942ca592e1d4898992f5959cbe8d"     -d "{\"role\":\"role\"}" https://api.github.com/orgs/Traideas-Technology/teams/workers/memberships/LimonSafayet





curl -X PUT -H "Authorization: token bddab50e1f0316ba627ba64e40c0385a4264e77b"     -d '{"permission":"permission"}' https://api.github.com/orgs/Traideas-Technology/teams/Techno/repos/Traideas-Technology/TestRepo



curl -H "Authorization: token  bddab50e1f0316ba627ba64e40c0385a4264e77b" https://api.github.com/teams/workers/repos




