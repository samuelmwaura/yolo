### YOLO PROJECT KUBERNETES IMPLEMENTATION EXPLANATION

1. Choices of the Kubernetes objects used for Deployment

##### PersistentClaimVolume
1. mongodb-pvc
This is the claim volume that was used to claim a volume for the mongodb pods that are running the Database of the yolo application. Once the mongodb deployment is run, the pods are connected to a persisten volume using this claim. Here in GKE, we did not create a persistent Volume but instead this was allocated to us automaltically by GKE when we created this claim. The claim remained in pending state until the mongodb-deployment was applied. The screenshot below shows the pvc after being applied, awaiting allocation to a deployment.

  ![screenshot of images and running containers](../projectimages/pvc%20screenshot.png)

##### Deployments
1. yolo-app-mongodb deployment
This is the kubernetes object that deploys pods for the mongodb that stores data for the application. Only one pod is generated for the mongodb and it is connected to a persistent volume to make sure data entered about products on the yooly application is persistent. The connection happens via the claim done using the mongodb-pvc. Below is a screenshot of the mongodb pod.

![screenshot of images and running containers](../projectimages/Mongodb%20pods.png)

2. yolo-app-backend deployement
This deployment sets a replica set of 3 pods running for the backend. The service calls the using the service names exposed by kubernetes when the cluster network for themongodb pod uis created. The replica set is exposed to the frontend by a service that has been applied creating a cluster network. The label used to map this backend replica set is **yolo-app-backend.**
The pods here run containers made from the image **gcr.io/yolo-app-kubernetes-project/backend:v1.0.4** that is already uploaded to the Google Artifacts registry. The image is converted into a GKE compatible image by building it into ARM 64 architecture different from the earlier built images that I used for vagrant and ansible.once in the registry, the 2 nodes in the yolo-app-kubernetes namespace download and run the containers. Below images show the Google Artifacts Registry and the BE pods running.

![screenshot of images and running containers](../projectimages/Google%20Artifacts.png)

![screenshot of images and running containers](../projectimages/Backend%20pods.png)

3. yolo-app-frontend deployment
This is the deployment that sets the frontend pods active. 