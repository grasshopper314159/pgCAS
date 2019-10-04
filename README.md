# README
# README
What to do if the web page is not responding
Most of the time, the server doesn’t need to be rebooted.  Just ssh into csci100.cs.umt.edu,
then check if the server is down and kill it if it is running but not responding (see bottom of the page).  Then go to “Starting the App” and follow the instructions there.


Starting the App:
1.	Switch to root:  sudo su
2.	Enable python 3 for this shell:   scl enable rh-python36 bash
3.	Move to the rails root directory (/home/nj101138/scratch/pgsql)
4.	Run  ../prod_server.sh (/home/nj101138/scratch/prod_server.sh)
5.	Then to keep the process going after you exit the shell, type ctrl -z, bg, disown

To reboot:   systemctl reboot
To make someone an admin:
Type rails c while in the directory that holds the app (as of 9/6/19, that is /home/nj101138/scratch/pgsql)
Type:
User.all
x=User.find(id#)
x.update_attributes(:role => 'admin')
exit

x.update_attributes(:due_date => '2019-09-14 23:30:00')


Check if server is down:
Run ps -A | grep ruby
If there is no ruby process, it is down.  This is also one way to find the process id if you want to kill the server.  Otherwise, you can find the process id by, from the apps root directory (pgsql), looking at tmp/pids/server.pid
Killing and re-starting the (Puma) server process is the only way I know to then be able to see the live server log.  I can’t recapture it once it’s in the background.  (Live log will be disabled once we start running it in production mode, but production mode is still breaking things right now.)


To correct due_date directly in the database:
Type rails c while in the directory that holds the app (as of 9/6/19, that is /home/nj101138/scratch/pgsql)
Type:
Assignment.all
x=Assignment.find(id#)
x.update_attributes(:due_date => '2019-09-14 23:30:00')
exit
