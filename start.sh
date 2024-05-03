RUN python manage.py createsuperuser --noinput \
    --username=abishek \
    --email=abishek@gmail.com \
    --password=abishek
python manage.py makemigrations --no-input

python manage.py migrate --no-input

python manage.py runserver 0.0.0.0:8000