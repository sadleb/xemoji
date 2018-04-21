#!/bin/bash
cd ~/xemoji
RAILS=production bundle exec bin/rake assets:precompile
