#### code as a part of tutorial: getting started with lambda 

# AWS Lambda Layer for Python Packages

This repository provides an AWS Lambda layer with Python dependencies specified in `r.txt`. This setup simplifies deployment by avoiding the need to re-upload dependencies with each function update.

## Structure

- **`r.txt`**: Lists the Python packages you want to include in the Lambda layer.
- **`build.sh`**: Builds the layer using Docker to ensure compatibility with the AWS Lambda runtime.
- **`zip.sh`**: Zips the built layer for uploading.

## Prerequisites

- **Docker**: Required to build the layer in an environment compatible with AWS Lambda.
- **AWS CLI**: Needed to publish the layer to AWS Lambda.

## Usage

### 1. Add Packages to `r.txt`

Add the desired Python packages and versions to `r.txt`. For example:

```text
requests==2.28.1
pandas==1.4.3
```

### 2. run build command `build.sh`

### 3. run zip command `zip.sh`

### Uploading the zip to AWS Lambda (Can do it manually using aws console)
or 
#### Use the following command to upload the zip to AWS Lambda
```bash
aws lambda publish-layer-version \
  --layer-name my-python-layer \
  --zip-file fileb://python-zipped.zip \
  --compatible-runtimes python3.12
```
