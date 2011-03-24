csv2plist
=========

# DESCRIPTION

Property list files are a great way to store data within your iOS or OS/X
application - they're well-structured and super-easy to parse. CSV (comma-
separated variable) files are a great to export data from a spreadsheet
which is _much_ easier to edit than the raw PLIST files.

csv2plist is a utility program that converts files from CSV format into
property lists. The root level of the property list will be an array and
each element of the array will be a dictionary, corresponding to the 
equivalent row in the spreadsheet. The keys of the dictionary are the
column names and the values are the column values.

# INSTALLATION

csv2plist is a ruby gem. Install it with the following command

    $ sudo gem install csv2plist

If your terminal environment is set up sanely, you should be able to run
it by simply invoking it at a shell prompt:

	$ csv2plist -h
	csv2plist converts a .....

# USAGE

If your CSV file contains a header row, and only contains string values,
then you can simply do this:

	$ csv2plist sample.csv
	
This will create a property list file called sample.plist.

See `csv2plist -h` for other options.
