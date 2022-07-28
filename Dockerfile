FROM python:3.9.0

COPY requirements.txt .

RUN apt-get update
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

WORKDIR /notebooks

# This line is purely informative.
# We still need to precise the ports when running
# the docker image
EXPOSE 8888

CMD jupyter lab --ip=* --port=8888 --allow-root --no-browser
