#!/bin/bash

if ping -n 1 google.com > /dev/null 2>&1; then
    echo "✅ Internet is working!"
else
    echo "❌ No internet connection!"
fi
