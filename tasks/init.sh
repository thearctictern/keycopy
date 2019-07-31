#!/bin/bash

KEY=$PT_key
USER=$PT_user
PASS=$PT_pass
DEST=$PT_dest

yes $PASS | ssh-copy-id -f -o NumberOfPasswordPrompts=1 -i $KEY "${USER}@${DEST}"
