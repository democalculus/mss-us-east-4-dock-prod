#!/bin/bash

sed -i "s#image_version_update#${imageVersion}#g" mss-us-east-4-prod.yml
cat mss-us-east-4-prod.yml |grep  'eagunuworld'
