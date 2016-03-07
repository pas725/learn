#!/bin/bash

# THIS SCRIPT WILL GIVE RANDOM MSGS ON TERMINAL STARTUP
# TO RUN THIS SCRIPT
#	* OPEN .bashrc FILE ( /home/<user>/.bashrc)
#	* PUT A LINE IN IT : bash ~/<script-path>

QUOTES=( 
'There is no such thing as failure. There are only results.'
'Eat well, and LIVE WELL, and all will be well' 
'Smile, and you change the world one little bit.'
'The mind is everything. What you think you become.' 
'Winning isn’t everything, but wanting to win is.' 
'Everything you’ve ever wanted is on the other side of fear.–George Addair' 
'Start where you are. Use what you have.  Do what you can.' 
'Happiness is not something readymade.  It comes from your own actions.–Dalai Lama' 
'If you want to lift yourself up, lift up someone else.– Booker T. Washington ' 
'A person who never made a mistake never tried anything new.- Albert Einstein'
)

x=`date | cut -c 19`

#echo "..hello  ${QUOTES[${x}]}"

notify-send -i ~/Project/Linux/notification_script/sam.ico 'Welcome to terminal...' "${QUOTES[${x}]}"

#notify-send -i ~/Project/Linux/notification_script/sam.ico 'Welocme to Terminal..' "Hello Piyush...."
