#!/bin/bash

bundle exec middleman build
rsync -avz '-e ssh ' build beta@studentkickoff.be:/var/www/beta.studentkickoff.be/ --delete
