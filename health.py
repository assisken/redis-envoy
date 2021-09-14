import os

from flask import Flask, Response

app = Flask(__name__)

status = os.getenv('STATUS', 200)
print('status="{}"'.format(status))


@app.route('/health')
def health():
    return Response('', status)
