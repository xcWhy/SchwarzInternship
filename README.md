# Schwarz Internship Project

alele.sgsbg-playground.runs.onstackit.cloud. 

## How we made the project?

- By using the Stackit Cloud platform we created a personal Kubernetes cluster

```
1. ssh  rocky@<ip>
> since we dont have accounts in stackit, there were made personal virtual machines with the stackit cli installed on them

2. sudo su -
> we had sudo priveleges on these machines

3. stackit config set --project-id <project-id>
> there was a set project we needed to use

4. stackit auth activate-service-account --service-account-token <token>
> then authenticate in it

5. stackit ske cluster create aleks-elena --payload @./payload.json --async (payload.json file was preconfigured in the virtual machine)
> creating the personal cluster and waiting for it to be created

6. stackit ske kubeconfig create aleks-elena --filepath ./kubeconfig --expiration 30d
> creating the kubeconfig file which we will be using on our local machines

7. moving the file from root -> home -> local machine
> in order to use our own local machines, we need to move the kubeconfig file from the virtual machines to out own by copying it to our file system

- mv kubeconfig /home/rocky/
- sudo chown rocky:rocky kubeconfig
- sudo chmod 644 /home/rocky/kubeconfig
- scp rocky@<ip>:/home/rocky/kubeconfig .

```



