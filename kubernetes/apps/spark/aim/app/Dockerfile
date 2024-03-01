#docker buildx build --push --platform linux/arm64,linux/amd64 --tag clarknova9/aim:0.0.0 kubernetes/apps/spark/aim/app/.
# python3.7 should be sufficient to run Aim
FROM python:3.11.5

# install the `aim` package on the latest version
RUN pip install --upgrade aim

# make a directory where the Aim repo will be initialized, `/aim`
RUN mkdir /aim

ENTRYPOINT ["/bin/sh", "-c"]

# have to run `aim init` in the directory that stores aim data for
# otherwise `aim up` will prompt for confirmation to create the directory itself.
# We run aim listening on 0.0.0.0 to expose all ports. Also, we run
# using `--dev` to print verbose logs. Port 43800 is the default port of
# `aim up` but explicit is better than implicit.
CMD ["echo \"N\" | aim init --repo /aim && aim up --host 0.0.0.0 --port 43800 --workers 2 --repo /aim"]
