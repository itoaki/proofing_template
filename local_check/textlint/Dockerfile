FROM node:12.9.1-alpine

RUN set -x && \
    npm install -g textlint@11.5.0 \
      textlint-rule-preset-ja-technical-writing@3.1.3 \
      textlint-filter-rule-comments@1.2.2 \
      textlint-plugin-markdown && \
    npm cache clean --force

WORKDIR /work
ENTRYPOINT ["/usr/local/bin/textlint"]
CMD ["--help"]
