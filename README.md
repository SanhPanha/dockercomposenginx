## Note
For working with docker compose

### Create repo with gh command 


```bash

gh auth login

gh auth status  #show the status of Authentication

gh repo create dockercomposenginx --public 
gh repo view dockercomposenginx --json sshUrl | jq -r '.sshUrl'
gh repo view dockercomposenginx --json url | jq -r '.url'

git init 
git remote add origin $(gh repo view dockercomposenginx --json url | jq -r '.url')

git remote -v # show the remote url of the project

```


## Doker compose related commands

```bash

docker compose config # validate the docker compose file
docker compose config --services # show the services in the docker compose file

docker compose down # stop the services
docker compose down --volumes or -v # stop the services and remove the volumes





```