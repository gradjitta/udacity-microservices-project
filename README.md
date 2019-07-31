[![CircleCI](https://circleci.com/gh/pmbrull/udacity-microservices-project.svg?style=svg)](https://circleci.com/gh/pmbrull/udacity-microservices-project)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone: `python app.py`
2. Run in Docker: `./run_docker.sh`
3. Run in Kubernetes: `./run_kubernetes.sh`

> Note that to being able to run the image in Kubernetes, if you are not using the pmbrull/udacity-devops-api image but rather a custom one, you need to run `upload_docker.sh` script. General project parameters have been set up inside parameters.sh, while we have another `cfg.sh` to be used for parameters that we don't want to make public in Github.

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

> You can obtain the logs from a running pod with `kubectl logs <podName>`. Check the name of your pods by means of `kubectl get pods`.

---

### Linting with Hadolint

If you prefer to run hadolint from a Docker image, you can call it by running

```bash
docker run --rm -i hadolint/hadolint < Dockerfile
```

