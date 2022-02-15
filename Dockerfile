## Simple docker file which will copy the current directory
## and run the image rotate command

FROM ubuntu:18.04 AS builder

RUN mkdir /build
WORKDIR /build
COPY . /build
RUN ./deps.sh && 
        cmake &&
        make 

FROM ubuntu:18.04 
RUN ./deps.sh 
COPY --from=builder /build/image_rotate /.
COPY --from=builder /build/plane.jpg /.
WORKDIR /
CMD ["./image_rotate","../plane.jpg", "plane_out.jpg"]

