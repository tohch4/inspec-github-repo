FROM chef/inspec:4.22.0

ARG CHEF_LICENSE=accept
ARG INSPEC_LOGLEVEL=debug
ARG INSPEC_PLUGIN=inspec-resource-pack

RUN inspec plugin install \
    --chef-license=${CHEF_LICENSE} \
    --log-level=${INSPEC_LOGLEVEL} \
    ${INSPEC_PLUGIN}}

ENTRYPOINT ["inspec"]
