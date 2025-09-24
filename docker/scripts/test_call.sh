#!/bin/sh
PHONE=$1
PROVIDER=$2
cat <<ENDHERE >/tmp/callfile_test
Context: test-call
Extension: 1111
Priority: 1
Channel: PJSIP/${PHONE}@${PROVIDER}
ENDHERE
cp /tmp/callfile_test /var/spool/asterisk/outgoing/callfile_test
