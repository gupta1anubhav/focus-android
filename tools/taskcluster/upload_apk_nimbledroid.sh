#!/usr/bin/env bash
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

"""
This script executes upload_apk_nimbledroid.py and returns nonzero when the upload fails
"""

returnValue=$(python ./tools/taskcluster/upload_apk_nimbledroid.py)

if [ ! -z "$returnValue" ]
then
    echo $returnValue
    exit 1
fi
