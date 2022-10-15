<<<<<<< HEAD
# creates a manifest that kills a process
exec {
'pkill -f killmenow':
path => 'usr/bin:usr/local/bin:biin'
=======
# creates a manifest that kills a process.
exec {
  'pkill -f killmenow':
  path => '/usr/bin/:/usr/local/bin/:/bin/'
>>>>>>> 7cc51a1d67be6ef7e0ee9166ebaaf239bfabbae6
}
