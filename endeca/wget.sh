#!/bin/sh

#
# Generated onFri Apr 29 00:07:00 PDT 2016# Start of user configurable variables
#
LANG=C
export LANG

# SSO username and password
#read -p 'SSO User Name:' SSO_USERNAME
#read -sp 'SSO Password:' SSO_PASSWORD
SSO_USERNAME=jclark@foxmail.com
SSO_PASSWORD=123abcABC

# Path to wget command
WGET=/usr/bin/wget
# Location of cookie file
COOKIE_FILE=/tmp/$$.cookies

# Log directory and file
LOGDIR=/tmp
LOGFILE=$LOGDIR/wgetlog-`date +%m-%d-%y-%H:%M`.log
# Output directory and file
OUTPUT_DIR=/tmp
#
# End of user configurable variable
#

if [ "$SSO_PASSWORD " = " " ]
then
 echo "Please edit script and set SSO_PASSWORD"
 exit
fi

# Contact osdc site so that we can get SSO Params for logging in
SSO_RESPONSE=`$WGET --user-agent="Mozilla/5.0" --no-check-certificate https://edelivery.oracle.com/osdc/faces/SearchSoftware 2>&1|grep Location`

# Extract request parameters for SSO
SSO_TOKEN=`echo $SSO_RESPONSE| cut -d '=' -f 2|cut -d ' ' -f 1`
SSO_SERVER=`echo $SSO_RESPONSE| cut -d ' ' -f 2|cut -d '/' -f 1,2,3`
SSO_AUTH_URL=/sso/auth
AUTH_DATA="ssousername=$SSO_USERNAME&password=$SSO_PASSWORD&site2pstoretoken=$SSO_TOKEN"

# The following command to authenticate uses HTTPS. This will work only if the wget in the environment
# where this script will be executed was compiled with OpenSSL. Remove the --secure-protocol option
# if wget was not compiled with OpenSSL
# Depending on the preference, the other options are --secure-protocol= auto|SSLv2|SSLv3|TLSv1
$WGET --user-agent="Mozilla/5.0" --post-data $AUTH_DATA --save-cookies=$COOKIE_FILE --keep-session-cookies $SSO_SERVER$SSO_AUTH_URL -O sso.out >> $LOGFILE 2>&1

rm -f sso.out




  $WGET  --user-agent="Mozilla/5.0" --no-check-certificate --load-cookies=$COOKIE_FILE --save-cookies=$COOKIE_FILE --keep-session-cookies "https://edelivery.oracle.com/osdc/download?fileName=V78204-01.zip&token=SWRPcERlaG1WbjQ0MzcrVGZFajg1USE6OiF1c2VybmFtZT1FUEQtSkNMQVJLQEZPWE1BSUwuQ09NJnVzZXJJZD03NTg0MTk4JmNhbGxlcj1TZWFyY2hTb2Z0d2FyZSZjb3VudHJ5SWQ9Q04mZW1haWxBZGRyZXNzPWpjbGFya0Bmb3htYWlsLmNvbSZmaWxlSWQ9ODI4NTIwNzcmYXJ1PTE5NDI1Mjc0JmFncmVlbWVudElkPTE0MTIzMDcmc29mdHdhcmVDaWRzPTEwNDcxNSZwbGF0Zm9ybUNpZHM9MzUmcHJvZmlsZUluc3RhbmNlQ2lkPTU0MDM3OSZtZWRpYUNpZD00NjIxMzcmcmVsZWFzZUNpZD0" -O $OUTPUT_DIR/V78204-01.zip >> $LOGFILE 2>&1



  $WGET  --user-agent="Mozilla/5.0" --no-check-certificate --load-cookies=$COOKIE_FILE --save-cookies=$COOKIE_FILE --keep-session-cookies "https://edelivery.oracle.com/osdc/download?fileName=V78226-01.zip&token=Wm4rWDJBT2U5R0Zadk1XTzdZY0tLUSE6OiF1c2VybmFtZT1FUEQtSkNMQVJLQEZPWE1BSUwuQ09NJnVzZXJJZD03NTg0MTk4JmNhbGxlcj1TZWFyY2hTb2Z0d2FyZSZjb3VudHJ5SWQ9Q04mZW1haWxBZGRyZXNzPWpjbGFya0Bmb3htYWlsLmNvbSZmaWxlSWQ9ODI4NTQ1MTYmYXJ1PTE5NDI1NzMzJmFncmVlbWVudElkPTE0MTIzMDcmc29mdHdhcmVDaWRzPTEwNDcxNSZwbGF0Zm9ybUNpZHM9MzUmcHJvZmlsZUluc3RhbmNlQ2lkPTU0MDM3OSZtZWRpYUNpZD00NjIzOTYmcmVsZWFzZUNpZD0" -O $OUTPUT_DIR/V78226-01.zip >> $LOGFILE 2>&1



  $WGET  --user-agent="Mozilla/5.0" --no-check-certificate --load-cookies=$COOKIE_FILE --save-cookies=$COOKIE_FILE --keep-session-cookies "https://edelivery.oracle.com/osdc/download?fileName=V78211-01.zip&token=Mlo2ZkVGSVQxaE1LbGhGcmIrdGEvdyE6OiF1c2VybmFtZT1FUEQtSkNMQVJLQEZPWE1BSUwuQ09NJnVzZXJJZD03NTg0MTk4JmNhbGxlcj1TZWFyY2hTb2Z0d2FyZSZjb3VudHJ5SWQ9Q04mZW1haWxBZGRyZXNzPWpjbGFya0Bmb3htYWlsLmNvbSZmaWxlSWQ9ODI4NTI2MTImYXJ1PTE5NDI1MzU1JmFncmVlbWVudElkPTE0MTIzMDcmc29mdHdhcmVDaWRzPTEwNDcxNSZwbGF0Zm9ybUNpZHM9MzUmcHJvZmlsZUluc3RhbmNlQ2lkPTU0MDM3OSZtZWRpYUNpZD00NjIyMTgmcmVsZWFzZUNpZD0" -O $OUTPUT_DIR/V78211-01.zip >> $LOGFILE 2>&1



  $WGET  --user-agent="Mozilla/5.0" --no-check-certificate --load-cookies=$COOKIE_FILE --save-cookies=$COOKIE_FILE --keep-session-cookies "https://edelivery.oracle.com/osdc/download?fileName=V78208-01.zip&token=Q1pmakFiUUExYjdETzRqbllpZFRWQSE6OiF1c2VybmFtZT1FUEQtSkNMQVJLQEZPWE1BSUwuQ09NJnVzZXJJZD03NTg0MTk4JmNhbGxlcj1TZWFyY2hTb2Z0d2FyZSZjb3VudHJ5SWQ9Q04mZW1haWxBZGRyZXNzPWpjbGFya0Bmb3htYWlsLmNvbSZmaWxlSWQ9ODI4NTIzMTkmYXJ1PTE5NDI1Mjc4JmFncmVlbWVudElkPTE0MTIzMDcmc29mdHdhcmVDaWRzPTEwNDcxNSZwbGF0Zm9ybUNpZHM9MzUmcHJvZmlsZUluc3RhbmNlQ2lkPTU0MDM3OSZtZWRpYUNpZD00NjIxNTYmcmVsZWFzZUNpZD0" -O $OUTPUT_DIR/V78208-01.zip >> $LOGFILE 2>&1
