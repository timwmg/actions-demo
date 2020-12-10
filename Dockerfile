###########################################
###########################################
### Dockerfile to run some Python Build ###
###########################################
###########################################

FROM myoung34/github-runner:latest

#########################################
# Label the instance and set maintainer #
#########################################
LABEL com.github.actions.name="Python Image" \
      com.github.actions.description="Its a python build image" \
      com.github.actions.icon="code" \
      com.github.actions.color="red" \
      maintainer="GitHub DevOps <github_devops@github.com>" \
      org.opencontainers.image.authors="GitHub DevOps <github_devops@github.com>" \
      org.opencontainers.image.url="https://github.com/lukaspersonal/actions-demo" \
      org.opencontainers.image.source="https://github.com/lukaspersonal/actions-demo" \
      org.opencontainers.image.documentation="https://github.com/lukaspersonal/actions-demo" \
      org.opencontainers.image.vendor="GitHub" \
      org.opencontainers.image.description="Its a python build image"

######################
# Make the directory #
######################
RUN mkdir -p /action/lib

#############################
# Copy scripts to container #
#############################
COPY lib /action/lib

######################
# Set the entrypoint #
######################
ENTRYPOINT ["/action/lib/entrypoint.sh"]