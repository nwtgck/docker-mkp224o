# docker-mkp224o
Docker image for [mkp224o](https://github.com/cathugger/mkp224o)

## Usage

```console
$ docker run -it nwtgck/mkp224o
root@32452ed52663:~# mkp224o abcd
sorting filters... done.
filters:
	abcd
in total, 1 filter
using 4 threads
abcdxymmekfpjvd7a6cmem7lororqs55am7b6vbre3wzdkvx5f6ug6yd.onion
abcdnbtq3yj7bwmfne5mreaalwgqa7xw66nrmhxmufuuhj5oyxorefid.onion
abcdqdeet6oxx7hn2dbjksaxwujtor5kzpukc53qbyxtt6q66fgwruyd.onion
^Cwaiting for threads to finish... done.
````

## mkp224o -h

```
Usage: mkp224o filter [filter...] [options]
       mkp224o -f filterfile [options]
Options:
        -h  - print help to stdout and quit
        -f  - specify filter file which contains filters separated by newlines
        -D  - deduplicate filters
        -q  - do not print diagnostic output to stderr
        -x  - do not print onion names
        -v  - print more diagnostic data
        -o filename  - output onion names to specified file (append)
        -O filename  - output onion names to specified file (overwrite)
        -F  - include directory names in onion names output
        -d dirname  - output directory
        -t numthreads  - specify number of threads to utilise (default - CPU core count or 1)
        -j numthreads  - same as -t
        -n numkeys  - specify number of keys (default - 0 - unlimited)
        -N numwords  - specify number of words per key (default - 1)
        -z  - use faster key generation method; this is now default
        -Z  - use slower key generation method
        -B  - use batching key generation method (>10x faster than -z, experimental)
        -s  - print statistics each 10 seconds
        -S t  - print statistics every specified ammount of seconds
        -T  - do not reset statistics counters when printing
        -y  - output generated keys in YAML format instead of dumping them to filesystem
        -Y [filename [host.onion]]  - parse YAML encoded input and extract key(s) to filesystem
        -p passphrase  - use passphrase to initialize the random seed with
        -P  - same as -p, but takes passphrase from PASSPHRASE environment variable
```
