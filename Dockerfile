FROM python:3

RUN apt-get update \
    && apt-get install -y texlive-latex-extra \
    latexmk \
    texlive-lang-japanese \
    gosu

RUN mkdir /sphinx
WORKDIR /sphinx
COPY ./requirements.txt /sphinx/
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
