FROM gcr.io/oss-fuzz-base/base-builder

RUN apt-get update && apt-get install -y make autoconf automake libtool

RUN mkdir test02
COPY Sources test02
WORKDIR test02
COPY build.sh $SRC
