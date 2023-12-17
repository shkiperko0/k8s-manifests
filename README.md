agro xd

docker run --restart='always' -d -p 5000:5000 --name=registry -e GUNICORN_OPTS=["--preload"] -v /srv/registry:/tmp/registry registry
