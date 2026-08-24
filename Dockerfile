# Your deployable appliance: the pinned Atelier image + this pack baked in.
# Deployment is an image tag; an Atelier upgrade is a PR bumping this pin.
ARG ATELIER_IMAGE=ghcr.io/aincient-labs/atelier-cms:latest
FROM ${ATELIER_IMAGE}
COPY . /opt/drupal/web/modules/custom/my_pack
COPY dev/pack.yml /opt/drupal/packs.d/my_pack.yml
