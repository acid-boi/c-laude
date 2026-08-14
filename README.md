#Steps to create 
  - Run claude setup token in your host terminal.
  - Build the docker image. Make sure you are changing the password.
  - Spin up a container using the command given below.
      ` 
      docker run -d -p 2222:22 \
  -v $(pwd):/home/claudeuser \
  --name claude-dev \
  my-claude-image
 `
 - Inside the container, export the CLAUDE_CODE_OAUTH_TOKEN variable in bashrc or somehow [This is a to be fixed thing in the docker image]
 - Spin up the file upload container using the below command.
      `    docker run -d \
  -p 8080:80 \
  -v $(pwd)/uploads:/srv \
  -e FB_NOAUTH=true \
  --name file-upload \
  filebrowser/filebrowser`
`
#Todos
  - Make this setup run through a doker-compose instead of manually runing conatiners.
  - Update the `my-claude-image` image such that it has a place holder for the `CLAUDE_ CLAUDE_CODE_OAUTH_TOKEN` so that the user doesn't have to update it in the container manuallly.
  - Make this whole setup run through a single command that needs to be run that returns a JSON containing IP, password and commands to ssh into the container and the file upload system.
  - Create a frontend for it, implementing login, rent and lend feature.
