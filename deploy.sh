#!/bin/bash
# This is deploy.sh

export MIX_ENV=prod
export PORT=4801
export SECRET_KEY_BASE=insecure
export DATABASE_URL=ecto://photo_blog:uzae7aiw1eeV@event.astrometer.art/photo_blog_dev

mix deps.get --only prod
mix compile

CFGD=$(readlink -f ~/.config/photo_blog)

if [ ! -d "$CFGD" ]; then
    mkdir -p $CFGD
fi

if [ ! -e "$CFGD/base" ]; then
    mix phx.gen.secret > "$CFGD/base"
fi

SECRET_KEY_BASE=$(cat "$CFGD/base")
export SECRET_KEY_BASE

npm install --prefix ./assets
npm run deploy --prefix ./assets
mix phx.digest

mix release
