FROM python:3.9

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY requirements.txt /code/
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . /code/

RUN python /code/voting/manage.py createsuperuser --no-input  --username=abishek  --email=abishek@gmail.com
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
