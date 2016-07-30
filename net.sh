#
echo $#

if [ "$#" != "0" ]; then
    ssh -D 5188 -i "aws-sshd.pem" ubuntu@ec2-54-153-109-226.us-west-1.compute.amazonaws.com
else
    /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --proxy-server="socks5://localhost:5188" --host-resolver-rules="MAP * 0.0.0.0 , EXCLUDE localhost"

fi
