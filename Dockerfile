FROM chruth/base
LABEL maintainer="chruth"

COPY rootfs /

# install packages
RUN apk add --update --no-cache \
    openssh-server \
    git \
    perl && \
    # cleanup
    rm -rf /tmp/*

EXPOSE 2222

VOLUME ["${APP_DIR}"]