FROM ubuntu:18.04
RUN ./deps.sh
ENTRYPOINT ["./image_rotate","../plane.jpg", "plane_out.jpg"]
