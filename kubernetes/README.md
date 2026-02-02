MY LIST OF STEPS TO SOLVE THE ORCHESTRATION IP

1. Setup Google SDK in my local machine authenticate into the correct account in google cloud including the paid google cloud.
2. Create a cluster in google cloud and specify the number of nodes in cluster.
3. Change the kubbectl context to reference the cluster on google cloud
4. Create a namespace to work with.
5. Push the earlier created Backend and Frontend images to the Google Artefacts registry for easy of access by the nodes in my cluster.
6. Create a Frontend deployment
7.Create  Backend and Database registry
8. Create the persistent Volume Claim - this suffices since GKE assigns Persistent Volume automaticaly to the claim
9. Create the Application services for newtorking between the components
10. Apply the Kubernetes created objects beginning from the Volume claim for mongodb, then Mongodb Service - Makes the db ready for the banckend.
11. Kubectl apply the backend Deployment, then the backend service - Readies the backend for the FE
12. Kubectl Apply the FE deployment and the FE service - This set the FE pods running and creates a public IP ata is given by the GKE and is of type Load balancer.

- Public Ip generated  - 35.192.142.245

   