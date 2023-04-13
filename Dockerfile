FROM alpine

RUN apk --no-cache --update add openssh gpg git git-lfs && \
    git lfs install

ENTRYPOINT ["git"]
CMD ["--help"]
