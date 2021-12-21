LAB - Legacy Rehost Workshop
============================

## Requirements 
* Currently tested on OpenShift 4.8


## Getting started multi user workshop
Deploy RHPDS `Service "OpenShift 4.8 Workshop"`

**Create New project**
```
oc new-project workshops
```

**Deploying the Spawner (Deploy workshop with multiple users)**
> You must be a cluster admin to be able to deploy the workshop using the spawner.
```
.workshop/scripts/deploy-spawner.sh --settings=hosted-workshop
```

**Build workshop before login**
> This step will not be needed in the future. Workshop is  still in development.
```
.workshop/scripts/build-workshop.sh
```

**Get route and login**
```
oc get route -n workshops 
```

**Destroy Multi-User workshop** 
> To delete the spawner and any active sessions, run:
```
.workshop/scripts/delete-spawner.sh --settings=hosted-workshop
```

Personal Deployment
-------------------

```
.workshop/scripts/deploy-personal.sh --settings=develop
```

If you need to deploy the workshop from the local content, as for when using the spawner, run:

```
.workshop/scripts/build-workshop.sh
```

To delete the workshop instance run:

```
.workshop/scripts/delete-personal.sh
```



Useful Commands
-------------------
```
git clone --recurse-submodules https://github.com/jnovotni/legacy-rehost-homeroom-workshop

.workshop/scripts/build-workshop.sh

.workshop/scripts/delete-personal.sh --settings=develop

.workshop/scripts/delete-spawner.sh --settings=hosted-workshop
```