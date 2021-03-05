#!/bin/bash

# Could factor some of this out into an env.sh
# to share with deploy.sh
export MIX_ENV=prod
export PORT=4801

CFGD=$(readlink -f ~/.config/photo_blog)

if [ ! -e "$CFGD/base" ]; then
    echo "Need to deploy first"
    exit 1
fi

SECRET_KEY_BASE=$(cat "$CFGD/base")
export SECRET_KEY_BASE

_build/prod/rel/photo_blog/bin/photo_blog start
