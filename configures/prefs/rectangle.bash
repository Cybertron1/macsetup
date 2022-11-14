#!/bin/bash

set -e

PLIST="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/data/rectangle.plist"

defaults import $PLIST com.knollsoft.Rectangle.plist