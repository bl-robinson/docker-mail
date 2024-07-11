#!/bin/bash
opendkim
postfix start
dovecot -F
