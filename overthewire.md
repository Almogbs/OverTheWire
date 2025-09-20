# Level 0 -> 1:
bandit0@bandit:~$ cat readme 
The password you are looking for is: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If


# Level 1 -> 2:
bandit1@bandit:~$ cat ~/-
263JGJPfgU6LtdEvgfWU1XP5yac29mFx


# Level 2 -> 3:
bandit2@bandit:~$ cat ~/--spaces\ in\ this\ filename-- 
MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx


# Level 3 -> 4:
bandit3@bandit:~$ cat ~/inhere/...Hiding-From-You
2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ


# Level 4 -> 5:
bandit4@bandit:~$ file inhere/-file0* | grep ASCI
inhere/-file07: ASCII text
bandit4@bandit:~$ cat inhere/-file07 
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw


# Level 5 -> 6:
bandit5@bandit:~/inhere$ find -size 1033c
./maybehere07/.file2
bandit5@bandit:~/inhere$ file ./maybehere07/.file2
./maybehere07/.file2: ASCII text, with very long lines (1000)
bandit5@bandit:~/inhere$ cat ./maybehere07/.file2
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG


# Level 6 -> 7:
bandit6@bandit:~$ find / -type f -size 33c -user bandit7 -group bandit6
/var/lib/dpkg/info/bandit7.password

bandit6@bandit:~$ cat /var/lib/dpkg/info/bandit7.password
morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj


# Level 7 -> 8:
bandit7@bandit:~$ grep -nri millionth
data.txt:37812:millionth	dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc


# Level 8 -> 9:
bandit8@bandit:~$ sort data.txt | uniq --unique
4CKMh1JI91bUIZZPXDqGanal4xvAg0JM


# Level 9 -> 10:
bandit9@bandit:~$ strings data.txt | grep ==
========== the
========== password
Q========== is%
>u`9J========== FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey


# Level 10 -> 11:
bandit10@bandit:~$ base64 data.txt -d
The password is dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr


# Level 11 -> 12:
bandit11@bandit:~$ cat data.txt | tr "A-Za-z" "N-ZA-Mn-za-m"
The password is 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4


# Level 12 -> 13:
bandit12@bandit:~$ mkdir /tmp/blop
bandit12@bandit:~$ cp data.txt /tmp/blop/
bandit12@bandit:~$ cd /tmp/blop

bandit12@bandit:/tmp/blop$ xxd -r data.txt rdata.txt

bandit12@bandit:/tmp/blop$ file rdata.txt
rdata.txt: gzip compressed data, was "data2.bin", last modified: Fri Aug 15 13:15:53 2025, max compression, from Unix, original size modulo 2^32 584
bandit12@bandit:/tmp/blop$ gzip -dc rdata.txt > data2.bin

bandit12@bandit:/tmp/blop$ file data2.bin 
data2.bin: bzip2 compressed data, block size = 900k
bandit12@bandit:/tmp/blop$ bzip2 -dc data2.bin > come_on

bandit12@bandit:/tmp/blop$ file come_on 
come_on: gzip compressed data, was "data4.bin", last modified: Fri Aug 15 13:15:53 2025, max compression, from Unix, original size modulo 2^32 20480

bandit12@bandit:/tmp/blop$ gzip -dc come_on > come_onnn
bandit12@bandit:/tmp/blop$ file come_onnn 
come_onnn: POSIX tar archive (GNU)
bandit12@bandit:/tmp/blop$ tar -xvf come_onnn
data5.bin

bandit12@bandit:/tmp/blop$ file data5.bin 
data5.bin: POSIX tar archive (GNU)
bandit12@bandit:/tmp/blop$ tar -xvf data5.bin
data6.bin

bandit12@bandit:/tmp/blop$ file data6.bin 
data6.bin: bzip2 compressed data, block size = 900k
bandit12@bandit:/tmp/blop$ bzip2 -dc data6.bin > data7

bandit12@bandit:/tmp/blop$ file data7
data7: POSIX tar archive (GNU)
bandit12@bandit:/tmp/blop$ tar -xvf data7
data8.bin

bandit12@bandit:/tmp/blop$ file data8.bin 
data8.bin: gzip compressed data, was "data9.bin", last modified: Fri Aug 15 13:15:53 2025, max compression, from Unix, original size modulo 2^32 49
bandit12@bandit:/tmp/blop$ gzip -dc data8.bin
The password is FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn


# Level 13 -> 14:
bandit13@bandit:~$ ls
sshkey.private
bandit13@bandit:~$ ssh bandit14@bandit.labs.overthewire.org -p 2220 -i sshkey.private 
bandit14@bandit:~$ cat /etc/bandit_pass/bandit14
MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS


# Level 14 -> 15:
bandit15@bandit:~$ echo MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS | ncat localhost 30000
Correct!
8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo


# Level 15 -> 16:
bandit15@bandit:~$ echo 8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo | ncat --ssl localhost 30001
Correct!
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx

# Level 16 -> 17:
bandit16@bandit:~$ nc -vz localhost 31000-32000 2>/dev/null
bandit16@bandit:~$ nc -vz localhost 31000-32000 2>&1 | grep succeeded
Connection to localhost (127.0.0.1) 31046 port [tcp/*] succeeded!
Connection to localhost (127.0.0.1) 31518 port [tcp/*] succeeded!
Connection to localhost (127.0.0.1) 31691 port [tcp/*] succeeded!
Connection to localhost (127.0.0.1) 31790 port [tcp/*] succeeded!
Connection to localhost (127.0.0.1) 31960 port [tcp/*] succeeded!

// I can just check each one of them, but I'll beter use nmap and end with it..
bandit16@bandit:~$ nmap -p 31000-32000 localhost -sV -T5
PORT      STATE SERVICE     VERSION
31046/tcp open  echo
31518/tcp open  ssl/echo
31691/tcp open  echo
31790/tcp open  ssl/unknown
31960/tcp open  echo

bandit16@bandit:~$ echo kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx | ncat --ssl localhost 31790 | tail -n +2 > /tmp/private
bandit16@bandit:~$ chmod 400 /tmp/private
bandit16@bandit:~$ ssh -i /tmp/private bandit17@bandit.labs.overthewire.org -p2220


# Level 17 -> 18:
bandit17@bandit:~$ diff passwords.old passwords.new
42c42
< CgmS55GVlEKTgx8xpW8HuWnHlBKP924b
---
> x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO


# Level 18 -> 19:
abs@MacBookPro ~ %  ssh bandit18@bandit.labs.overthewire.org -p2220 ls
readme
abs@MacBookPro ~ %  ssh bandit18@bandit.labs.overthewire.org -p2220 cat readme
cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8


# Level 19 -> 20:
bandit19@bandit:~$ ./bandit20-do cat /etc/bandit_pass/bandit20
0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO


# Level 20 -> 21:
bandit20@bandit:~$ echo 0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO | ncat -l -k -p 54321 &
[1] 230676
bandit20@bandit:~$ ./suconnect 54321
Read: 0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO
Password matches, sending next password
EeoULMCra2q0dSkYj561DX7s1CpBuOBt


# Level 21 -> 22:
bandit21@bandit:~$ cat /usr/bin/cronjob_bandit22.sh
#!/bin/bash
chmod 644 /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
cat /etc/bandit_pass/bandit22 > /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv

bandit21@bandit:~$ ll /etc/cron.d/ | grep bandit22
-rw-r--r--   1 root root   120 Aug 15 13:16 cronjob_bandit22

bandit21@bandit:~$ cat /etc/cron.d/cronjob_bandit22
@reboot bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null
* * * * * bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null

bandit21@bandit:~$ cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
tRae0UfB9v0UzbCdn9cY0gQnds9GF58Q

