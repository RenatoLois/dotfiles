#!/bin/bash
kitty --single-instance -o allow_remote_control=yes --listen-on unix:/tmp/kitty-socket
