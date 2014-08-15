#!/usr/bin/env bash
cd tools && ./run.sh && cd ..
cd chat && ./run.sh && cd ..
echo "Total time: $SECONDS second(s)"
