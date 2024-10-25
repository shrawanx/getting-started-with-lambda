docker run -v "$PWD":/var/task "public.ecr.aws/sam/build-python3.12" /bin/sh -c "pip install -r r.txt -t python/lib/python3.12/site-packages/; exit"

docker run -v "$PWD":/var/task "public.ecr.aws/sam/build-python3.12" /bin/sh -c "pip install --platform=manylinux2014_x86_64 --only-binary=:all: psycopg2-binary -t python/lib/python3.12/site-packages/; exit"

docker run -v "$PWD":/var/task "public.ecr.aws/sam/build-python3.12" /bin/sh -c "pip install  --platform manylinux2014_x86_64 --implementation cp --only-binary=:all: cryptography==43.0.1 -t python/lib/python3.12/site-packages/; exit"


