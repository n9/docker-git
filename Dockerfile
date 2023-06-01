FROM alpine

ARG USERNAME=user
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN addgroup -g $USER_GID $USERNAME
RUN adduser -u $USER_UID -G $USERNAME -D $USERNAME

RUN apk --no-cache --update add openssh gpg git git-lfs && \
    git lfs install
    
USER $USERNAME

ENTRYPOINT ["git"]
CMD ["--help"]
