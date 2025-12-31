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
12. Transform my docker file to build musti- stage so that I cn reduce the size of the image. Avoid copying the following to my images {node modules, dev dependencies e.t.c} and only have what is required by the application to run at runtime.Multi-stage - have an image to build the app and have another to run the application

13.  Transforming my dockerfiles to have multistage build to reduce the final images sizes.
   1.Have a build stage in each file that uses
   2.Build the FE and BE images 
   3.Copy the built files into stage 2 of each docker file that will be the final image with a less size.
