# docker-sphinx
## usage

<!-- ```
docker compose up -d

docker run -it -v $(pwd)/temp:/temp -e LOCAL_UID=$(id -u $USER) -e LOCAL_GID=$(id -g $USER) 20221221-sphinx bash
``` -->

```bash
docker run -it -v $(pwd)/sphinx:/sphinx -e LOCAL_UID=$(id -u $USER) -e LOCAL_GID=$(id -g $USER) sphinx:20221221 sphinx-quickstart
```

```bash
docker run -it -v $(pwd)/sphinx:/sphinx -e LOCAL_UID=$(id -u $USER) -e LOCAL_GID=$(id -g $USER) sphinx:20221221 sphinx-quickstart
```
