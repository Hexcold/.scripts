grep -v "sshd." auth.log

grep "sshd.*Accepted.*\bj" auth.log

grep "sshd.*root" auth.log

grep "09-29.*Accepted" auth.log
