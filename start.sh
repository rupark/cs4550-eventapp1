#!/bin/bash
export MIX_ENV=prod
# Common port range for this is 4000-10,000
# Valid port range for a user app to listen
# on is something like 1025-32767
export PORT=4794
export SECRET_KEY_BASE=7u8saWUIpXDBYtk84fWv+63KG6dAloVcLPRShiPyDCQtpJkihKlAX0llKXXyg10p
export DATABASE_URL=ecto://photo_blog:uzae7aiw1eeV@localhost/photo_blog_dev
export NODEBIN=`pwd`/assets/node_modules/.bin
export PATH="$PATH:$NODEBIN"

_build/prod/rel/photo_blog/bin/photo_blog start
