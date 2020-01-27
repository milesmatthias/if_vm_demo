#! /bin/bash

echo "export STAGE=$(curl \'http://metadata.google.internal/computeMetadata/v1/instance/attributes/stage\' -H \'Metadata-Flavor: Google\')" >> /etc/profile
