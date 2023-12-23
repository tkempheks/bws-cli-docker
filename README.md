# bws-cli-docker
docker container that lists all bitwarden secrets  

# build
docker build --tag bws:whatever .

# run
docker run --rm -e BWS_TOKEN=0.77e2f888-4af7-1111-962d-b0e100db9333.fle2zQqN4CGzUDF2r2zfXJutGFqqqW:hNvKpZL16BM4PphDlS3AAA== bws:whatever
