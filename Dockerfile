FROM python:3.12
 
# FROM registry.fedoraproject.org/f33/python3
WORKDIR /code
 
COPY ./requirements.txt /code/requirements.txt
 
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
 
#COPY ./app /code/app
COPY . /code

# RUN chmod -R 777 /code
# RUN mkdir /.cache
# RUN chmod -R 777 /.cache
# RUN mkdir -R /mnt

CMD ["streamlit","run", "src/home.py", "--server.port", "8080"]
