FROM python:3.9
RUN mkdir /my_project
WORKDIR /my_project
RUN pip install --upgrade pip
COPY requirements.txt /my_project/
RUN pip install -r requirements.txt
COPY . /my_project
Expose 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]