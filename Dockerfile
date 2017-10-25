FROM python:3.6
RUN useradd -ms /bin/bash worker_user

ADD requirements.txt /home/worker_user/
RUN pip install -r /home/worker_user/requirements.txt

WORKDIR /home/worker_user/app
ADD src/ /home/worker_user/app
USER worker_user
CMD celery -A tasks worker --loglevel=info