The repository contains the source code for building the results databases for the AI services.

# building the results databases

The repository has been setup using 'make' to build all images.

 - `make build` will build all images
 - `make clean` will erase all images

# results database directory structure

The results database directory contains at minimum:

- makefile : the commands to automate the building, cleaning, etc. 
- Dockerfile: the dockerfile creating the results database as an mysql database based on the base image
- table.sql: the statements to create the results database and result table
- insert.sql: an example insert of at least a single result
- test.sql: an example query to retrieve the single result
- README.md: documentation of the AI service results database


# Adding a new results database

Adding a new results databases consists of the following steps:

- create a new subdirectory 'ai-service-{ACRONYM}'
- initialise the new subdirectory using the files of ai-service-EXSM
- adapt the sql statements to match the new results database structure
- adapt the makefile to ensure the image name is matching the {ACRONYM}
- document the results database in the README.md

After creating and buiding the new results database, the AI service developer should test the image 
by e.g. using the image in a docker-compose configuration of the AI service.

# base image
The base image is located in the directory ai-proficient-mysql.
All commonalities that must be shared accross all results databases should be made in this image.








