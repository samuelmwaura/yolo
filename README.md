MY LIST OF STEPS TO SOLVE THE IP

1. Make sure that the app is running locally in my machine
   Fire up the FE server by {npm install, npm start}
   Fire up the node backend server by {npm install , npm start}
   Install Mongodb in the system and start the appplication to run on port 27017
2. Access the application in the browser on 127.0.0.1:3000 to access the application in the browser
3. Create the backend dockerfile
4. Build the Backend Image
5. Create the FE dockerfile
6. Build the FE image
7. Run a container from the backend image to confirm that it works
8. Create the FE image 
9. Run a container from the FE image to confirm that the container works.
10. Create a docker volume for data storage for my mongodb container and connect it
10. Run my BE, FE and Mongo containers in a manual network {BE + mongo in one} and {BE + fe in another network}
11. Once confirmed Working, now move on to the docker compose file that implements the networks between my services automatically
10. Create the docker compose file.yml
    Create the BE service
    Create FE service
    Create Mongodb service
    Indicate the volume and the networks for each of the containers
11. Test for spinning and pulling down of services using the docker compose file

