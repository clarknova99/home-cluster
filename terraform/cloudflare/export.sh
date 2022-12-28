#!/bin/sh

## Export these
# export CLOUDFLARE_API_TOKEN=
# export CLOUDFLARE_EMAIL=
# export CLOUDFLARE_API_KEY=
# specify zone ID
#export CLOUDFLARE_ZONE_ID=

cf-terraforming generate \
  --resource-type "cloudflare_access_application" \
  --zone $CLOUDFLARE_ZONE_ID
