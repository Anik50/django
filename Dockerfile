FROM python:3.9
RUN mkdir /my_projectdemo
WORKDIR /my_projectdemo
RUN pip install --upgrade pip
COPY requirements.txt /my_projectdemo/
RUN pip install -r requirements.txt
COPY . /my_projectdemo
Expose 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]