## Run

```
docker run --rm \
           --net=host \
           -p 8080:8080 \
           -v "$PWD/suites":/suites \
           -v "$PWD/reports":/reports \
           behivee/test
```
