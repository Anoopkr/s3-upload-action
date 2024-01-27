FROM python:3.8-alpine

# Install required dependencies
RUN apk --no-cache add \
    groff \
    less \
    && pip install --upgrade pip

# Install AWS CLI using pip
RUN pip install awscli

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]