FROM python:3.9-alpine AS builder

#RUN apk --no-cache add git

#RUN git clone --depth=1 https://github.com/recitativonika/nodepay-network-bot.git /nodepay

RUN mkdir /nodepay

COPY *.sh  /nodepay/
COPY *.py  /nodepay/
COPY *.txt /nodepay/

RUN chmod +x /nodepay/*.sh




FROM python:3.9-alpine
LABEL maintainer="217heidai"
LABEL name="nodepay"

ENV TZ="Asia/Shanghai"
ENV NP_TOKEN="eyJhbGcixxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

COPY --from=builder /nodepay/ /nodepay/

RUN apk --no-cache add ca-certificates tzdata tini && \
    rm -rf /var/cache/apk/* && \
    python -m pip install --upgrade pip && \
    pip install -r /nodepay/requirements.txt && \
    pip cache purge

WORKDIR /nodepay/

ENTRYPOINT ["/sbin/tini", "--", "/nodepay/entrypoint.sh"]
