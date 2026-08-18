# C-Laude 
---
## The Idea
This project aims to create a marketplace for Claude Credits. The problem that this project aims to solve is claude pro is really expensive for students to afford, and there is a high chance that even though someone has a claude pro account, but on a given day, they are not really using it, but are still paying for it. Interestingly, there are some other users, who don't need claude pro for the whole month, but there are some days (for example, assignment days or working on some project or solving some problem or debugging some code) on which they highly need the claude-code or other utilities. With this project, we aim to connect such users and make the sharing possible. So that, the effective cost of claude for both types of buyers becomes less.

---
## The Architecture

We are trying out various architectures, like 
  1. There can be a producer installer script that each producer needs to run on their system, to configure the application on their system, and whenever they want to list their pro on the marketplace, they can simply run a command, and from the website of the project, the consumer can browse various plans/sellers, and as soon as they click on one particular system, the script spins up a docker container on the producer's device, provisioned with the pro inside the container and the ssh credentials for the container gets shared with the consumer, along with a web interface for file transferring. 

    ### Pros

    ### Cons
