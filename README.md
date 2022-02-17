# Sample cpluscplus application to run the ci/cd in github workflow.

## Project dependencies

This project depends is built on **Ubuntu 18.04** and requires the following system dependencies(Check deps.sh)
* cmake
* coreutils
* gcc
* g++
* libopencv-dev


## How to build

```bash
mkdir build && cd build
cmake ..
make 
```

## How to run unit tests
```
make && make test
```

## How to run the exec

```
./image_rotate ../plane.jpg plane_out.jpg
```

## Github Workflow 
Simple four stage pipeline with 
1. Complie the code and build
2. Run the unittest
3. Pushing the docker image to repository(Sample)
4. Deploying the docker image to remote machine(Sample)

![ScreenShot](https://raw.github.com/ahamedyaserarafath/github-ci-workflow-sample/main/.github/workflows/Screenshot%202022-02-17%20at%206.53.57%20PM.png )

