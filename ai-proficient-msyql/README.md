The AI-PROFICIENT base image for AI service results is the official (mysql docker image)[https://hub.docker.com/_/mysql] .

This docker image is the base image used for storing the results from the AI-services.
Each AI-service will instantiate the 'results_db' with a table 'results_table'.
This is always the entry point.


