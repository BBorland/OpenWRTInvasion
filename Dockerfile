FROM docker.io/library/python:3-alpine

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r requirements.txt --trusted-host files.pythonhosted.org --trusted-host pypi.org --trusted-host pypi.python.org

COPY . ./

CMD [ "python", "remote_command_execution_vulnerability.py" ]
