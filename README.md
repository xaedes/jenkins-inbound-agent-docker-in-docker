# jenkins-inbound-agent-docker-in-docker
Jenkins Inbound-Agent as docker image which can use docker in Jenkin Jobs


Usage:
Create three files containing the jenkins configuration without line break:

 - `secret`: Contains the secret that is used to connect from the agent to Jenkins master.
 - `url`: Contains the complete url to your Jenkins instance, e.g. https://jenkins.yourdomain.tld/
 - `agent_name`: Contains the name for the Jenkins agent, e.g. agent_smith
 
Start the agent with `./start_agent.sh`.

If you want to modify the Dockerfile, you can rebuild and start the container using `./build_agent.sh`.

