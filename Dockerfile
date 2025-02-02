FROM cljkondo/clj-kondo:2022.11.02 AS binary

FROM node:10-slim

COPY lib /action/lib
COPY --from=binary /usr/local/bin/clj-kondo /usr/local/bin/clj-kondo
ENTRYPOINT ["/action/lib/entrypoint.sh"]
