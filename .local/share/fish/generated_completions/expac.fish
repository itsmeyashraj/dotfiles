# expac
# Autogenerated from man page /usr/share/man/man1/expac.1.gz
complete -c expac -s Q -l query -d 'Search the local database for provided targets.  This is the default behavior'
complete -c expac -s S -l sync -d 'Search the sync databases for provided targets'
complete -c expac -s s -l search -d 'Search for packages matching the strings specified by targets'
complete -c expac -s g -l group -d 'Return packages matching the specified targets as package groups'
complete -c expac -l config -d 'Read from file for alpm initialization instead of /etc/pacman. conf'
complete -c expac -s H -l humansize -d 'Format package sizes in \\s-1SI\\s0 units according to size'
complete -c expac -s 1 -l readone -d 'Stop searching after the first result'
complete -c expac -s d -l delim -d 'Separate each package with the specified string'
complete -c expac -s l -l listdelim -d 'Separate each list item with the specified string'
complete -c expac -s p -l file -d 'Interpret targets as paths to local files'
complete -c expac -s t -l timefmt -d 'Output time described by the specified format'
complete -c expac -s v -l verbose -d 'Output more'
complete -c expac -s V -l version -d 'Display version information and quit'

