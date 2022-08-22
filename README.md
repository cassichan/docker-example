# Docker Example

## To build an image
docker build -t 'bocacode':1.0 .

### To create a container
docker run --rm -d -p 8000:8000/tcp bocacode:1.0