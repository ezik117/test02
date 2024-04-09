FROM gcr.io/oss-fuzz-base/base-builder

# Install the packages needed for building the project
RUN apt-get update && apt-get install -y make autoconf automake libtool

# Clone the relevant project
#RUN git clone https://github.com/ezik117/test02 test02
COPY Sources/ test02
WORKDIR test02
COPY build.sh $SRC/
