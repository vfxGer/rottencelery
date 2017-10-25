from celery import Celery

app = Celery('tasks', backend='redis://store', broker='pyamqp://broker//')

@app.task
def add(x, y):
    return x + y