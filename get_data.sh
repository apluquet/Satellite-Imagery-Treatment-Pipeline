#!/bin/bash
set -e

wget -O 'landsat_9.tar.gz' 'https://drive.google.com/uc?export=download&confirm=9iBg&id=14MX8wWblo4x4Q25O_HV2CqNB6f0yegfj'
tar -xvf 'landsat_9.tar.gz' && rm 'landsat_9.tar.gz'
mv 'landsat_9' './images/landsat_9'
