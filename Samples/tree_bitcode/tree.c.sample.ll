; ModuleID = 'tree.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sorts = type { i8*, i32 (...)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.xtable = type { i32, i8*, %struct.xtable* }
%struct.inotable = type { i64, i64, %struct.inotable* }
%struct.extensions = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.extensions* }
%struct.linedraw = type { i8**, i8*, i8*, i8*, i8* }
%struct.colortable = type { i8*, i8*, i8*, i8* }
%struct.anon = type { i8*, i8 }
%struct._info = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i8*, %struct._info** }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }

@pattern = local_unnamed_addr global i8* null, align 8
@ipattern = local_unnamed_addr global i8* null, align 8
@host = local_unnamed_addr global i8* null, align 8
@title = local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), align 8
@.str = private unnamed_addr constant [15 x i8] c"Directory Tree\00", align 1
@sp = local_unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@_nl = local_unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@timefmt = local_unnamed_addr global i8* null, align 8
@charset = local_unnamed_addr global i8* null, align 8
@listdir = local_unnamed_addr global i64 (i8*, i32*, i32*, i64, i64)* @unix_listdir, align 8
@cmpfunc = local_unnamed_addr global i32 (...)* bitcast (i32 (%struct._info**, %struct._info**)* @alnumsort to i32 (...)*), align 8
@dirsfirst = common local_unnamed_addr global i32 0, align 4
@reverse = common local_unnamed_addr global i32 0, align 4
@outfilename = local_unnamed_addr global i8* null, align 8
@ifmt = local_unnamed_addr constant [8 x i32] [i32 32768, i32 16384, i32 40960, i32 8192, i32 24576, i32 49152, i32 4096, i32 0], align 16
@fmt = local_unnamed_addr constant [9 x i8] c"-dlcbsp?\00", align 1
@ftype = local_unnamed_addr global [9 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@sorts = local_unnamed_addr global [6 x %struct.sorts] [%struct.sorts { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 (...)* bitcast (i32 (%struct._info**, %struct._info**)* @alnumsort to i32 (...)*) }, %struct.sorts { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 (...)* bitcast (i32 (%struct._info**, %struct._info**)* @versort to i32 (...)*) }, %struct.sorts { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 (...)* bitcast (i32 (%struct._info**, %struct._info**)* @fsizesort to i32 (...)*) }, %struct.sorts { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 (...)* bitcast (i32 (%struct._info**, %struct._info**)* @mtimesort to i32 (...)*) }, %struct.sorts { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 (...)* bitcast (i32 (%struct._info**, %struct._info**)* @ctimesort to i32 (...)*) }, %struct.sorts zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"mtime\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"ctime\00", align 1
@gflag = common local_unnamed_addr global i32 0, align 4
@uflag = common local_unnamed_addr global i32 0, align 4
@Fflag = common local_unnamed_addr global i32 0, align 4
@sflag = common local_unnamed_addr global i32 0, align 4
@pflag = common local_unnamed_addr global i32 0, align 4
@lflag = common local_unnamed_addr global i32 0, align 4
@fflag = common local_unnamed_addr global i32 0, align 4
@dflag = common local_unnamed_addr global i32 0, align 4
@aflag = common local_unnamed_addr global i32 0, align 4
@cflag = common local_unnamed_addr global i32 0, align 4
@siflag = common local_unnamed_addr global i32 0, align 4
@Hflag = common local_unnamed_addr global i32 0, align 4
@hflag = common local_unnamed_addr global i32 0, align 4
@Rflag = common local_unnamed_addr global i32 0, align 4
@Qflag = common local_unnamed_addr global i32 0, align 4
@Nflag = common local_unnamed_addr global i32 0, align 4
@qflag = common local_unnamed_addr global i32 0, align 4
@Dflag = common local_unnamed_addr global i32 0, align 4
@nolinks = common local_unnamed_addr global i32 0, align 4
@noreport = common local_unnamed_addr global i32 0, align 4
@xdev = common local_unnamed_addr global i32 0, align 4
@nocolor = common local_unnamed_addr global i32 0, align 4
@force_color = common local_unnamed_addr global i32 0, align 4
@noindent = common local_unnamed_addr global i32 0, align 4
@Jflag = common local_unnamed_addr global i32 0, align 4
@Xflag = common local_unnamed_addr global i32 0, align 4
@devflag = common local_unnamed_addr global i32 0, align 4
@inodeflag = common local_unnamed_addr global i32 0, align 4
@matchdirs = common local_unnamed_addr global i32 0, align 4
@ignorecase = common local_unnamed_addr global i32 0, align 4
@pruneflag = common local_unnamed_addr global i32 0, align 4
@duflag = common local_unnamed_addr global i32 0, align 4
@flimit = common local_unnamed_addr global i32 0, align 4
@maxdirs = common local_unnamed_addr global i32 0, align 4
@dirs = common local_unnamed_addr global i32* null, align 8
@Level = common local_unnamed_addr global i32 0, align 4
@mb_cur_max = common local_unnamed_addr global i32 0, align 4
@sLevel = common local_unnamed_addr global i8* null, align 8
@outfile = common local_unnamed_addr global %struct._IO_FILE* null, align 8
@curdir = common local_unnamed_addr global i8* null, align 8
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.111 = private unnamed_addr constant [33 x i8] c"tree: virtual memory exhausted.\0A\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"tree: missing argument to -P option.\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"tree: missing argument to -I option.\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"IBM437\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"tree: missing argument to -H option.\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"&nbsp;\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"tree: missing argument to -T option.\0A\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"tree: Missing argument to -L option.\0A\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"tree: Invalid level, must be greater than 0.\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"tree: missing argument to -o option.\0A\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@.str.139 = private unnamed_addr constant [120 x i8] c"$Version: $ tree v1.7.0 (c) 1996 - 2014 by Steve Baker, Thomas Moore, Francesc Rocher, Florian Sesser, Kyosuke Tokoro $\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"--inodes\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"--device\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"--noreport\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"--nolinks\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"--dirsfirst\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"--filelimit\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"tree: missing argument to --filelimit\0A\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"--charset\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"--si\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"--du\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"--prune\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"--timefmt\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"tree: missing argument to --timefmt\0A\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"--ignore-case\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"--matchdirs\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"--sort\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"tree: missing argument to --sort=\0A\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"tree: missing argument to --sort\0A\00", align 1
@.str.49 = private unnamed_addr constant [51 x i8] c"tree: sort type '%s' not valid, should be one of: \00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"tree: Invalid argument -`%c'.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.52 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"tree: invalid filename '%s'\0A\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"<b class=\22NORM\22>%s</b>\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"<a class=\22NORM\22 href=\22%s\22>%s</a>\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"<a href=\22%s\22>%s</a>\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"<?xml version=\221.0\22\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c" encoding=\22%s\22\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"?>%s<tree>%s\00", align 1
@switch.table.main = private unnamed_addr constant [12 x i32] [i32 6, i32 3, i32 7, i32 1, i32 7, i32 4, i32 7, i32 0, i32 7, i32 2, i32 7, i32 5]
@switch.table.prot = private unnamed_addr constant [12 x i64] [i64 6, i64 3, i64 7, i64 1, i64 7, i64 4, i64 7, i64 0, i64 7, i64 2, i64 7, i64 5]
@.str.62 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"%s<%s name=\22%s\22>\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.64 = private unnamed_addr constant [40 x i8] c"%s{\22type\22:\22%s\22,\22name\22:\22%s\22,\22contents\22:[\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"%s [error opening dir]\0A\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"%s</%s>\0A\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"%s]}\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"%s<directory name=\22.\22>\00", align 1
@.str.71 = private unnamed_addr constant [45 x i8] c"{\22type\22:\22directory\22,\22name\22: \22.\22,\22contents\22:[\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"%s</directory>%s\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"\09<br><br>\0A\09</p>\0A\09<p>\0A\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"%s<report>%s\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"%s<size>%lld</size>%s\00", align 1
@.str.77 = private unnamed_addr constant [34 x i8] c"%s<directories>%d</directories>%s\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"%s<files>%d</files>%s\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"%s</report>%s\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c",%s{\22type\22:\22report\22\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c",\22size\22:%lld\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c",\22directories\22:%d\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c",\22files\22:%d\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c" bytes\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"\0A%s%s used in \00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"ies\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"%d director%s\0A\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.90 = private unnamed_addr constant [26 x i8] c"%d director%s, %d file%s\0A\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"\09<br><br>\0A\09</p>\0A\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"\09<hr>\0A\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"\09<p class=\22VERSION\22>\0A\00", align 1
@.str.140 = private unnamed_addr constant [254 x i8] c"\09\09 tree v1.7.0 %s 1996 - 2014 by Steve Baker and Thomas Moore <br>\0A\09\09 HTML output hacked and copyleft %s 1998 by Francesc Rocher <br>\0A\09\09 JSON output hacked and copyleft %s 2014 by Florian Sesser <br>\0A\09\09 Charsets / OS/2 support %s 2001 by Kyosuke Tokoro\0A\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"\09</p>\0A\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"</body>\0A\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"</html>\0A\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"</tree>\0A\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"%s]\0A\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"dkMGTPEZY\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"BKMGTPEZY\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c" %4d\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c" %3.0f%c\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c" %3.1f%c\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c" %11lld\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"%lc\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"abtnvfr\00", align 1
@.str.100 = private unnamed_addr constant [347 x i8] c"usage: tree [-acdfghilnpqrstuvxACDFJQNSUX] [-H baseHREF] [-T title ]\0A\09[-L level [-R]] [-P pattern] [-I pattern] [-o filename] [--version]\0A\09[--help] [--inodes] [--device] [--noreport] [--nolinks] [--dirsfirst]\0A\09[--charset charset] [--filelimit[=]#] [--si] [--timefmt[=]<f>]\0A\09[--sort[=]<name>] [--matchdirs] [--ignore-case] [--] [<directory list>]\0A\00", align 1
@.str.101 = private unnamed_addr constant [3022 x i8] c"  ------- Listing options -------\0A  -a            All files are listed.\0A  -d            List directories only.\0A  -l            Follow symbolic links like directories.\0A  -f            Print the full path prefix for each file.\0A  -x            Stay on current filesystem only.\0A  -L level      Descend only level directories deep.\0A  -R            Rerun tree when max dir level reached.\0A  -P pattern    List only those files that match the pattern given.\0A  -I pattern    Do not list files that match the given pattern.\0A  --ignore-case Ignore case when pattern matching.\0A  --matchdirs   Include directory names in -P pattern matching.\0A  --noreport    Turn off file/directory count at end of tree listing.\0A  --charset X   Use charset X for terminal/HTML and indentation line output.\0A  --filelimit # Do not descend dirs with more than # files in them.\0A  --timefmt <f> Print and format time according to the format <f>.\0A  -o filename   Output to file instead of stdout.\0A  -------- File options ---------\0A  -q            Print non-printable characters as '?'.\0A  -N            Print non-printable characters as is.\0A  -Q            Quote filenames with double quotes.\0A  -p            Print the protections for each file.\0A  -u            Displays file owner or UID number.\0A  -g            Displays file group owner or GID number.\0A  -s            Print the size in bytes of each file.\0A  -h            Print the size in a more human readable way.\0A  --si          Like -h, but use in SI units (powers of 1000).\0A  -D            Print the date of last modification or (-c) status change.\0A  -F            Appends '/', '=', '*', '@', '|' or '>' as per ls -F.\0A  --inodes      Print inode number of each file.\0A  --device      Print device ID number to which each file belongs.\0A  ------- Sorting options -------\0A  -v            Sort files alphanumerically by version.\0A  -t            Sort files by last modification time.\0A  -c            Sort files by last status change time.\0A  -U            Leave files unsorted.\0A  -r            Reverse the order of the sort.\0A  --dirsfirst   List directories before files (-U disables).\0A  --sort X      Select sort: name,version,size,mtime,ctime.\0A  ------- Graphics options ------\0A  -i            Don't print indentation lines.\0A  -A            Print ANSI lines graphic indentation lines.\0A  -S            Print with CP437 (console) graphics indentation lines.\0A  -n            Turn colorization off always (-C overrides).\0A  -C            Turn colorization on always.\0A  ------- XML/HTML/JSON options -------\0A  -X            Prints out an XML representation of the tree.\0A  -J            Prints out an JSON representation of the tree.\0A  -H baseHREF   Prints out HTML format with baseHREF as top directory.\0A  -T string     Replace the default HTML title and H1 header with string.\0A  --nolinks     Turn off hyperlinks in HTML output.\0A  ---- Miscellaneous options ----\0A  --version     Print version and exit.\0A  --help        Print usage and this help message and exit.\0A  --            Options processing terminator.\0A\00", align 1
@read_dir.path = internal unnamed_addr global i8* null, align 8
@read_dir.lbufsize = internal unnamed_addr global i64 0, align 8
@read_dir.pathsize = internal unnamed_addr global i64 0, align 8
@read_dir.lbuf = internal unnamed_addr global i8* null, align 8
@.str.102 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"00Tree.html\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.105 = private unnamed_addr constant [42 x i8] c"[Error reading symbolic link information]\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"error opening dir\00", align 1
@.str.107 = private unnamed_addr constant [46 x i8] c"%d entries exceeds filelimit, not opening dir\00", align 1
@.str.108 = private unnamed_addr constant [24 x i8] c"recursive, not followed\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"\1B(0\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"x   \00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"tqq \00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"mqq \00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"\1B(B\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.119 = private unnamed_addr constant [19 x i8] c"&nbsp;&nbsp;&nbsp;\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@prot.buf = internal global [11 x i8] zeroinitializer, align 1
@do_date.buf = internal global [256 x i8] zeroinitializer, align 16
@month = internal unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152, i32 0, i32 0)], align 16
@.str.122 = private unnamed_addr constant [7 x i8] c"%s %2d\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"  %4d\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c" %2d:%02d\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c" The Future \00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.146 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c" %7ld\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c" %3d\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c" %-8.32s\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c" [error opening dir]\0A\00", align 1
@.str.1.56 = private unnamed_addr constant [50 x i8] c" [%d entries exceeds filelimit, not opening dir]\0A\00", align 1
@.str.3.57 = private unnamed_addr constant [6 x i8] c"%s]  \00", align 1
@.str.4.58 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5.59 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.6.60 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.8.61 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.9.62 = private unnamed_addr constant [28 x i8] c"  [recursive, not followed]\00", align 1
@.str.10.65 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@.str.1.68 = private unnamed_addr constant [11 x i8] c"iso-8859-1\00", align 1
@.str.84 = private unnamed_addr constant [1690 x i8] c"<!DOCTYPE html>\0A<html>\0A<head>\0A <meta http-equiv=\22Content-Type\22 content=\22text/html; charset=%s\22>\0A <meta name=\22Author\22 content=\22Made by 'tree'\22>\0A <meta name=\22GENERATOR\22 content=\22%s\22>\0A <title>%s</title>\0A <style type=\22text/css\22>\0A  <!-- \0A  BODY { font-family : ariel, monospace, sans-serif; }\0A  P { font-weight: normal; font-family : ariel, monospace, sans-serif; color: black; background-color: transparent;}\0A  B { font-weight: normal; color: black; background-color: transparent;}\0A  A:visited { font-weight : normal; text-decoration : none; background-color : transparent; margin : 0px 0px 0px 0px; padding : 0px 0px 0px 0px; display: inline; }\0A  A:link    { font-weight : normal; text-decoration : none; margin : 0px 0px 0px 0px; padding : 0px 0px 0px 0px; display: inline; }\0A  A:hover   { color : #000000; font-weight : normal; text-decoration : underline; background-color : yellow; margin : 0px 0px 0px 0px; padding : 0px 0px 0px 0px; display: inline; }\0A  A:active  { color : #000000; font-weight: normal; background-color : transparent; margin : 0px 0px 0px 0px; padding : 0px 0px 0px 0px; display: inline; }\0A  .VERSION { font-size: small; font-family : arial, sans-serif; }\0A  .NORM  { color: black;  background-color: transparent;}\0A  .FIFO  { color: purple; background-color: transparent;}\0A  .CHAR  { color: yellow; background-color: transparent;}\0A  .DIR   { color: blue;   background-color: transparent;}\0A  .BLOCK { color: yellow; background-color: transparent;}\0A  .LINK  { color: aqua;   background-color: transparent;}\0A  .SOCK  { color: fuchsia;background-color: transparent;}\0A  .EXEC  { color: green;  background-color: transparent;}\0A  -->\0A </style>\0A</head>\0A<body>\0A\09<h1>%s</h1><p>\0A\09\00", align 1
@.str.2.87 = private unnamed_addr constant [6 x i8] c"<br>\0A\00", align 1
@.str.3.88 = private unnamed_addr constant [26 x i8] c" [error opening dir]<br>\0A\00", align 1
@.str.4.89 = private unnamed_addr constant [54 x i8] c" [%d entries exceeds filelimit, not opening dir]<br>\0A\00", align 1
@.str.7.90 = private unnamed_addr constant [6 x i8] c"]%s%s\00", align 1
@.str.8.91 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.9.92 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.10.93 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.11.94 = private unnamed_addr constant [12 x i8] c"<a href=\22%s\00", align 1
@.str.32.95 = private unnamed_addr constant [7 x i8] c"%%%02X\00", align 1
@.str.30.96 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.6.97 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.12.98 = private unnamed_addr constant [15 x i8] c"/00Tree.html\22>\00", align 1
@.str.13.99 = private unnamed_addr constant [10 x i8] c"</a><br>\0A\00", align 1
@.str.14.100 = private unnamed_addr constant [8 x i8] c"%s%s/%s\00", align 1
@.str.15.101 = private unnamed_addr constant [23 x i8] c"Entering directory %s\0A\00", align 1
@.str.16.102 = private unnamed_addr constant [56 x i8] c"tree -n -H \22%s%s/%s\22 -L %d -R -o \22%s/00Tree.html\22 \22%s\22\0A\00", align 1
@.str.22.103 = private unnamed_addr constant [5 x i8] c"NORM\00", align 1
@.str.21.104 = private unnamed_addr constant [5 x i8] c"SOCK\00", align 1
@.str.18.105 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@.str.19.106 = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@.str.20.107 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1
@.str.17.108 = private unnamed_addr constant [21 x i8] c"<b class=\22%s\22>%s</b>\00", align 1
@.str.24.109 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23.110 = private unnamed_addr constant [38 x i8] c"<a class=\22%s\22 href=\22%s%s/%s%s\22>%s</a>\00", align 1
@.str.25.111 = private unnamed_addr constant [5 x i8] c"%s\22>\00", align 1
@.str.26.112 = private unnamed_addr constant [5 x i8] c"</a>\00", align 1
@.str.27.113 = private unnamed_addr constant [28 x i8] c"  [recursive, not followed]\00", align 1
@.str.28.114 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.29.115 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.31.116 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.153 = private unnamed_addr constant [28 x i8] c"<error>opening dir</error>\0A\00", align 1
@.str.3.154 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2.155 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.156 = private unnamed_addr constant [63 x i8] c"<error>%d entries exceeds filelimit, not opening dir</error>%s\00", align 1
@.str.16.157 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.17.158 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4.159 = private unnamed_addr constant [4 x i8] c"<%s\00", align 1
@.str.5.160 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6.161 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.7.162 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.9.163 = private unnamed_addr constant [8 x i8] c" name=\22\00", align 1
@.str.10.164 = private unnamed_addr constant [10 x i8] c" target=\22\00", align 1
@.str.11.165 = private unnamed_addr constant [39 x i8] c"<error>recursive, not followed</error>\00", align 1
@.str.12.166 = private unnamed_addr constant [8 x i8] c"</%s>%s\00", align 1
@.str.18.167 = private unnamed_addr constant [13 x i8] c" inode=\22%ld\22\00", align 1
@.str.19.168 = private unnamed_addr constant [10 x i8] c" dev=\22%d\22\00", align 1
@.str.20.169 = private unnamed_addr constant [23 x i8] c" mode=\22%04o\22 prot=\22%s\22\00", align 1
@.str.21.170 = private unnamed_addr constant [11 x i8] c" user=\22%s\22\00", align 1
@.str.22.171 = private unnamed_addr constant [12 x i8] c" group=\22%s\22\00", align 1
@.str.23.172 = private unnamed_addr constant [13 x i8] c" size=\22%lld\22\00", align 1
@.str.24.173 = private unnamed_addr constant [11 x i8] c" time=\22%s\22\00", align 1
@.str.13.176 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.14.177 = private unnamed_addr constant [18 x i8] c"<error>%s</error>\00", align 1
@.str.15.178 = private unnamed_addr constant [7 x i8] c"</%s>\0A\00", align 1
@.str.2.181 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1.182 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.183 = private unnamed_addr constant [27 x i8] c"{\22error\22: \22opening dir\22}%s\00", align 1
@.str.3.184 = private unnamed_addr constant [60 x i8] c", \22error\22: \22%d entries exceeds filelimit, not opening dir\22\0A\00", align 1
@.str.17.185 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.18.186 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4.187 = private unnamed_addr constant [13 x i8] c"{\22type\22:\22%s\22\00", align 1
@.str.5.188 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6.189 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.7.190 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.9.191 = private unnamed_addr constant [10 x i8] c",\22name\22:\22\00", align 1
@.str.10.192 = private unnamed_addr constant [12 x i8] c",\22target\22:\22\00", align 1
@.str.11.193 = private unnamed_addr constant [14 x i8] c",\22contents\22:[\00", align 1
@.str.12.194 = private unnamed_addr constant [36 x i8] c"{\22error\22:\22recursive, not followed\22}\00", align 1
@.str.13.195 = private unnamed_addr constant [3 x i8] c"]}\00", align 1
@.str.19.196 = private unnamed_addr constant [13 x i8] c",\22inode\22:%ld\00", align 1
@.str.20.197 = private unnamed_addr constant [10 x i8] c",\22dev\22:%d\00", align 1
@.str.21.198 = private unnamed_addr constant [27 x i8] c",\22mode\22:\22%04o\22,\22prot\22:\22%s\22\00", align 1
@.str.22.199 = private unnamed_addr constant [13 x i8] c",\22user\22:\22%s\22\00", align 1
@.str.23.200 = private unnamed_addr constant [14 x i8] c",\22group\22:\22%s\22\00", align 1
@.str.24.201 = private unnamed_addr constant [13 x i8] c",\22size\22:%lld\00", align 1
@.str.25.202 = private unnamed_addr constant [13 x i8] c",\22time\22:\22%s\22\00", align 1
@.str.14.205 = private unnamed_addr constant [3 x i8] c"},\00", align 1
@.str.15.206 = private unnamed_addr constant [14 x i8] c",\22error\22:\22%s\22\00", align 1
@.str.16.207 = private unnamed_addr constant [6 x i8] c"]},%s\00", align 1
@utable = common local_unnamed_addr global [256 x %struct.xtable*] zeroinitializer, align 16
@gtable = common local_unnamed_addr global [256 x %struct.xtable*] zeroinitializer, align 16
@itable = common local_unnamed_addr global [256 x %struct.inotable*] zeroinitializer, align 16
@.str.216 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@colorize = local_unnamed_addr global i32 0, align 4
@ansilines = local_unnamed_addr global i32 0, align 4
@linktargetcolor = local_unnamed_addr global i32 0, align 4
@termmatch = local_unnamed_addr global i8 0, align 1
@leftcode = local_unnamed_addr global i8* null, align 8
@rightcode = local_unnamed_addr global i8* null, align 8
@endcode = local_unnamed_addr global i8* null, align 8
@norm_flgs = local_unnamed_addr global i8* null, align 8
@file_flgs = local_unnamed_addr global i8* null, align 8
@dir_flgs = local_unnamed_addr global i8* null, align 8
@link_flgs = local_unnamed_addr global i8* null, align 8
@fifo_flgs = local_unnamed_addr global i8* null, align 8
@door_flgs = local_unnamed_addr global i8* null, align 8
@block_flgs = local_unnamed_addr global i8* null, align 8
@char_flgs = local_unnamed_addr global i8* null, align 8
@orphan_flgs = local_unnamed_addr global i8* null, align 8
@sock_flgs = local_unnamed_addr global i8* null, align 8
@suid_flgs = local_unnamed_addr global i8* null, align 8
@sgid_flgs = local_unnamed_addr global i8* null, align 8
@stickyow_flgs = local_unnamed_addr global i8* null, align 8
@otherwr_flgs = local_unnamed_addr global i8* null, align 8
@sticky_flgs = local_unnamed_addr global i8* null, align 8
@exec_flgs = local_unnamed_addr global i8* null, align 8
@missing_flgs = local_unnamed_addr global i8* null, align 8
@vgacolor = local_unnamed_addr global [18 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.232, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.233, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.234, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.235, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5.236, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.237, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.238, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8.239, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.232, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.233, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.234, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.235, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5.236, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.237, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.231, i32 0, i32 0)], align 16
@.str.231 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.1.232 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.2.233 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.3.234 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.4.235 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.5.236 = private unnamed_addr constant [8 x i8] c"fuchsia\00", align 1
@.str.6.237 = private unnamed_addr constant [5 x i8] c"aqua\00", align 1
@.str.7.238 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.8.239 = private unnamed_addr constant [12 x i8] c"transparent\00", align 1
@ext = local_unnamed_addr global %struct.extensions* null, align 8
@linedraw = common local_unnamed_addr global %struct.linedraw* null, align 8
@term = common local_unnamed_addr global i8* null, align 8
@istty = common local_unnamed_addr global i8 0, align 1
@colortable = common local_unnamed_addr global [11 x %struct.colortable] zeroinitializer, align 16
@.str.9.244 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.10.245 = private unnamed_addr constant [12 x i8] c"TREE_COLORS\00", align 1
@.str.11.246 = private unnamed_addr constant [10 x i8] c"LS_COLORS\00", align 1
@.str.12.247 = private unnamed_addr constant [947 x i8] c":no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.bat=01;32:*.BAT=01;32:*.btm=01;32:*.BTM=01;32:*.cmd=01;32:*.CMD=01;32:*.com=01;32:*.COM=01;32:*.dll=01;32:*.DLL=01;32:*.exe=01;32:*.EXE=01;32:*.arj=01;31:*.bz2=01;31:*.deb=01;31:*.gz=01;31:*.lzh=01;31:*.rpm=01;31:*.tar=01;31:*.taz=01;31:*.tb2=01;31:*.tbz2=01;31:*.tbz=01;31:*.tgz=01;31:*.tz2=01;31:*.z=01;31:*.Z=01;31:*.zip=01;31:*.ZIP=01;31:*.zoo=01;31:*.asf=01;35:*.ASF=01;35:*.avi=01;35:*.AVI=01;35:*.bmp=01;35:*.BMP=01;35:*.flac=01;35:*.FLAC=01;35:*.gif=01;35:*.GIF=01;35:*.jpg=01;35:*.JPG=01;35:*.jpeg=01;35:*.JPEG=01;35:*.m2a=01;35:*.M2a=01;35:*.m2v=01;35:*.M2V=01;35:*.mov=01;35:*.MOV=01;35:*.mp3=01;35:*.MP3=01;35:*.mpeg=01;35:*.MPEG=01;35:*.mpg=01;35:*.MPG=01;35:*.ogg=01;35:*.OGG=01;35:*.ppm=01;35:*.rm=01;35:*.RM=01;35:*.tga=01;35:*.TGA=01;35:*.tif=01;35:*.TIF=01;35:*.wav=01;35:*.WAV=01;35:*.wmv=01;35:*.WMV=01;35:*.xbm=01;35:*.xpm=01;35:\00", align 1
@.str.13.248 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.14.249 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@cmd.cmds = internal unnamed_addr constant [21 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21.255, i32 0, i32 0), i8 4 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22.256, i32 0, i32 0), i8 5 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23.257, i32 0, i32 0), i8 6 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24.258, i32 0, i32 0), i8 7 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25.259, i32 0, i32 0), i8 8 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26.260, i32 0, i32 0), i8 9 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27.261, i32 0, i32 0), i8 10 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28.262, i32 0, i32 0), i8 11 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29.263, i32 0, i32 0), i8 12 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30.264, i32 0, i32 0), i8 13 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31.265, i32 0, i32 0), i8 14 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32.266, i32 0, i32 0), i8 15 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33.267, i32 0, i32 0), i8 16 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34.268, i32 0, i32 0), i8 17 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35.269, i32 0, i32 0), i8 18 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36.270, i32 0, i32 0), i8 19 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37.271, i32 0, i32 0), i8 20 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38.272, i32 0, i32 0), i8 21 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39.273, i32 0, i32 0), i8 22 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40.274, i32 0, i32 0), i8 23 }, %struct.anon zeroinitializer], align 16
@.str.15.250 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.16.251 = private unnamed_addr constant [6 x i8] c"01;36\00", align 1
@.str.17.252 = private unnamed_addr constant [3 x i8] c"\1B[\00", align 1
@.str.19.253 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.20.254 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.21.255 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.22.256 = private unnamed_addr constant [3 x i8] c"fi\00", align 1
@.str.23.257 = private unnamed_addr constant [3 x i8] c"di\00", align 1
@.str.24.258 = private unnamed_addr constant [3 x i8] c"ln\00", align 1
@.str.25.259 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.26.260 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.27.261 = private unnamed_addr constant [3 x i8] c"bd\00", align 1
@.str.28.262 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.29.263 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.30.264 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str.31.265 = private unnamed_addr constant [3 x i8] c"su\00", align 1
@.str.32.266 = private unnamed_addr constant [3 x i8] c"sg\00", align 1
@.str.33.267 = private unnamed_addr constant [3 x i8] c"tw\00", align 1
@.str.34.268 = private unnamed_addr constant [3 x i8] c"ow\00", align 1
@.str.35.269 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.36.270 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.37.271 = private unnamed_addr constant [3 x i8] c"mi\00", align 1
@.str.38.272 = private unnamed_addr constant [3 x i8] c"lc\00", align 1
@.str.39.273 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str.40.274 = private unnamed_addr constant [3 x i8] c"ec\00", align 1
@.str.41.279 = private unnamed_addr constant [13 x i8] c"TREE_CHARSET\00", align 1
@.str.187 = private unnamed_addr constant [62 x i8] c"tree: missing argument to --charset, valid charsets include:\0A\00", align 1
@initlinedraw.cstable = internal constant [16 x %struct.linedraw] [%struct.linedraw { i8** getelementptr inbounds ([15 x i8*], [15 x i8*]* @initlinedraw.latin1_3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148.296, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149.297, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.150.298, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.151.299, i32 0, i32 0) }, %struct.linedraw { i8** getelementptr inbounds ([22 x i8*], [22 x i8*]* @initlinedraw.iso8859_789, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148.296, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149.297, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.150.298, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152.300, i32 0, i32 0) }, %struct.linedraw { i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @initlinedraw.shift_jis, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.153.301, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152.300, i32 0, i32 0) }, %struct.linedraw { i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @initlinedraw.euc_jp, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152.300, i32 0, i32 0) }, %struct.linedraw { i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @initlinedraw.euc_kr, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152.300, i32 0, i32 0) }, %struct.linedraw { i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @initlinedraw.iso2022jp, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152.300, i32 0, i32 0) }, %struct.linedraw { i8** getelementptr inbounds ([25 x i8*], [25 x i8*]* @initlinedraw.ibm_pc, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152.300, i32 0, i32 0) }, %struct.linedraw { i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @initlinedraw.ibm_ps2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.168, i32 0, i32 0) }, %struct.linedraw { i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @initlinedraw.ibm_gr, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.169, i32 0, i32 0) }, %struct.linedraw { i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @initlinedraw.gb, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152.300, i32 0, i32 0) }, %struct.linedraw { i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @initlinedraw.utf8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.176, i32 0, i32 0) }, %struct.linedraw { i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @initlinedraw.big5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152.300, i32 0, i32 0) }, %struct.linedraw { i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @initlinedraw.viscii, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148.296, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149.297, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i32 0, i32 0) }, %struct.linedraw { i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @initlinedraw.koi8ru, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.183.302, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.185, i32 0, i32 0) }, %struct.linedraw { i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @initlinedraw.windows, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148.296, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149.297, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i32 0, i32 0) }, %struct.linedraw { i8** null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148.296, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149.297, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152.300, i32 0, i32 0) }], align 16
@initlinedraw.latin1_3 = internal global [15 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42.282, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43.283, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44.284, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45.285, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46.286, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47.287, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48.288, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49.289, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50.290, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51.291, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52.292, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53.293, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54.294, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55.295, i32 0, i32 0), i8* null], align 16
@.str.188 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.42.282 = private unnamed_addr constant [11 x i8] c"ISO-8859-1\00", align 1
@.str.43.283 = private unnamed_addr constant [16 x i8] c"ISO-8859-1:1987\00", align 1
@.str.44.284 = private unnamed_addr constant [11 x i8] c"ISO_8859-1\00", align 1
@.str.45.285 = private unnamed_addr constant [7 x i8] c"latin1\00", align 1
@.str.46.286 = private unnamed_addr constant [3 x i8] c"l1\00", align 1
@.str.47.287 = private unnamed_addr constant [7 x i8] c"IBM819\00", align 1
@.str.48.288 = private unnamed_addr constant [6 x i8] c"CP819\00", align 1
@.str.49.289 = private unnamed_addr constant [12 x i8] c"csISOLatin1\00", align 1
@.str.50.290 = private unnamed_addr constant [11 x i8] c"ISO-8859-3\00", align 1
@.str.51.291 = private unnamed_addr constant [16 x i8] c"ISO_8859-3:1988\00", align 1
@.str.52.292 = private unnamed_addr constant [11 x i8] c"ISO_8859-3\00", align 1
@.str.53.293 = private unnamed_addr constant [7 x i8] c"latin3\00", align 1
@.str.54.294 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.55.295 = private unnamed_addr constant [12 x i8] c"csISOLatin3\00", align 1
@.str.148.296 = private unnamed_addr constant [4 x i8] c"|  \00", align 1
@.str.149.297 = private unnamed_addr constant [4 x i8] c"|--\00", align 1
@.str.150.298 = private unnamed_addr constant [11 x i8] c"&middot;--\00", align 1
@.str.151.299 = private unnamed_addr constant [7 x i8] c"&copy;\00", align 1
@initlinedraw.iso8859_789 = internal global [22 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56.373, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57.374, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58.375, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59.376, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60.377, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61.378, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62.379, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64.380, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65.381, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66.382, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67.383, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68.384, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69.385, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70.386, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71.387, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72.388, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73.389, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74.390, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75.391, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76.392, i32 0, i32 0), i8* null], align 16
@.str.152.300 = private unnamed_addr constant [4 x i8] c"(c)\00", align 1
@initlinedraw.shift_jis = internal global [4 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77.370, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78.371, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79.372, i32 0, i32 0), i8* null], align 16
@.str.153.301 = private unnamed_addr constant [4 x i8] c"\84\A0 \00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c"\84\A5\00", align 1
@.str.155 = private unnamed_addr constant [3 x i8] c"\84\A4\00", align 1
@initlinedraw.euc_jp = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80.367, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.81.368, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82.369, i32 0, i32 0), i8* null], align 16
@.str.156 = private unnamed_addr constant [4 x i8] c"\A8\A2 \00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"\A8\A7\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"\A8\A6\00", align 1
@initlinedraw.euc_kr = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83.365, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84.366, i32 0, i32 0), i8* null], align 16
@.str.159 = private unnamed_addr constant [4 x i8] c"\A6\A2 \00", align 1
@.str.160 = private unnamed_addr constant [3 x i8] c"\A6\A7\00", align 1
@.str.161 = private unnamed_addr constant [3 x i8] c"\A6\A6\00", align 1
@initlinedraw.iso2022jp = internal global [5 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85.361, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86.362, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87.363, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.88.364, i32 0, i32 0), i8* null], align 16
@.str.162 = private unnamed_addr constant [10 x i8] c"\1B$B(\22\1B(B \00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"\1B$B('\1B(B\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"\1B$B(&\1B(B\00", align 1
@initlinedraw.ibm_pc = internal global [25 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89.337, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90.338, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91.339, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.92.340, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93.341, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94.342, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95.343, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96.344, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97.345, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98.346, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99.347, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100.348, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101.349, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102.350, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103.351, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.104.352, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105.353, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106.354, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107.355, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.108.356, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109.357, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110.358, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111.359, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112.360, i32 0, i32 0), i8* null], align 16
@.str.165 = private unnamed_addr constant [4 x i8] c"\B3  \00", align 1
@.str.166 = private unnamed_addr constant [4 x i8] c"\C3\C4\C4\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"\C0\C4\C4\00", align 1
@initlinedraw.ibm_ps2 = internal global [9 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113.330, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114.331, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115.332, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.116.333, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.118.334, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119.335, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.120.336, i32 0, i32 0), i8* null], align 16
@.str.168 = private unnamed_addr constant [2 x i8] c"\97\00", align 1
@initlinedraw.ibm_gr = internal global [6 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121.325, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122.326, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123.327, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124.328, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.125.329, i32 0, i32 0), i8* null], align 16
@.str.169 = private unnamed_addr constant [2 x i8] c"\B8\00", align 1
@initlinedraw.gb = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.126.323, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.127.324, i32 0, i32 0), i8* null], align 16
@.str.170 = private unnamed_addr constant [4 x i8] c"\A9\A6 \00", align 1
@.str.171 = private unnamed_addr constant [3 x i8] c"\A9\C0\00", align 1
@.str.172 = private unnamed_addr constant [3 x i8] c"\A9\B8\00", align 1
@initlinedraw.utf8 = internal global [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128.321, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129.322, i32 0, i32 0), i8* null], align 16
@.str.173 = private unnamed_addr constant [8 x i8] c"\E2\94\82\C2\A0\C2\A0\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"\E2\94\9C\E2\94\80\E2\94\80\00", align 1
@.str.175 = private unnamed_addr constant [10 x i8] c"\E2\94\94\E2\94\80\E2\94\80\00", align 1
@.str.176 = private unnamed_addr constant [3 x i8] c"\C2\A9\00", align 1
@initlinedraw.big5 = internal global [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130.319, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131.320, i32 0, i32 0), i8* null], align 16
@.str.177 = private unnamed_addr constant [4 x i8] c"\A2x \00", align 1
@.str.178 = private unnamed_addr constant [3 x i8] c"\A2u\00", align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"\A2|\00", align 1
@initlinedraw.viscii = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132.317, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.133.318, i32 0, i32 0), i8* null], align 16
@.str.180 = private unnamed_addr constant [4 x i8] c"`--\00", align 1
@.str.181 = private unnamed_addr constant [2 x i8] c"\F9\00", align 1
@initlinedraw.koi8ru = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134.314, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.135.315, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136.316, i32 0, i32 0), i8* null], align 16
@.str.182 = private unnamed_addr constant [4 x i8] c"\81  \00", align 1
@.str.183.302 = private unnamed_addr constant [4 x i8] c"\86\80\80\00", align 1
@.str.184 = private unnamed_addr constant [4 x i8] c"\84\80\80\00", align 1
@.str.185 = private unnamed_addr constant [2 x i8] c"\BF\00", align 1
@initlinedraw.windows = internal global [13 x i8*] [i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.137.303, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.138.304, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.139.305, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.140.306, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141.307, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.142.308, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.143.309, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.144.310, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.145.311, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.146.312, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.146.312, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.147.313, i32 0, i32 0), i8* null], align 16
@.str.186 = private unnamed_addr constant [2 x i8] c"\A9\00", align 1
@.str.137.303 = private unnamed_addr constant [31 x i8] c"ISO-8859-1-Windows-3.1-Latin-1\00", align 1
@.str.138.304 = private unnamed_addr constant [18 x i8] c"csWindows31Latin1\00", align 1
@.str.139.305 = private unnamed_addr constant [27 x i8] c"ISO-8859-2-Windows-Latin-2\00", align 1
@.str.140.306 = private unnamed_addr constant [18 x i8] c"csWindows31Latin2\00", align 1
@.str.141.307 = private unnamed_addr constant [13 x i8] c"windows-1250\00", align 1
@.str.142.308 = private unnamed_addr constant [13 x i8] c"windows-1251\00", align 1
@.str.143.309 = private unnamed_addr constant [13 x i8] c"windows-1253\00", align 1
@.str.144.310 = private unnamed_addr constant [13 x i8] c"windows-1254\00", align 1
@.str.145.311 = private unnamed_addr constant [13 x i8] c"windows-1255\00", align 1
@.str.146.312 = private unnamed_addr constant [13 x i8] c"windows-1256\00", align 1
@.str.147.313 = private unnamed_addr constant [13 x i8] c"windows-1257\00", align 1
@.str.134.314 = private unnamed_addr constant [7 x i8] c"KOI8-R\00", align 1
@.str.135.315 = private unnamed_addr constant [8 x i8] c"csKOI8R\00", align 1
@.str.136.316 = private unnamed_addr constant [7 x i8] c"KOI8-U\00", align 1
@.str.132.317 = private unnamed_addr constant [7 x i8] c"VISCII\00", align 1
@.str.133.318 = private unnamed_addr constant [9 x i8] c"csVISCII\00", align 1
@.str.130.319 = private unnamed_addr constant [5 x i8] c"Big5\00", align 1
@.str.131.320 = private unnamed_addr constant [7 x i8] c"csBig5\00", align 1
@.str.128.321 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.129.322 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.126.323 = private unnamed_addr constant [7 x i8] c"GB2312\00", align 1
@.str.127.324 = private unnamed_addr constant [9 x i8] c"csGB2312\00", align 1
@.str.121.325 = private unnamed_addr constant [7 x i8] c"IBM869\00", align 1
@.str.122.326 = private unnamed_addr constant [6 x i8] c"cp869\00", align 1
@.str.123.327 = private unnamed_addr constant [4 x i8] c"869\00", align 1
@.str.124.328 = private unnamed_addr constant [6 x i8] c"cp-gr\00", align 1
@.str.125.329 = private unnamed_addr constant [9 x i8] c"csIBM869\00", align 1
@.str.113.330 = private unnamed_addr constant [7 x i8] c"IBM850\00", align 1
@.str.114.331 = private unnamed_addr constant [6 x i8] c"cp850\00", align 1
@.str.115.332 = private unnamed_addr constant [4 x i8] c"850\00", align 1
@.str.116.333 = private unnamed_addr constant [20 x i8] c"csPC850Multilingual\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"IBM00858\00", align 1
@.str.118.334 = private unnamed_addr constant [11 x i8] c"CCSID00858\00", align 1
@.str.119.335 = private unnamed_addr constant [8 x i8] c"CP00858\00", align 1
@.str.120.336 = private unnamed_addr constant [25 x i8] c"PC-Multilingual-850+euro\00", align 1
@.str.89.337 = private unnamed_addr constant [7 x i8] c"IBM437\00", align 1
@.str.90.338 = private unnamed_addr constant [6 x i8] c"cp437\00", align 1
@.str.91.339 = private unnamed_addr constant [4 x i8] c"437\00", align 1
@.str.92.340 = private unnamed_addr constant [17 x i8] c"csPC8CodePage437\00", align 1
@.str.93.341 = private unnamed_addr constant [7 x i8] c"IBM852\00", align 1
@.str.94.342 = private unnamed_addr constant [6 x i8] c"cp852\00", align 1
@.str.95.343 = private unnamed_addr constant [4 x i8] c"852\00", align 1
@.str.96.344 = private unnamed_addr constant [9 x i8] c"csPCp852\00", align 1
@.str.97.345 = private unnamed_addr constant [7 x i8] c"IBM863\00", align 1
@.str.98.346 = private unnamed_addr constant [6 x i8] c"cp863\00", align 1
@.str.99.347 = private unnamed_addr constant [4 x i8] c"863\00", align 1
@.str.100.348 = private unnamed_addr constant [9 x i8] c"csIBM863\00", align 1
@.str.101.349 = private unnamed_addr constant [7 x i8] c"IBM855\00", align 1
@.str.102.350 = private unnamed_addr constant [6 x i8] c"cp855\00", align 1
@.str.103.351 = private unnamed_addr constant [4 x i8] c"855\00", align 1
@.str.104.352 = private unnamed_addr constant [9 x i8] c"csIBM855\00", align 1
@.str.105.353 = private unnamed_addr constant [7 x i8] c"IBM865\00", align 1
@.str.106.354 = private unnamed_addr constant [6 x i8] c"cp865\00", align 1
@.str.107.355 = private unnamed_addr constant [4 x i8] c"865\00", align 1
@.str.108.356 = private unnamed_addr constant [9 x i8] c"csIBM865\00", align 1
@.str.109.357 = private unnamed_addr constant [7 x i8] c"IBM866\00", align 1
@.str.110.358 = private unnamed_addr constant [6 x i8] c"cp866\00", align 1
@.str.111.359 = private unnamed_addr constant [4 x i8] c"866\00", align 1
@.str.112.360 = private unnamed_addr constant [9 x i8] c"csIBM866\00", align 1
@.str.85.361 = private unnamed_addr constant [12 x i8] c"ISO-2022-JP\00", align 1
@.str.86.362 = private unnamed_addr constant [12 x i8] c"csISO2022JP\00", align 1
@.str.87.363 = private unnamed_addr constant [14 x i8] c"ISO-2022-JP-2\00", align 1
@.str.88.364 = private unnamed_addr constant [13 x i8] c"csISO2022JP2\00", align 1
@.str.83.365 = private unnamed_addr constant [7 x i8] c"EUC-KR\00", align 1
@.str.84.366 = private unnamed_addr constant [8 x i8] c"csEUCKR\00", align 1
@.str.80.367 = private unnamed_addr constant [7 x i8] c"EUC-JP\00", align 1
@.str.81.368 = private unnamed_addr constant [46 x i8] c"Extended_UNIX_Code_Packed_Format_for_Japanese\00", align 1
@.str.82.369 = private unnamed_addr constant [20 x i8] c"csEUCPkdFmtJapanese\00", align 1
@.str.77.370 = private unnamed_addr constant [10 x i8] c"Shift_JIS\00", align 1
@.str.78.371 = private unnamed_addr constant [9 x i8] c"MS_Kanji\00", align 1
@.str.79.372 = private unnamed_addr constant [11 x i8] c"csShiftJIS\00", align 1
@.str.56.373 = private unnamed_addr constant [11 x i8] c"ISO-8859-7\00", align 1
@.str.57.374 = private unnamed_addr constant [16 x i8] c"ISO_8859-7:1987\00", align 1
@.str.58.375 = private unnamed_addr constant [11 x i8] c"ISO_8859-7\00", align 1
@.str.59.376 = private unnamed_addr constant [9 x i8] c"ELOT_928\00", align 1
@.str.60.377 = private unnamed_addr constant [9 x i8] c"ECMA-118\00", align 1
@.str.61.378 = private unnamed_addr constant [6 x i8] c"greek\00", align 1
@.str.62.379 = private unnamed_addr constant [7 x i8] c"greek8\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"csISOLatinGreek\00", align 1
@.str.64.380 = private unnamed_addr constant [11 x i8] c"ISO-8859-8\00", align 1
@.str.65.381 = private unnamed_addr constant [16 x i8] c"ISO_8859-8:1988\00", align 1
@.str.66.382 = private unnamed_addr constant [11 x i8] c"iso-ir-138\00", align 1
@.str.67.383 = private unnamed_addr constant [11 x i8] c"ISO_8859-8\00", align 1
@.str.68.384 = private unnamed_addr constant [7 x i8] c"hebrew\00", align 1
@.str.69.385 = private unnamed_addr constant [17 x i8] c"csISOLatinHebrew\00", align 1
@.str.70.386 = private unnamed_addr constant [11 x i8] c"ISO-8859-9\00", align 1
@.str.71.387 = private unnamed_addr constant [16 x i8] c"ISO_8859-9:1989\00", align 1
@.str.72.388 = private unnamed_addr constant [11 x i8] c"iso-ir-148\00", align 1
@.str.73.389 = private unnamed_addr constant [11 x i8] c"ISO_8859-9\00", align 1
@.str.74.390 = private unnamed_addr constant [7 x i8] c"latin5\00", align 1
@.str.75.391 = private unnamed_addr constant [3 x i8] c"l5\00", align 1
@.str.76.392 = private unnamed_addr constant [12 x i8] c"csISOLatin5\00", align 1
@strverscmp.next_state = internal unnamed_addr constant [16 x i32] [i32 0, i32 4, i32 12, i32 0, i32 0, i32 4, i32 4, i32 4, i32 0, i32 8, i32 8, i32 8, i32 0, i32 8, i32 12, i32 12], align 16
@strverscmp.result_type = internal unnamed_addr constant [60 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 3, i32 2, i32 1, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 2, i32 -1, i32 2, i32 2, i32 2, i32 -1, i32 2, i32 2, i32 2], align 16

; Function Attrs: nounwind readonly uwtable
define i32 @alnumsort(%struct._info** nocapture readonly %a, %struct._info** nocapture readonly %b) #0 {
entry:
  %0 = load i32, i32* @dirsfirst, align 4, !tbaa !2
  %tobool = icmp eq i32 %0, 0
  %.pre = load %struct._info*, %struct._info** %a, align 8, !tbaa !5
  br i1 %tobool, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre11 = load %struct._info*, %struct._info** %b, align 8, !tbaa !5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %isdir = getelementptr inbounds %struct._info, %struct._info* %.pre, i64 0, i32 2
  %1 = load i32, i32* %isdir, align 8, !tbaa !7
  %2 = load %struct._info*, %struct._info** %b, align 8, !tbaa !5
  %isdir1 = getelementptr inbounds %struct._info, %struct._info* %2, i64 0, i32 2
  %3 = load i32, i32* %isdir1, align 8, !tbaa !7
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tobool3 = icmp eq i32 %1, 0
  %cond = select i1 %tobool3, i32 1, i32 -1
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %land.lhs.true
  %4 = phi %struct._info* [ %.pre11, %entry.if.end_crit_edge ], [ %2, %land.lhs.true ]
  %name = getelementptr inbounds %struct._info, %struct._info* %.pre, i64 0, i32 0
  %5 = load i8*, i8** %name, align 8, !tbaa !11
  %name4 = getelementptr inbounds %struct._info, %struct._info* %4, i64 0, i32 0
  %6 = load i8*, i8** %name4, align 8, !tbaa !11
  %call = tail call i32 @strcoll(i8* %5, i8* %6) #13
  %7 = load i32, i32* @reverse, align 4, !tbaa !2
  %tobool5 = icmp eq i32 %7, 0
  %sub = sub nsw i32 0, %call
  %cond6 = select i1 %tobool5, i32 %call, i32 %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %cond6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind readonly uwtable
define i32 @versort(%struct._info** nocapture readonly %a, %struct._info** nocapture readonly %b) #0 {
entry:
  %0 = load i32, i32* @dirsfirst, align 4, !tbaa !2
  %tobool = icmp eq i32 %0, 0
  %.pre = load %struct._info*, %struct._info** %a, align 8, !tbaa !5
  br i1 %tobool, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre11 = load %struct._info*, %struct._info** %b, align 8, !tbaa !5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %isdir = getelementptr inbounds %struct._info, %struct._info* %.pre, i64 0, i32 2
  %1 = load i32, i32* %isdir, align 8, !tbaa !7
  %2 = load %struct._info*, %struct._info** %b, align 8, !tbaa !5
  %isdir1 = getelementptr inbounds %struct._info, %struct._info* %2, i64 0, i32 2
  %3 = load i32, i32* %isdir1, align 8, !tbaa !7
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tobool3 = icmp eq i32 %1, 0
  %cond = select i1 %tobool3, i32 1, i32 -1
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %land.lhs.true
  %4 = phi %struct._info* [ %.pre11, %entry.if.end_crit_edge ], [ %2, %land.lhs.true ]
  %name = getelementptr inbounds %struct._info, %struct._info* %.pre, i64 0, i32 0
  %5 = load i8*, i8** %name, align 8, !tbaa !11
  %name4 = getelementptr inbounds %struct._info, %struct._info* %4, i64 0, i32 0
  %6 = load i8*, i8** %name4, align 8, !tbaa !11
  %call = tail call i32 @strverscmp(i8* %5, i8* %6) #13
  %7 = load i32, i32* @reverse, align 4, !tbaa !2
  %tobool5 = icmp eq i32 %7, 0
  %sub = sub nsw i32 0, %call
  %cond6 = select i1 %tobool5, i32 %call, i32 %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %cond6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly uwtable
define i32 @fsizesort(%struct._info** nocapture readonly %a, %struct._info** nocapture readonly %b) #0 {
entry:
  %0 = load i32, i32* @dirsfirst, align 4, !tbaa !2
  %tobool = icmp eq i32 %0, 0
  %.pre = load %struct._info*, %struct._info** %a, align 8, !tbaa !5
  br i1 %tobool, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre19 = load %struct._info*, %struct._info** %b, align 8, !tbaa !5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %isdir = getelementptr inbounds %struct._info, %struct._info* %.pre, i64 0, i32 2
  %1 = load i32, i32* %isdir, align 8, !tbaa !7
  %2 = load %struct._info*, %struct._info** %b, align 8, !tbaa !5
  %isdir1 = getelementptr inbounds %struct._info, %struct._info* %2, i64 0, i32 2
  %3 = load i32, i32* %isdir1, align 8, !tbaa !7
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tobool3 = icmp eq i32 %1, 0
  %cond = select i1 %tobool3, i32 1, i32 -1
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %land.lhs.true
  %4 = phi %struct._info* [ %.pre19, %entry.if.end_crit_edge ], [ %2, %land.lhs.true ]
  %size = getelementptr inbounds %struct._info, %struct._info* %.pre, i64 0, i32 11
  %5 = load i64, i64* %size, align 8, !tbaa !12
  %size4 = getelementptr inbounds %struct._info, %struct._info* %4, i64 0, i32 11
  %6 = load i64, i64* %size4, align 8, !tbaa !12
  %cmp.i = icmp eq i64 %5, %6
  %cmp1.i = icmp slt i64 %5, %6
  %cond.i = select i1 %cmp1.i, i32 1, i32 -1
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct._info, %struct._info* %.pre, i64 0, i32 0
  %7 = load i8*, i8** %name, align 8, !tbaa !11
  %name7 = getelementptr inbounds %struct._info, %struct._info* %4, i64 0, i32 0
  %8 = load i8*, i8** %name7, align 8, !tbaa !11
  %call8 = tail call i32 @strcoll(i8* %7, i8* %8) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %v.0 = phi i32 [ %call8, %if.then6 ], [ %cond.i, %if.end ]
  %9 = load i32, i32* @reverse, align 4, !tbaa !2
  %tobool10 = icmp eq i32 %9, 0
  %sub = sub nsw i32 0, %v.0
  %cond11 = select i1 %tobool10, i32 %v.0, i32 %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %cond11, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly uwtable
define i32 @mtimesort(%struct._info** nocapture readonly %a, %struct._info** nocapture readonly %b) #0 {
entry:
  %0 = load i32, i32* @dirsfirst, align 4, !tbaa !2
  %tobool = icmp eq i32 %0, 0
  %.pre = load %struct._info*, %struct._info** %a, align 8, !tbaa !5
  br i1 %tobool, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre38 = load %struct._info*, %struct._info** %b, align 8, !tbaa !5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %isdir = getelementptr inbounds %struct._info, %struct._info* %.pre, i64 0, i32 2
  %1 = load i32, i32* %isdir, align 8, !tbaa !7
  %2 = load %struct._info*, %struct._info** %b, align 8, !tbaa !5
  %isdir1 = getelementptr inbounds %struct._info, %struct._info* %2, i64 0, i32 2
  %3 = load i32, i32* %isdir1, align 8, !tbaa !7
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tobool3 = icmp eq i32 %1, 0
  %cond = select i1 %tobool3, i32 1, i32 -1
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %land.lhs.true
  %4 = phi %struct._info* [ %.pre38, %entry.if.end_crit_edge ], [ %2, %land.lhs.true ]
  %mtime = getelementptr inbounds %struct._info, %struct._info* %.pre, i64 0, i32 14
  %5 = load i64, i64* %mtime, align 8, !tbaa !13
  %mtime4 = getelementptr inbounds %struct._info, %struct._info* %4, i64 0, i32 14
  %6 = load i64, i64* %mtime4, align 8, !tbaa !13
  %cmp5 = icmp eq i64 %5, %6
  br i1 %cmp5, label %if.then6, label %cond.false15

if.then6:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct._info, %struct._info* %.pre, i64 0, i32 0
  %7 = load i8*, i8** %name, align 8, !tbaa !11
  %name7 = getelementptr inbounds %struct._info, %struct._info* %4, i64 0, i32 0
  %8 = load i8*, i8** %name7, align 8, !tbaa !11
  %call = tail call i32 @strcoll(i8* %7, i8* %8) #13
  %9 = load i32, i32* @reverse, align 4, !tbaa !2
  %tobool8 = icmp eq i32 %9, 0
  %sub = sub nsw i32 0, %call
  %cond9 = select i1 %tobool8, i32 %call, i32 %sub
  br label %cleanup

cond.false15:                                     ; preds = %if.end
  %cmp18 = icmp slt i64 %5, %6
  %cond19 = select i1 %cmp18, i32 -1, i32 1
  %10 = load i32, i32* @reverse, align 4, !tbaa !2
  %tobool22 = icmp eq i32 %10, 0
  %sub24 = sub nsw i32 0, %cond19
  %cond27 = select i1 %tobool22, i32 %cond19, i32 %sub24
  br label %cleanup

cleanup:                                          ; preds = %cond.false15, %if.then6, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %cond9, %if.then6 ], [ %cond27, %cond.false15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly uwtable
define i32 @ctimesort(%struct._info** nocapture readonly %a, %struct._info** nocapture readonly %b) #0 {
entry:
  %0 = load i32, i32* @dirsfirst, align 4, !tbaa !2
  %tobool = icmp eq i32 %0, 0
  %.pre = load %struct._info*, %struct._info** %a, align 8, !tbaa !5
  br i1 %tobool, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre38 = load %struct._info*, %struct._info** %b, align 8, !tbaa !5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %isdir = getelementptr inbounds %struct._info, %struct._info* %.pre, i64 0, i32 2
  %1 = load i32, i32* %isdir, align 8, !tbaa !7
  %2 = load %struct._info*, %struct._info** %b, align 8, !tbaa !5
  %isdir1 = getelementptr inbounds %struct._info, %struct._info* %2, i64 0, i32 2
  %3 = load i32, i32* %isdir1, align 8, !tbaa !7
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tobool3 = icmp eq i32 %1, 0
  %cond = select i1 %tobool3, i32 1, i32 -1
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %land.lhs.true
  %4 = phi %struct._info* [ %.pre38, %entry.if.end_crit_edge ], [ %2, %land.lhs.true ]
  %ctime = getelementptr inbounds %struct._info, %struct._info* %.pre, i64 0, i32 13
  %5 = load i64, i64* %ctime, align 8, !tbaa !14
  %ctime4 = getelementptr inbounds %struct._info, %struct._info* %4, i64 0, i32 13
  %6 = load i64, i64* %ctime4, align 8, !tbaa !14
  %cmp5 = icmp eq i64 %5, %6
  br i1 %cmp5, label %if.then6, label %cond.false15

if.then6:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct._info, %struct._info* %.pre, i64 0, i32 0
  %7 = load i8*, i8** %name, align 8, !tbaa !11
  %name7 = getelementptr inbounds %struct._info, %struct._info* %4, i64 0, i32 0
  %8 = load i8*, i8** %name7, align 8, !tbaa !11
  %call = tail call i32 @strcoll(i8* %7, i8* %8) #13
  %9 = load i32, i32* @reverse, align 4, !tbaa !2
  %tobool8 = icmp eq i32 %9, 0
  %sub = sub nsw i32 0, %call
  %cond9 = select i1 %tobool8, i32 %call, i32 %sub
  br label %cleanup

cond.false15:                                     ; preds = %if.end
  %cmp18 = icmp slt i64 %5, %6
  %cond19 = select i1 %cmp18, i32 -1, i32 1
  %10 = load i32, i32* @reverse, align 4, !tbaa !2
  %tobool22 = icmp eq i32 %10, 0
  %sub24 = sub nsw i32 0, %cond19
  %cond27 = select i1 %tobool22, i32 %cond19, i32 %sub24
  br label %cleanup

cleanup:                                          ; preds = %cond.false15, %if.then6, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %cond9, %if.then6 ], [ %cond27, %cond.false15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #2 {
entry:
  %dtotal = alloca i32, align 4
  %ftotal = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  %sizebuf = alloca [64 x i8], align 16
  %0 = bitcast i32* %dtotal to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %1 = bitcast i32* %ftotal to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %2 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %2) #5
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %sizebuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #5
  store i32 0, i32* %ftotal, align 4, !tbaa !15
  store i32 0, i32* %dtotal, align 4, !tbaa !15
  store i32 0, i32* @gflag, align 4, !tbaa !2
  store i32 0, i32* @uflag, align 4, !tbaa !2
  store i32 0, i32* @Fflag, align 4, !tbaa !2
  store i32 0, i32* @sflag, align 4, !tbaa !2
  store i32 0, i32* @pflag, align 4, !tbaa !2
  store i32 0, i32* @lflag, align 4, !tbaa !2
  store i32 0, i32* @fflag, align 4, !tbaa !2
  store i32 0, i32* @dflag, align 4, !tbaa !2
  store i32 0, i32* @aflag, align 4, !tbaa !2
  store i32 0, i32* @cflag, align 4, !tbaa !2
  store i32 0, i32* @siflag, align 4, !tbaa !2
  store i32 0, i32* @Hflag, align 4, !tbaa !2
  store i32 0, i32* @hflag, align 4, !tbaa !2
  store i32 0, i32* @Rflag, align 4, !tbaa !2
  store i32 0, i32* @Qflag, align 4, !tbaa !2
  store i32 0, i32* @Nflag, align 4, !tbaa !2
  store i32 0, i32* @qflag, align 4, !tbaa !2
  store i32 0, i32* @Dflag, align 4, !tbaa !2
  store i32 0, i32* @reverse, align 4, !tbaa !2
  store i32 0, i32* @nolinks, align 4, !tbaa !2
  store i32 0, i32* @noreport, align 4, !tbaa !2
  store i32 0, i32* @xdev, align 4, !tbaa !2
  store i32 0, i32* @nocolor, align 4, !tbaa !2
  store i32 0, i32* @force_color, align 4, !tbaa !2
  store i32 0, i32* @noindent, align 4, !tbaa !2
  store i32 0, i32* @Jflag, align 4, !tbaa !2
  store i32 0, i32* @Xflag, align 4, !tbaa !2
  store i32 0, i32* @devflag, align 4, !tbaa !2
  store i32 0, i32* @inodeflag, align 4, !tbaa !2
  store i32 0, i32* @dirsfirst, align 4, !tbaa !2
  store i32 0, i32* @matchdirs, align 4, !tbaa !2
  store i32 0, i32* @ignorecase, align 4, !tbaa !2
  store i32 0, i32* @pruneflag, align 4, !tbaa !2
  store i32 0, i32* @duflag, align 4, !tbaa !2
  store i32 0, i32* @flimit, align 4, !tbaa !2
  store i32 4096, i32* @maxdirs, align 4, !tbaa !15
  %call.i = tail call noalias i8* @malloc(i64 16384) #5
  %cmp.i = icmp eq i8* %call.i, null
  br i1 %cmp.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %4) #14
  tail call void @exit(i32 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %entry
  store i8* %call.i, i8** bitcast (i32** @dirs to i8**), align 8, !tbaa !5
  call void @llvm.memset.p0i8.i64(i8* nonnull %call.i, i8 0, i64 16384, i32 4, i1 false)
  store i32 -1, i32* @Level, align 4, !tbaa !15
  %call1 = tail call i8* @setlocale(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)) #5
  %call2 = tail call i8* @setlocale(i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)) #5
  %call3 = tail call i8* @getcharset() #5
  store i8* %call3, i8** @charset, align 8, !tbaa !5
  %cmp = icmp eq i8* %call3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %xmalloc.exit
  %call5 = tail call i8* @nl_langinfo(i32 14) #5
  %call6 = tail call i32 @strcmp(i8* %call5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)) #13
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8** @charset, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %xmalloc.exit
  store i32 1, i32* @mb_cur_max, align 4, !tbaa !15
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([256 x %struct.xtable*]* @utable to i8*), i8 0, i64 2048, i32 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([256 x %struct.xtable*]* @gtable to i8*), i8 0, i64 2048, i32 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* bitcast ([256 x %struct.inotable*]* @itable to i8*), i8 0, i64 2048, i32 16, i1 false)
  %cmp91357 = icmp sgt i32 %argc, 1
  br i1 %cmp91357, label %for.body.preheader, label %if.end557

for.body.preheader:                               ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc551
  %dirname.01363 = phi i8** [ %dirname.2, %for.inc551 ], [ null, %for.body.preheader ]
  %6 = phi i8* [ %104, %for.inc551 ], [ null, %for.body.preheader ]
  %j.01362 = phi i32 [ %j.5, %for.inc551 ], [ 0, %for.body.preheader ]
  %q.01361 = phi i32 [ %q.2, %for.inc551 ], [ 0, %for.body.preheader ]
  %p.01360 = phi i32 [ %p.1, %for.inc551 ], [ 0, %for.body.preheader ]
  %optf.01359 = phi i32 [ %optf.3, %for.inc551 ], [ 1, %for.body.preheader ]
  %n.01358 = phi i32 [ %n.5, %for.inc551 ], [ 1, %for.body.preheader ]
  %inc = add nsw i32 %n.01358, 1
  %tobool = icmp eq i32 %optf.01359, 0
  br i1 %tobool, label %if.else524, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %for.body
  %idxprom = sext i32 %n.01358 to i64
  %arrayidx12 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom
  %7 = load i8*, i8** %arrayidx12, align 8, !tbaa !5
  %8 = load i8, i8* %7, align 1, !tbaa !2
  %cmp15 = icmp eq i8 %8, 45
  br i1 %cmp15, label %land.lhs.true17, label %if.else524

land.lhs.true17:                                  ; preds = %land.lhs.true11
  %arrayidx20 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = load i8, i8* %arrayidx20, align 1, !tbaa !2
  %tobool22 = icmp eq i8 %9, 0
  br i1 %tobool22, label %if.else524, label %for.body30.preheader

for.body30.preheader:                             ; preds = %land.lhs.true17
  br label %for.body30

for.body30:                                       ; preds = %for.body30.preheader, %for.inc521
  %10 = phi i8 [ %93, %for.inc521 ], [ %9, %for.body30.preheader ]
  %11 = phi i8* [ %92, %for.inc521 ], [ %7, %for.body30.preheader ]
  %j.11353 = phi i32 [ %inc522, %for.inc521 ], [ 1, %for.body30.preheader ]
  %optf.11352 = phi i32 [ %optf.2, %for.inc521 ], [ %optf.01359, %for.body30.preheader ]
  %n.11351 = phi i32 [ %n.4, %for.inc521 ], [ %inc, %for.body30.preheader ]
  %conv35 = sext i8 %10 to i32
  switch i32 %conv35, label %sw.default [
    i32 78, label %sw.bb
    i32 113, label %sw.bb36
    i32 81, label %sw.bb37
    i32 100, label %sw.bb38
    i32 108, label %sw.bb39
    i32 115, label %sw.bb40
    i32 104, label %sw.bb41
    i32 117, label %sw.bb42
    i32 103, label %sw.bb43
    i32 102, label %sw.bb44
    i32 70, label %sw.bb45
    i32 97, label %sw.bb46
    i32 112, label %sw.bb47
    i32 105, label %sw.bb48
    i32 67, label %sw.bb49
    i32 110, label %sw.bb50
    i32 120, label %sw.bb51
    i32 80, label %sw.bb52
    i32 73, label %sw.bb63
    i32 65, label %sw.bb74
    i32 83, label %sw.bb75
    i32 68, label %sw.bb76
    i32 116, label %sw.bb77
    i32 99, label %sw.bb78
    i32 114, label %sw.bb79
    i32 118, label %sw.bb80
    i32 85, label %sw.bb81
    i32 88, label %sw.bb82
    i32 74, label %sw.bb87
    i32 72, label %sw.bb92
    i32 84, label %sw.bb107
    i32 82, label %sw.bb118
    i32 76, label %sw.bb119
    i32 111, label %sw.bb135
    i32 45, label %sw.bb146
  ]

sw.bb:                                            ; preds = %for.body30
  store i32 1, i32* @Nflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb36:                                          ; preds = %for.body30
  store i32 1, i32* @qflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb37:                                          ; preds = %for.body30
  store i32 1, i32* @Qflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb38:                                          ; preds = %for.body30
  store i32 1, i32* @dflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb39:                                          ; preds = %for.body30
  store i32 1, i32* @lflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb40:                                          ; preds = %for.body30
  store i32 1, i32* @sflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb41:                                          ; preds = %for.body30
  store i32 1, i32* @hflag, align 4, !tbaa !2
  store i32 1, i32* @sflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb42:                                          ; preds = %for.body30
  store i32 1, i32* @uflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb43:                                          ; preds = %for.body30
  store i32 1, i32* @gflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb44:                                          ; preds = %for.body30
  store i32 1, i32* @fflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb45:                                          ; preds = %for.body30
  store i32 1, i32* @Fflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb46:                                          ; preds = %for.body30
  store i32 1, i32* @aflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb47:                                          ; preds = %for.body30
  store i32 1, i32* @pflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb48:                                          ; preds = %for.body30
  store i32 1, i32* @noindent, align 4, !tbaa !2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8** @_nl, align 8, !tbaa !5
  br label %for.inc521

sw.bb49:                                          ; preds = %for.body30
  store i32 1, i32* @force_color, align 4, !tbaa !2
  br label %for.inc521

sw.bb50:                                          ; preds = %for.body30
  store i32 1, i32* @nocolor, align 4, !tbaa !2
  br label %for.inc521

sw.bb51:                                          ; preds = %for.body30
  store i32 1, i32* @xdev, align 4, !tbaa !2
  br label %for.inc521

sw.bb52:                                          ; preds = %for.body30
  %idxprom53 = sext i32 %n.11351 to i64
  %arrayidx54 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom53
  %12 = load i8*, i8** %arrayidx54, align 8, !tbaa !5
  %cmp55 = icmp eq i8* %12, null
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %sw.bb52
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %13) #16
  tail call void @exit(i32 1) #15
  unreachable

if.end59:                                         ; preds = %sw.bb52
  %inc60 = add nsw i32 %n.11351, 1
  store i8* %12, i8** @pattern, align 8, !tbaa !5
  br label %for.inc521

sw.bb63:                                          ; preds = %for.body30
  %idxprom64 = sext i32 %n.11351 to i64
  %arrayidx65 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom64
  %15 = load i8*, i8** %arrayidx65, align 8, !tbaa !5
  %cmp66 = icmp eq i8* %15, null
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %sw.bb63
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %16) #16
  tail call void @exit(i32 1) #15
  unreachable

if.end70:                                         ; preds = %sw.bb63
  %inc71 = add nsw i32 %n.11351, 1
  store i8* %15, i8** @ipattern, align 8, !tbaa !5
  br label %for.inc521

sw.bb74:                                          ; preds = %for.body30
  store i32 1, i32* @ansilines, align 4, !tbaa !2
  br label %for.inc521

sw.bb75:                                          ; preds = %for.body30
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** @charset, align 8, !tbaa !5
  br label %for.inc521

sw.bb76:                                          ; preds = %for.body30
  store i32 1, i32* @Dflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb77:                                          ; preds = %for.body30
  store i32 (...)* bitcast (i32 (%struct._info**, %struct._info**)* @mtimesort to i32 (...)*), i32 (...)** @cmpfunc, align 8, !tbaa !5
  br label %for.inc521

sw.bb78:                                          ; preds = %for.body30
  store i32 (...)* bitcast (i32 (%struct._info**, %struct._info**)* @ctimesort to i32 (...)*), i32 (...)** @cmpfunc, align 8, !tbaa !5
  store i32 1, i32* @cflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb79:                                          ; preds = %for.body30
  store i32 1, i32* @reverse, align 4, !tbaa !2
  br label %for.inc521

sw.bb80:                                          ; preds = %for.body30
  store i32 (...)* bitcast (i32 (%struct._info**, %struct._info**)* @versort to i32 (...)*), i32 (...)** @cmpfunc, align 8, !tbaa !5
  br label %for.inc521

sw.bb81:                                          ; preds = %for.body30
  store i32 (...)* null, i32 (...)** @cmpfunc, align 8, !tbaa !5
  br label %for.inc521

sw.bb82:                                          ; preds = %for.body30
  %18 = load i32, i32* @Xflag, align 4, !tbaa !2
  %19 = load i32, i32* @Hflag, align 4
  %20 = or i32 %19, %18
  %21 = load i32, i32* @Jflag, align 4
  %22 = or i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %if.then85, label %for.inc521

if.then85:                                        ; preds = %sw.bb82
  store i32 1, i32* @Xflag, align 4, !tbaa !2
  store i32 0, i32* @Hflag, align 4, !tbaa !2
  store i32 0, i32* @Jflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb87:                                          ; preds = %for.body30
  %24 = load i32, i32* @Xflag, align 4, !tbaa !2
  %25 = load i32, i32* @Hflag, align 4
  %26 = or i32 %25, %24
  %27 = load i32, i32* @Jflag, align 4
  %28 = or i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %if.then90, label %for.inc521

if.then90:                                        ; preds = %sw.bb87
  store i32 1, i32* @Jflag, align 4, !tbaa !2
  store i32 0, i32* @Xflag, align 4, !tbaa !2
  store i32 0, i32* @Hflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb92:                                          ; preds = %for.body30
  %30 = load i32, i32* @Xflag, align 4, !tbaa !2
  %31 = load i32, i32* @Hflag, align 4
  %32 = or i32 %31, %30
  %33 = load i32, i32* @Jflag, align 4
  %34 = or i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %if.then95, label %if.end96

if.then95:                                        ; preds = %sw.bb92
  store i32 1, i32* @Hflag, align 4, !tbaa !2
  store i32 0, i32* @Xflag, align 4, !tbaa !2
  store i32 0, i32* @Jflag, align 4, !tbaa !2
  br label %if.end96

if.end96:                                         ; preds = %sw.bb92, %if.then95
  %idxprom97 = sext i32 %n.11351 to i64
  %arrayidx98 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom97
  %36 = load i8*, i8** %arrayidx98, align 8, !tbaa !5
  %cmp99 = icmp eq i8* %36, null
  br i1 %cmp99, label %if.then101, label %if.end103

if.then101:                                       ; preds = %if.end96
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %38 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %37) #16
  tail call void @exit(i32 1) #15
  unreachable

if.end103:                                        ; preds = %if.end96
  %inc104 = add nsw i32 %n.11351, 1
  store i8* %36, i8** @host, align 8, !tbaa !5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8** @sp, align 8, !tbaa !5
  br label %for.inc521

sw.bb107:                                         ; preds = %for.body30
  %idxprom108 = sext i32 %n.11351 to i64
  %arrayidx109 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom108
  %39 = load i8*, i8** %arrayidx109, align 8, !tbaa !5
  %cmp110 = icmp eq i8* %39, null
  br i1 %cmp110, label %if.then112, label %if.end114

if.then112:                                       ; preds = %sw.bb107
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %41 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %40) #16
  tail call void @exit(i32 1) #15
  unreachable

if.end114:                                        ; preds = %sw.bb107
  %inc115 = add nsw i32 %n.11351, 1
  store i8* %39, i8** @title, align 8, !tbaa !5
  br label %for.inc521

sw.bb118:                                         ; preds = %for.body30
  store i32 1, i32* @Rflag, align 4, !tbaa !2
  br label %for.inc521

sw.bb119:                                         ; preds = %for.body30
  %idxprom121 = sext i32 %n.11351 to i64
  %arrayidx122 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom121
  %42 = load i8*, i8** %arrayidx122, align 8, !tbaa !5
  store i8* %42, i8** @sLevel, align 8, !tbaa !5
  %cmp123 = icmp eq i8* %42, null
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %sw.bb119
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %44 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %43) #16
  tail call void @exit(i32 1) #15
  unreachable

if.end127:                                        ; preds = %sw.bb119
  %inc120 = add nsw i32 %n.11351, 1
  %call128 = tail call i64 @strtoul(i8* nocapture nonnull %42, i8** null, i32 0) #5
  %sub = add i64 %call128, 4294967295
  %conv129 = trunc i64 %sub to i32
  store i32 %conv129, i32* @Level, align 4, !tbaa !15
  %cmp130 = icmp slt i32 %conv129, 0
  br i1 %cmp130, label %if.then132, label %for.inc521

if.then132:                                       ; preds = %if.end127
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %46 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %45) #16
  tail call void @exit(i32 1) #15
  unreachable

sw.bb135:                                         ; preds = %for.body30
  %idxprom136 = sext i32 %n.11351 to i64
  %arrayidx137 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom136
  %47 = load i8*, i8** %arrayidx137, align 8, !tbaa !5
  %cmp138 = icmp eq i8* %47, null
  br i1 %cmp138, label %if.then140, label %if.end142

if.then140:                                       ; preds = %sw.bb135
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %49 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %48) #16
  tail call void @exit(i32 1) #15
  unreachable

if.end142:                                        ; preds = %sw.bb135
  %inc143 = add nsw i32 %n.11351, 1
  store i8* %47, i8** @outfilename, align 8, !tbaa !5
  br label %for.inc521

sw.bb146:                                         ; preds = %for.body30
  %cmp147 = icmp eq i32 %j.11353, 1
  br i1 %cmp147, label %if.then149, label %sw.default

if.then149:                                       ; preds = %sw.bb146
  %call152 = tail call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %11) #13
  %tobool153 = icmp eq i32 %call152, 0
  br i1 %tobool153, label %for.inc521, label %if.end155

if.end155:                                        ; preds = %if.then149
  %call158 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* %11) #13
  %tobool159 = icmp eq i32 %call158, 0
  br i1 %tobool159, label %if.then160, label %if.end161

if.then160:                                       ; preds = %if.end155
  tail call void @usage(i32 2)
  tail call void @exit(i32 0) #15
  unreachable

if.end161:                                        ; preds = %if.end155
  %call164 = tail call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8* %11) #13
  %tobool165 = icmp eq i32 %call164, 0
  br i1 %tobool165, label %if.then166, label %if.end171

if.then166:                                       ; preds = %if.end161
  %call170 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32 106, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.139, i64 0, i64 12))
  tail call void @exit(i32 0) #15
  unreachable

if.end171:                                        ; preds = %if.end161
  %call174 = tail call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* %11) #13
  %tobool175 = icmp eq i32 %call174, 0
  br i1 %tobool175, label %if.then176, label %if.end182

if.then176:                                       ; preds = %if.end171
  %call179 = tail call i64 @strlen(i8* %11) #13
  %sub180 = add i64 %call179, 4294967295
  %conv181 = trunc i64 %sub180 to i32
  store i32 1, i32* @inodeflag, align 4, !tbaa !2
  br label %for.inc521

if.end182:                                        ; preds = %if.end171
  %call185 = tail call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8* %11) #13
  %tobool186 = icmp eq i32 %call185, 0
  br i1 %tobool186, label %if.then187, label %if.end193

if.then187:                                       ; preds = %if.end182
  %call190 = tail call i64 @strlen(i8* %11) #13
  %sub191 = add i64 %call190, 4294967295
  %conv192 = trunc i64 %sub191 to i32
  store i32 1, i32* @devflag, align 4, !tbaa !2
  br label %for.inc521

if.end193:                                        ; preds = %if.end182
  %call196 = tail call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* %11) #13
  %tobool197 = icmp eq i32 %call196, 0
  br i1 %tobool197, label %if.then198, label %if.end204

if.then198:                                       ; preds = %if.end193
  %call201 = tail call i64 @strlen(i8* %11) #13
  %sub202 = add i64 %call201, 4294967295
  %conv203 = trunc i64 %sub202 to i32
  store i32 1, i32* @noreport, align 4, !tbaa !2
  br label %for.inc521

if.end204:                                        ; preds = %if.end193
  %call207 = tail call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i8* %11) #13
  %tobool208 = icmp eq i32 %call207, 0
  br i1 %tobool208, label %if.then209, label %if.end215

if.then209:                                       ; preds = %if.end204
  %call212 = tail call i64 @strlen(i8* %11) #13
  %sub213 = add i64 %call212, 4294967295
  %conv214 = trunc i64 %sub213 to i32
  store i32 1, i32* @nolinks, align 4, !tbaa !2
  br label %for.inc521

if.end215:                                        ; preds = %if.end204
  %call218 = tail call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8* %11) #13
  %tobool219 = icmp eq i32 %call218, 0
  br i1 %tobool219, label %if.then220, label %if.end226

if.then220:                                       ; preds = %if.end215
  %call223 = tail call i64 @strlen(i8* %11) #13
  %sub224 = add i64 %call223, 4294967295
  %conv225 = trunc i64 %sub224 to i32
  store i32 1, i32* @dirsfirst, align 4, !tbaa !2
  br label %for.inc521

if.end226:                                        ; preds = %if.end215
  %call229 = tail call i32 @strncmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* %11, i64 11) #13
  %tobool230 = icmp eq i32 %call229, 0
  br i1 %tobool230, label %if.then231, label %if.end271

if.then231:                                       ; preds = %if.end226
  %add.ptr234 = getelementptr inbounds i8, i8* %11, i64 11
  %50 = load i8, i8* %add.ptr234, align 1, !tbaa !2
  %cmp236 = icmp eq i8 %50, 61
  br i1 %cmp236, label %if.then238, label %if.end254

if.then238:                                       ; preds = %if.then231
  %add.ptr241 = getelementptr inbounds i8, i8* %11, i64 12
  %51 = load i8, i8* %add.ptr241, align 1, !tbaa !2
  %tobool242 = icmp eq i8 %51, 0
  br i1 %tobool242, label %if.end254, label %if.then243

if.then243:                                       ; preds = %if.then238
  %call.i1171 = tail call i64 @strtol(i8* nocapture nonnull %add.ptr241, i8** null, i32 10) #5
  %conv.i = trunc i64 %call.i1171 to i32
  store i32 %conv.i, i32* @flimit, align 4, !tbaa !2
  %52 = load i8*, i8** %arrayidx12, align 8, !tbaa !5
  %call250 = tail call i64 @strlen(i8* %52) #13
  %sub251 = add i64 %call250, 4294967295
  %conv252 = trunc i64 %sub251 to i32
  br label %for.inc521

if.end254:                                        ; preds = %if.then238, %if.then231
  %idxprom255 = sext i32 %n.11351 to i64
  %arrayidx256 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom255
  %53 = load i8*, i8** %arrayidx256, align 8, !tbaa !5
  %cmp257 = icmp eq i8* %53, null
  br i1 %cmp257, label %if.else, label %if.then259

if.then259:                                       ; preds = %if.end254
  %inc260 = add nsw i32 %n.11351, 1
  %call.i1172 = tail call i64 @strtol(i8* nocapture nonnull %53, i8** null, i32 10) #5
  %conv.i1173 = trunc i64 %call.i1172 to i32
  store i32 %conv.i1173, i32* @flimit, align 4, !tbaa !2
  %54 = load i8*, i8** %arrayidx12, align 8, !tbaa !5
  %call266 = tail call i64 @strlen(i8* %54) #13
  %sub267 = add i64 %call266, 4294967295
  %conv268 = trunc i64 %sub267 to i32
  br label %for.inc521

if.else:                                          ; preds = %if.end254
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %56 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %55) #16
  tail call void @exit(i32 1) #15
  unreachable

if.end271:                                        ; preds = %if.end226
  %call274 = tail call i32 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i8* %11, i64 9) #13
  %tobool275 = icmp eq i32 %call274, 0
  br i1 %tobool275, label %if.then276, label %if.end311

if.then276:                                       ; preds = %if.end271
  %add.ptr279 = getelementptr inbounds i8, i8* %11, i64 9
  %57 = load i8, i8* %add.ptr279, align 1, !tbaa !2
  %cmp281 = icmp eq i8 %57, 61
  br i1 %cmp281, label %if.then283, label %if.end295

if.then283:                                       ; preds = %if.then276
  %add.ptr286 = getelementptr inbounds i8, i8* %11, i64 10
  store i8* %add.ptr286, i8** @charset, align 8, !tbaa !5
  %58 = load i8, i8* %add.ptr286, align 1, !tbaa !2
  %tobool287 = icmp eq i8 %58, 0
  br i1 %tobool287, label %if.end295, label %if.then288

if.then288:                                       ; preds = %if.then283
  %59 = load i8*, i8** %arrayidx12, align 8, !tbaa !5
  %call291 = tail call i64 @strlen(i8* %59) #13
  %sub292 = add i64 %call291, 4294967295
  %conv293 = trunc i64 %sub292 to i32
  br label %for.inc521

if.end295:                                        ; preds = %if.then283, %if.then276
  %idxprom296 = sext i32 %n.11351 to i64
  %arrayidx297 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom296
  %60 = load i8*, i8** %arrayidx297, align 8, !tbaa !5
  %cmp298 = icmp eq i8* %60, null
  br i1 %cmp298, label %if.else309, label %if.then300

if.then300:                                       ; preds = %if.end295
  %inc301 = add nsw i32 %n.11351, 1
  store i8* %60, i8** @charset, align 8, !tbaa !5
  %61 = load i8*, i8** %arrayidx12, align 8, !tbaa !5
  %call306 = tail call i64 @strlen(i8* %61) #13
  %sub307 = add i64 %call306, 4294967295
  %conv308 = trunc i64 %sub307 to i32
  br label %for.inc521

if.else309:                                       ; preds = %if.end295
  tail call void @initlinedraw(i32 1) #5
  tail call void @exit(i32 1) #15
  unreachable

if.end311:                                        ; preds = %if.end271
  %call314 = tail call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* %11, i64 4) #13
  %tobool315 = icmp eq i32 %call314, 0
  br i1 %tobool315, label %if.then316, label %if.end322

if.then316:                                       ; preds = %if.end311
  %call319 = tail call i64 @strlen(i8* %11) #13
  %sub320 = add i64 %call319, 4294967295
  %conv321 = trunc i64 %sub320 to i32
  store i32 1, i32* @sflag, align 4, !tbaa !2
  store i32 1, i32* @hflag, align 4, !tbaa !2
  store i32 1, i32* @siflag, align 4, !tbaa !2
  br label %for.inc521

if.end322:                                        ; preds = %if.end311
  %call325 = tail call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i8* %11, i64 4) #13
  %tobool326 = icmp eq i32 %call325, 0
  br i1 %tobool326, label %if.then327, label %if.end333

if.then327:                                       ; preds = %if.end322
  %call330 = tail call i64 @strlen(i8* %11) #13
  %sub331 = add i64 %call330, 4294967295
  %conv332 = trunc i64 %sub331 to i32
  store i32 1, i32* @sflag, align 4, !tbaa !2
  store i32 1, i32* @duflag, align 4, !tbaa !2
  br label %for.inc521

if.end333:                                        ; preds = %if.end322
  %call336 = tail call i32 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i8* %11, i64 7) #13
  %tobool337 = icmp eq i32 %call336, 0
  br i1 %tobool337, label %if.then338, label %if.end344

if.then338:                                       ; preds = %if.end333
  %call341 = tail call i64 @strlen(i8* %11) #13
  %sub342 = add i64 %call341, 4294967295
  %conv343 = trunc i64 %sub342 to i32
  store i32 1, i32* @pruneflag, align 4, !tbaa !2
  br label %for.inc521

if.end344:                                        ; preds = %if.end333
  %call347 = tail call i32 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i8* %11, i64 9) #13
  %tobool348 = icmp eq i32 %call347, 0
  br i1 %tobool348, label %if.then349, label %if.end406

if.then349:                                       ; preds = %if.end344
  %add.ptr353 = getelementptr inbounds i8, i8* %11, i64 9
  %62 = load i8, i8* %add.ptr353, align 1, !tbaa !2
  %cmp355 = icmp eq i8 %62, 61
  br i1 %cmp355, label %if.then357, label %if.else382

if.then357:                                       ; preds = %if.then349
  %add.ptr362 = getelementptr inbounds i8, i8* %11, i64 10
  %63 = load i8, i8* %add.ptr362, align 1, !tbaa !2
  %tobool363 = icmp eq i8 %63, 0
  br i1 %tobool363, label %if.end405, label %if.then364

if.then364:                                       ; preds = %if.then357
  %call369 = tail call i64 @strlen(i8* %add.ptr362) #13
  %add = add i64 %call369, 1
  %call.i1174 = tail call noalias i8* @malloc(i64 %add) #5
  %cmp.i1175 = icmp eq i8* %call.i1174, null
  br i1 %cmp.i1175, label %if.then.i1176, label %xmalloc.exit1177

if.then.i1176:                                    ; preds = %if.then364
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %65 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %64) #14
  tail call void @exit(i32 1) #15
  unreachable

xmalloc.exit1177:                                 ; preds = %if.then364
  %call375 = tail call i8* @strcpy(i8* nonnull %call.i1174, i8* %add.ptr362) #5
  store i8* %call375, i8** @timefmt, align 8, !tbaa !5
  %66 = load i8*, i8** %arrayidx12, align 8, !tbaa !5
  %call378 = tail call i64 @strlen(i8* %66) #13
  %sub379 = add i64 %call378, 4294967295
  %conv380 = trunc i64 %sub379 to i32
  br label %for.inc521

if.else382:                                       ; preds = %if.then349
  %idxprom383 = sext i32 %n.11351 to i64
  %arrayidx384 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom383
  %67 = load i8*, i8** %arrayidx384, align 8, !tbaa !5
  %cmp385 = icmp eq i8* %67, null
  br i1 %cmp385, label %if.else402, label %if.then387

if.then387:                                       ; preds = %if.else382
  %call390 = tail call i64 @strlen(i8* nonnull %67) #13
  %add391 = add i64 %call390, 1
  %call.i1178 = tail call noalias i8* @malloc(i64 %add391) #5
  %cmp.i1179 = icmp eq i8* %call.i1178, null
  br i1 %cmp.i1179, label %if.then.i1180, label %xmalloc.exit1181

if.then.i1180:                                    ; preds = %if.then387
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %69 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %68) #14
  tail call void @exit(i32 1) #15
  unreachable

xmalloc.exit1181:                                 ; preds = %if.then387
  %call395 = tail call i8* @strcpy(i8* nonnull %call.i1178, i8* nonnull %67) #5
  store i8* %call395, i8** @timefmt, align 8, !tbaa !5
  %inc396 = add nsw i32 %n.11351, 1
  %70 = load i8*, i8** %arrayidx12, align 8, !tbaa !5
  %call399 = tail call i64 @strlen(i8* %70) #13
  %sub400 = add i64 %call399, 4294967295
  %conv401 = trunc i64 %sub400 to i32
  br label %if.end405

if.else402:                                       ; preds = %if.else382
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %72 = tail call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.43, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %71) #16
  tail call void @exit(i32 1) #15
  unreachable

if.end405:                                        ; preds = %if.then357, %xmalloc.exit1181
  %n.2 = phi i32 [ %n.11351, %if.then357 ], [ %inc396, %xmalloc.exit1181 ]
  %j.2 = phi i32 [ 10, %if.then357 ], [ %conv401, %xmalloc.exit1181 ]
  store i32 1, i32* @Dflag, align 4, !tbaa !2
  br label %for.inc521

if.end406:                                        ; preds = %if.end344
  %call409 = tail call i32 @strncmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i8* %11, i64 13) #13
  %tobool410 = icmp eq i32 %call409, 0
  br i1 %tobool410, label %if.then411, label %if.end417

if.then411:                                       ; preds = %if.end406
  %call414 = tail call i64 @strlen(i8* %11) #13
  %sub415 = add i64 %call414, 4294967295
  %conv416 = trunc i64 %sub415 to i32
  store i32 1, i32* @ignorecase, align 4, !tbaa !2
  br label %for.inc521

if.end417:                                        ; preds = %if.end406
  %call420 = tail call i32 @strncmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i8* %11, i64 11) #13
  %tobool421 = icmp eq i32 %call420, 0
  br i1 %tobool421, label %if.then422, label %if.end428

if.then422:                                       ; preds = %if.end417
  %call425 = tail call i64 @strlen(i8* %11) #13
  %sub426 = add i64 %call425, 4294967295
  %conv427 = trunc i64 %sub426 to i32
  store i32 1, i32* @matchdirs, align 4, !tbaa !2
  br label %for.inc521

if.end428:                                        ; preds = %if.end417
  %call431 = tail call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* %11, i64 6) #13
  %tobool432 = icmp eq i32 %call431, 0
  br i1 %tobool432, label %if.then433, label %sw.default

if.then433:                                       ; preds = %if.end428
  %add.ptr437 = getelementptr inbounds i8, i8* %11, i64 6
  %73 = load i8, i8* %add.ptr437, align 1, !tbaa !2
  %cmp439 = icmp eq i8 %73, 61
  br i1 %cmp439, label %if.then441, label %if.else461

if.then441:                                       ; preds = %if.then433
  %add.ptr446 = getelementptr inbounds i8, i8* %11, i64 7
  %74 = load i8, i8* %add.ptr446, align 1, !tbaa !2
  %tobool447 = icmp eq i8 %74, 0
  br i1 %tobool447, label %if.else458, label %if.then448

if.then448:                                       ; preds = %if.then441
  %call455 = tail call i64 @strlen(i8* nonnull %11) #13
  %sub456 = add i64 %call455, 4294967295
  %conv457 = trunc i64 %sub456 to i32
  br label %if.end473

if.else458:                                       ; preds = %if.then441
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %76 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %75) #16
  tail call void @exit(i32 1) #15
  unreachable

if.else461:                                       ; preds = %if.then433
  %idxprom462 = sext i32 %n.11351 to i64
  %arrayidx463 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom462
  %77 = load i8*, i8** %arrayidx463, align 8, !tbaa !5
  %cmp464 = icmp eq i8* %77, null
  br i1 %cmp464, label %if.else470, label %if.then466

if.then466:                                       ; preds = %if.else461
  %inc467 = add nsw i32 %n.11351, 1
  br label %if.end473

if.else470:                                       ; preds = %if.else461
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %79 = tail call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %78) #16
  tail call void @exit(i32 1) #15
  unreachable

if.end473:                                        ; preds = %if.then466, %if.then448
  %n.3 = phi i32 [ %n.11351, %if.then448 ], [ %inc467, %if.then466 ]
  %stmp.0 = phi i8* [ %add.ptr446, %if.then448 ], [ %77, %if.then466 ]
  %j.3 = phi i32 [ %conv457, %if.then448 ], [ 6, %if.then466 ]
  store i32 (...)* inttoptr (i64 1 to i32 (...)*), i32 (...)** @cmpfunc, align 8, !tbaa !5
  %80 = load i8*, i8** getelementptr inbounds ([6 x %struct.sorts], [6 x %struct.sorts]* @sorts, i64 0, i64 0, i32 0), align 16, !tbaa !16
  %tobool4771346 = icmp eq i8* %80, null
  br i1 %tobool4771346, label %if.then492, label %for.body478.preheader

for.body478.preheader:                            ; preds = %if.end473
  br label %for.body478

for.cond474:                                      ; preds = %for.body478
  %name = getelementptr inbounds [6 x %struct.sorts], [6 x %struct.sorts]* @sorts, i64 0, i64 %indvars.iv.next1390, i32 0
  %81 = load i8*, i8** %name, align 16, !tbaa !16
  %tobool477 = icmp eq i8* %81, null
  br i1 %tobool477, label %if.then492, label %for.body478

for.body478:                                      ; preds = %for.body478.preheader, %for.cond474
  %indvars.iv1389 = phi i64 [ %indvars.iv.next1390, %for.cond474 ], [ 0, %for.body478.preheader ]
  %82 = phi i8* [ %81, %for.cond474 ], [ %80, %for.body478.preheader ]
  %call482 = tail call i32 @strcasecmp(i8* nonnull %82, i8* %stmp.0) #13
  %cmp483 = icmp eq i32 %call482, 0
  %indvars.iv.next1390 = add nuw i64 %indvars.iv1389, 1
  br i1 %cmp483, label %for.end, label %for.cond474

for.end:                                          ; preds = %for.body478
  %cmpfunc = getelementptr inbounds [6 x %struct.sorts], [6 x %struct.sorts]* @sorts, i64 0, i64 %indvars.iv1389, i32 1
  %83 = bitcast i32 (...)** %cmpfunc to i64*
  %84 = load i64, i64* %83, align 8, !tbaa !18
  store i64 %84, i64* bitcast (i32 (...)** @cmpfunc to i64*), align 8, !tbaa !5
  %85 = inttoptr i64 %84 to i32 (...)*
  %cmp490 = icmp eq i32 (...)* %85, inttoptr (i64 1 to i32 (...)*)
  br i1 %cmp490, label %if.then492, label %for.inc521

if.then492:                                       ; preds = %if.end473, %for.end, %for.cond474
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call493 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.49, i64 0, i64 0), i8* %stmp.0) #16
  %87 = load i8*, i8** getelementptr inbounds ([6 x %struct.sorts], [6 x %struct.sorts]* @sorts, i64 0, i64 0, i32 0), align 16, !tbaa !16
  %tobool4981336 = icmp eq i8* %87, null
  br i1 %tobool4981336, label %for.end511, label %for.body499.preheader

for.body499.preheader:                            ; preds = %if.then492
  br label %for.body499

for.body499:                                      ; preds = %for.body499.preheader, %for.body499
  %indvars.iv1387 = phi i64 [ %indvars.iv.next1388, %for.body499 ], [ 0, %for.body499.preheader ]
  %88 = phi i8* [ %90, %for.body499 ], [ %87, %for.body499.preheader ]
  %indvars.iv.next1388 = add nuw nsw i64 %indvars.iv1387, 1
  %name506 = getelementptr inbounds [6 x %struct.sorts], [6 x %struct.sorts]* @sorts, i64 0, i64 %indvars.iv.next1388, i32 0
  %89 = load i8*, i8** %name506, align 16, !tbaa !16
  %tobool507 = icmp eq i8* %89, null
  %cond = select i1 %tobool507, i32 10, i32 44
  %call508 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i8* nonnull %88, i32 %cond)
  %90 = load i8*, i8** %name506, align 16, !tbaa !16
  %tobool498 = icmp eq i8* %90, null
  br i1 %tobool498, label %for.end511, label %for.body499

for.end511:                                       ; preds = %for.body499, %if.then492
  tail call void @exit(i32 1) #15
  unreachable

sw.default:                                       ; preds = %if.end428, %sw.bb146, %for.body30
  %conv35.lcssa = phi i32 [ 45, %if.end428 ], [ 45, %sw.bb146 ], [ %conv35, %for.body30 ]
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call520 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i64 0, i64 0), i32 %conv35.lcssa) #16
  tail call void @usage(i32 1)
  tail call void @exit(i32 1) #15
  unreachable

for.inc521:                                       ; preds = %if.then149, %sw.bb82, %sw.bb87, %sw.bb, %sw.bb36, %sw.bb37, %sw.bb38, %sw.bb39, %sw.bb40, %sw.bb41, %sw.bb42, %sw.bb43, %sw.bb44, %sw.bb45, %sw.bb46, %sw.bb47, %sw.bb48, %sw.bb49, %sw.bb50, %sw.bb51, %if.end59, %if.end70, %sw.bb74, %sw.bb75, %sw.bb76, %sw.bb77, %sw.bb78, %sw.bb79, %sw.bb80, %sw.bb81, %if.end103, %if.end114, %sw.bb118, %if.end142, %if.then176, %if.then187, %if.then198, %if.then209, %if.then220, %if.then243, %if.then259, %if.then288, %if.then300, %if.then316, %if.then327, %if.then338, %xmalloc.exit1177, %if.end405, %if.then411, %if.then422, %if.then85, %if.then90, %if.end127, %for.end
  %n.4 = phi i32 [ %n.3, %for.end ], [ %n.11351, %if.then422 ], [ %n.11351, %if.then411 ], [ %n.11351, %xmalloc.exit1177 ], [ %n.2, %if.end405 ], [ %n.11351, %if.then338 ], [ %n.11351, %if.then327 ], [ %n.11351, %if.then316 ], [ %n.11351, %if.then288 ], [ %inc301, %if.then300 ], [ %n.11351, %if.then243 ], [ %inc260, %if.then259 ], [ %n.11351, %if.then220 ], [ %n.11351, %if.then209 ], [ %n.11351, %if.then198 ], [ %n.11351, %if.then187 ], [ %n.11351, %if.then176 ], [ %inc143, %if.end142 ], [ %inc120, %if.end127 ], [ %n.11351, %sw.bb118 ], [ %inc115, %if.end114 ], [ %inc104, %if.end103 ], [ %n.11351, %sw.bb87 ], [ %n.11351, %if.then90 ], [ %n.11351, %sw.bb82 ], [ %n.11351, %if.then85 ], [ %n.11351, %sw.bb81 ], [ %n.11351, %sw.bb80 ], [ %n.11351, %sw.bb79 ], [ %n.11351, %sw.bb78 ], [ %n.11351, %sw.bb77 ], [ %n.11351, %sw.bb76 ], [ %n.11351, %sw.bb75 ], [ %n.11351, %sw.bb74 ], [ %inc71, %if.end70 ], [ %inc60, %if.end59 ], [ %n.11351, %sw.bb51 ], [ %n.11351, %sw.bb50 ], [ %n.11351, %sw.bb49 ], [ %n.11351, %sw.bb48 ], [ %n.11351, %sw.bb47 ], [ %n.11351, %sw.bb46 ], [ %n.11351, %sw.bb45 ], [ %n.11351, %sw.bb44 ], [ %n.11351, %sw.bb43 ], [ %n.11351, %sw.bb42 ], [ %n.11351, %sw.bb41 ], [ %n.11351, %sw.bb40 ], [ %n.11351, %sw.bb39 ], [ %n.11351, %sw.bb38 ], [ %n.11351, %sw.bb37 ], [ %n.11351, %sw.bb36 ], [ %n.11351, %sw.bb ], [ %n.11351, %if.then149 ]
  %optf.2 = phi i32 [ %optf.11352, %for.end ], [ %optf.11352, %if.then422 ], [ %optf.11352, %if.then411 ], [ %optf.11352, %xmalloc.exit1177 ], [ %optf.11352, %if.end405 ], [ %optf.11352, %if.then338 ], [ %optf.11352, %if.then327 ], [ %optf.11352, %if.then316 ], [ %optf.11352, %if.then288 ], [ %optf.11352, %if.then300 ], [ %optf.11352, %if.then243 ], [ %optf.11352, %if.then259 ], [ %optf.11352, %if.then220 ], [ %optf.11352, %if.then209 ], [ %optf.11352, %if.then198 ], [ %optf.11352, %if.then187 ], [ %optf.11352, %if.then176 ], [ %optf.11352, %if.end142 ], [ %optf.11352, %if.end127 ], [ %optf.11352, %sw.bb118 ], [ %optf.11352, %if.end114 ], [ %optf.11352, %if.end103 ], [ %optf.11352, %sw.bb87 ], [ %optf.11352, %if.then90 ], [ %optf.11352, %sw.bb82 ], [ %optf.11352, %if.then85 ], [ %optf.11352, %sw.bb81 ], [ %optf.11352, %sw.bb80 ], [ %optf.11352, %sw.bb79 ], [ %optf.11352, %sw.bb78 ], [ %optf.11352, %sw.bb77 ], [ %optf.11352, %sw.bb76 ], [ %optf.11352, %sw.bb75 ], [ %optf.11352, %sw.bb74 ], [ %optf.11352, %if.end70 ], [ %optf.11352, %if.end59 ], [ %optf.11352, %sw.bb51 ], [ %optf.11352, %sw.bb50 ], [ %optf.11352, %sw.bb49 ], [ %optf.11352, %sw.bb48 ], [ %optf.11352, %sw.bb47 ], [ %optf.11352, %sw.bb46 ], [ %optf.11352, %sw.bb45 ], [ %optf.11352, %sw.bb44 ], [ %optf.11352, %sw.bb43 ], [ %optf.11352, %sw.bb42 ], [ %optf.11352, %sw.bb41 ], [ %optf.11352, %sw.bb40 ], [ %optf.11352, %sw.bb39 ], [ %optf.11352, %sw.bb38 ], [ %optf.11352, %sw.bb37 ], [ %optf.11352, %sw.bb36 ], [ %optf.11352, %sw.bb ], [ 0, %if.then149 ]
  %j.4 = phi i32 [ %j.3, %for.end ], [ %conv427, %if.then422 ], [ %conv416, %if.then411 ], [ %conv380, %xmalloc.exit1177 ], [ %j.2, %if.end405 ], [ %conv343, %if.then338 ], [ %conv332, %if.then327 ], [ %conv321, %if.then316 ], [ %conv293, %if.then288 ], [ %conv308, %if.then300 ], [ %conv252, %if.then243 ], [ %conv268, %if.then259 ], [ %conv225, %if.then220 ], [ %conv214, %if.then209 ], [ %conv203, %if.then198 ], [ %conv192, %if.then187 ], [ %conv181, %if.then176 ], [ %j.11353, %if.end142 ], [ %j.11353, %if.end127 ], [ %j.11353, %sw.bb118 ], [ %j.11353, %if.end114 ], [ %j.11353, %if.end103 ], [ %j.11353, %sw.bb87 ], [ %j.11353, %if.then90 ], [ %j.11353, %sw.bb82 ], [ %j.11353, %if.then85 ], [ %j.11353, %sw.bb81 ], [ %j.11353, %sw.bb80 ], [ %j.11353, %sw.bb79 ], [ %j.11353, %sw.bb78 ], [ %j.11353, %sw.bb77 ], [ %j.11353, %sw.bb76 ], [ %j.11353, %sw.bb75 ], [ %j.11353, %sw.bb74 ], [ %j.11353, %if.end70 ], [ %j.11353, %if.end59 ], [ %j.11353, %sw.bb51 ], [ %j.11353, %sw.bb50 ], [ %j.11353, %sw.bb49 ], [ %j.11353, %sw.bb48 ], [ %j.11353, %sw.bb47 ], [ %j.11353, %sw.bb46 ], [ %j.11353, %sw.bb45 ], [ %j.11353, %sw.bb44 ], [ %j.11353, %sw.bb43 ], [ %j.11353, %sw.bb42 ], [ %j.11353, %sw.bb41 ], [ %j.11353, %sw.bb40 ], [ %j.11353, %sw.bb39 ], [ %j.11353, %sw.bb38 ], [ %j.11353, %sw.bb37 ], [ %j.11353, %sw.bb36 ], [ %j.11353, %sw.bb ], [ 1, %if.then149 ]
  %inc522 = add nsw i32 %j.4, 1
  %92 = load i8*, i8** %arrayidx12, align 8, !tbaa !5
  %idxprom27 = sext i32 %inc522 to i64
  %arrayidx28 = getelementptr inbounds i8, i8* %92, i64 %idxprom27
  %93 = load i8, i8* %arrayidx28, align 1, !tbaa !2
  %tobool29 = icmp eq i8 %93, 0
  br i1 %tobool29, label %for.inc551, label %for.body30

if.else524:                                       ; preds = %land.lhs.true17, %for.body, %land.lhs.true11
  %tobool525 = icmp eq i8** %dirname.01363, null
  br i1 %tobool525, label %if.then526, label %if.else528

if.then526:                                       ; preds = %if.else524
  %call.i1182 = tail call noalias i8* @malloc(i64 240) #5
  %cmp.i1183 = icmp eq i8* %call.i1182, null
  br i1 %cmp.i1183, label %if.then.i1184, label %xmalloc.exit1185

if.then.i1184:                                    ; preds = %if.then526
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %95 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %94) #14
  tail call void @exit(i32 1) #15
  unreachable

xmalloc.exit1185:                                 ; preds = %if.then526
  %96 = bitcast i8* %call.i1182 to i8**
  br label %if.end538

if.else528:                                       ; preds = %if.else524
  %sub529 = add nsw i32 %q.01361, -2
  %cmp530 = icmp eq i32 %p.01360, %sub529
  br i1 %cmp530, label %if.then532, label %if.end538

if.then532:                                       ; preds = %if.else528
  %add533 = add nsw i32 %q.01361, 20
  %conv534 = sext i32 %add533 to i64
  %mul535 = shl nsw i64 %conv534, 3
  %call.i1186 = tail call i8* @realloc(i8* %6, i64 %mul535) #5
  %cmp.i1187 = icmp eq i8* %call.i1186, null
  br i1 %cmp.i1187, label %if.then.i1188, label %xrealloc.exit

if.then.i1188:                                    ; preds = %if.then532
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %98 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %97) #14
  tail call void @exit(i32 1) #15
  unreachable

xrealloc.exit:                                    ; preds = %if.then532
  %99 = bitcast i8* %call.i1186 to i8**
  br label %if.end538

if.end538:                                        ; preds = %if.else528, %xrealloc.exit, %xmalloc.exit1185
  %q.1 = phi i32 [ %add533, %xrealloc.exit ], [ %q.01361, %if.else528 ], [ 30, %xmalloc.exit1185 ]
  %100 = phi i8* [ %call.i1186, %xrealloc.exit ], [ %6, %if.else528 ], [ %call.i1182, %xmalloc.exit1185 ]
  %dirname.1 = phi i8** [ %99, %xrealloc.exit ], [ %dirname.01363, %if.else528 ], [ %96, %xmalloc.exit1185 ]
  %idxprom539 = sext i32 %n.01358 to i64
  %arrayidx540 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom539
  %101 = load i8*, i8** %arrayidx540, align 8, !tbaa !5
  %call541 = tail call i64 @strlen(i8* %101) #13
  %add542 = add i64 %call541, 1
  %call.i1189 = tail call noalias i8* @malloc(i64 %add542) #5
  %cmp.i1190 = icmp eq i8* %call.i1189, null
  br i1 %cmp.i1190, label %if.then.i1191, label %xmalloc.exit1192

if.then.i1191:                                    ; preds = %if.end538
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %103 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %102) #14
  tail call void @exit(i32 1) #15
  unreachable

xmalloc.exit1192:                                 ; preds = %if.end538
  %call546 = tail call i8* @strcpy(i8* nonnull %call.i1189, i8* %101) #5
  %inc547 = add nsw i32 %p.01360, 1
  %idxprom548 = sext i32 %p.01360 to i64
  %arrayidx549 = getelementptr inbounds i8*, i8** %dirname.1, i64 %idxprom548
  store i8* %call546, i8** %arrayidx549, align 8, !tbaa !5
  br label %for.inc551

for.inc551:                                       ; preds = %for.inc521, %xmalloc.exit1192
  %n.5 = phi i32 [ %inc, %xmalloc.exit1192 ], [ %n.4, %for.inc521 ]
  %optf.3 = phi i32 [ %optf.01359, %xmalloc.exit1192 ], [ %optf.2, %for.inc521 ]
  %p.1 = phi i32 [ %inc547, %xmalloc.exit1192 ], [ %p.01360, %for.inc521 ]
  %q.2 = phi i32 [ %q.1, %xmalloc.exit1192 ], [ %q.01361, %for.inc521 ]
  %j.5 = phi i32 [ %j.01362, %xmalloc.exit1192 ], [ %inc522, %for.inc521 ]
  %104 = phi i8* [ %100, %xmalloc.exit1192 ], [ %6, %for.inc521 ]
  %dirname.2 = phi i8** [ %dirname.1, %xmalloc.exit1192 ], [ %dirname.01363, %for.inc521 ]
  %cmp9 = icmp slt i32 %n.5, %argc
  br i1 %cmp9, label %for.body, label %for.end552

for.end552:                                       ; preds = %for.inc551
  %tobool553 = icmp eq i32 %p.1, 0
  br i1 %tobool553, label %if.end557, label %if.then554

if.then554:                                       ; preds = %for.end552
  %idxprom555 = sext i32 %p.1 to i64
  %arrayidx556 = getelementptr inbounds i8*, i8** %dirname.2, i64 %idxprom555
  store i8* null, i8** %arrayidx556, align 8, !tbaa !5
  br label %if.end557

if.end557:                                        ; preds = %if.end, %for.end552, %if.then554
  %dirname.0.lcssa1396 = phi i8** [ %dirname.2, %for.end552 ], [ %dirname.2, %if.then554 ], [ null, %if.end ]
  %j.0.lcssa1395 = phi i32 [ %j.5, %for.end552 ], [ %j.5, %if.then554 ], [ 0, %if.end ]
  %105 = load i8*, i8** @outfilename, align 8, !tbaa !5
  %cmp558 = icmp eq i8* %105, null
  br i1 %cmp558, label %if.then560, label %if.else561

if.then560:                                       ; preds = %if.end557
  %106 = load i64, i64* bitcast (%struct._IO_FILE** @stdout to i64*), align 8, !tbaa !5
  store i64 %106, i64* bitcast (%struct._IO_FILE** @outfile to i64*), align 8, !tbaa !5
  br label %if.end568

if.else561:                                       ; preds = %if.end557
  %call562 = tail call %struct._IO_FILE* @fopen(i8* nonnull %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0))
  store %struct._IO_FILE* %call562, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %cmp563 = icmp eq %struct._IO_FILE* %call562, null
  br i1 %cmp563, label %if.then565, label %if.end568

if.then565:                                       ; preds = %if.else561
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %108 = load i8*, i8** @outfilename, align 8, !tbaa !5
  %call566 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i64 0, i64 0), i8* %108) #16
  tail call void @exit(i32 1) #15
  unreachable

if.end568:                                        ; preds = %if.else561, %if.then560
  tail call void (...) bitcast (void ()* @parse_dir_colors to void (...)*)() #5
  tail call void @initlinedraw(i32 0) #5
  %109 = load i32, i32* @duflag, align 4, !tbaa !2
  %110 = load i32, i32* @pruneflag, align 4
  %111 = or i32 %110, %109
  %112 = load i32, i32* @matchdirs, align 4
  %113 = or i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = load i32, i32* @Hflag, align 4, !tbaa !2
  %tobool572 = icmp eq i32 %115, 0
  br i1 %tobool572, label %if.else576, label %if.then573

if.then573:                                       ; preds = %if.end568
  %cond575 = select i1 %114, i64 (i8*, i32*, i32*, i64, i64)* @html_rlistdir, i64 (i8*, i32*, i32*, i64, i64)* @html_listdir
  store i64 (i8*, i32*, i32*, i64, i64)* %cond575, i64 (i8*, i32*, i32*, i64, i64)** @listdir, align 8, !tbaa !5
  store i32 0, i32* @Xflag, align 4, !tbaa !2
  br label %if.end591

if.else576:                                       ; preds = %if.end568
  %116 = load i32, i32* @Xflag, align 4, !tbaa !2
  %tobool577 = icmp eq i32 %116, 0
  br i1 %tobool577, label %if.else581, label %if.then578

if.then578:                                       ; preds = %if.else576
  %cond580 = select i1 %114, i64 (i8*, i32*, i32*, i64, i64)* @xml_rlistdir, i64 (i8*, i32*, i32*, i64, i64)* @xml_listdir
  store i64 (i8*, i32*, i32*, i64, i64)* %cond580, i64 (i8*, i32*, i32*, i64, i64)** @listdir, align 8, !tbaa !5
  store i32 0, i32* @colorize, align 4, !tbaa !2
  br label %if.end591

if.else581:                                       ; preds = %if.else576
  %117 = load i32, i32* @Jflag, align 4, !tbaa !2
  %tobool582 = icmp eq i32 %117, 0
  br i1 %tobool582, label %if.else586, label %if.then583

if.then583:                                       ; preds = %if.else581
  %cond585 = select i1 %114, i64 (i8*, i32*, i32*, i64, i64)* @json_rlistdir, i64 (i8*, i32*, i32*, i64, i64)* @json_listdir
  store i64 (i8*, i32*, i32*, i64, i64)* %cond585, i64 (i8*, i32*, i32*, i64, i64)** @listdir, align 8, !tbaa !5
  store i32 0, i32* @colorize, align 4, !tbaa !2
  br label %if.end591

if.else586:                                       ; preds = %if.else581
  %cond588 = select i1 %114, i64 (i8*, i32*, i32*, i64, i64)* @unix_rlistdir, i64 (i8*, i32*, i32*, i64, i64)* @unix_listdir
  store i64 (i8*, i32*, i32*, i64, i64)* %cond588, i64 (i8*, i32*, i32*, i64, i64)** @listdir, align 8, !tbaa !5
  br label %if.end591

if.end591:                                        ; preds = %if.then578, %if.else586, %if.then583, %if.then573
  %118 = phi i32 [ %116, %if.then578 ], [ 0, %if.else586 ], [ 0, %if.then583 ], [ 0, %if.then573 ]
  %119 = load i32, i32* @dflag, align 4, !tbaa !2
  %tobool592 = icmp eq i32 %119, 0
  br i1 %tobool592, label %if.end594, label %if.then593

if.then593:                                       ; preds = %if.end591
  store i32 0, i32* @pruneflag, align 4, !tbaa !2
  br label %if.end594

if.end594:                                        ; preds = %if.end591, %if.then593
  %120 = load i32, i32* @Rflag, align 4, !tbaa !2
  %tobool595 = icmp ne i32 %120, 0
  %121 = load i32, i32* @Level, align 4
  %cmp597 = icmp eq i32 %121, -1
  %or.cond945 = and i1 %tobool595, %cmp597
  br i1 %or.cond945, label %if.then599, label %if.end600

if.then599:                                       ; preds = %if.end594
  store i32 0, i32* @Rflag, align 4, !tbaa !2
  br label %if.end600

if.end600:                                        ; preds = %if.then599, %if.end594
  br i1 %tobool572, label %if.else620, label %if.then602

if.then602:                                       ; preds = %if.end600
  %122 = load i8*, i8** @charset, align 8, !tbaa !5
  %123 = load i8*, i8** @title, align 8, !tbaa !5
  tail call void @emit_html_header(i8* %122, i8* %123, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.139, i64 0, i64 0)) #5
  store i32 0, i32* @fflag, align 4, !tbaa !2
  %124 = load i32, i32* @nolinks, align 4, !tbaa !2
  %tobool603 = icmp eq i32 %124, 0
  %125 = load i32, i32* @force_color, align 4, !tbaa !2
  %tobool605 = icmp ne i32 %125, 0
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %127 = load i8*, i8** @host, align 8, !tbaa !5
  br i1 %tobool603, label %if.else611, label %if.then604

if.then604:                                       ; preds = %if.then602
  br i1 %tobool605, label %if.then606, label %if.else608

if.then606:                                       ; preds = %if.then604
  %call607 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i64 0, i64 0), i8* %127)
  br label %if.end618

if.else608:                                       ; preds = %if.then604
  %fputs1164 = tail call i32 @fputs(i8* %127, %struct._IO_FILE* %126)
  br label %if.end618

if.else611:                                       ; preds = %if.then602
  br i1 %tobool605, label %if.then613, label %if.else615

if.then613:                                       ; preds = %if.else611
  %call614 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.56, i64 0, i64 0), i8* %127, i8* %127)
  br label %if.end618

if.else615:                                       ; preds = %if.else611
  %call616 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0), i8* %127, i8* %127)
  br label %if.end618

if.end618:                                        ; preds = %if.then613, %if.else615, %if.then606, %if.else608
  %call619 = tail call i8* @gnu_getcwd()
  store i8* %call619, i8** @curdir, align 8, !tbaa !5
  br label %if.end635

if.else620:                                       ; preds = %if.end600
  %tobool621 = icmp eq i32 %118, 0
  br i1 %tobool621, label %if.else629, label %if.then622

if.then622:                                       ; preds = %if.else620
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %129 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %128)
  %130 = load i8*, i8** @charset, align 8, !tbaa !5
  %tobool624 = icmp eq i8* %130, null
  br i1 %tobool624, label %if.end627, label %if.then625

if.then625:                                       ; preds = %if.then622
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call626 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i64 0, i64 0), i8* nonnull %130)
  br label %if.end627

if.end627:                                        ; preds = %if.then622, %if.then625
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %133 = load i8*, i8** @_nl, align 8, !tbaa !5
  %call628 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i64 0, i64 0), i8* %133, i8* %133)
  br label %if.end635

if.else629:                                       ; preds = %if.else620
  %134 = load i32, i32* @Jflag, align 4, !tbaa !2
  %tobool630 = icmp eq i32 %134, 0
  br i1 %tobool630, label %if.end635, label %if.then631

if.then631:                                       ; preds = %if.else629
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call632 = tail call i32 @fputc(i32 91, %struct._IO_FILE* %135)
  br label %if.end635

if.end635:                                        ; preds = %if.else629, %if.end627, %if.then631, %if.end618
  %tobool636 = icmp eq i8** %dirname.0.lcssa1396, null
  br i1 %tobool636, label %if.else787, label %if.then637

if.then637:                                       ; preds = %if.end635
  %136 = load i8*, i8** %dirname.0.lcssa1396, align 8, !tbaa !5
  %tobool6411340 = icmp eq i8* %136, null
  br i1 %tobool6411340, label %if.end838, label %for.body642.lr.ph

for.body642.lr.ph:                                ; preds = %if.then637
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 1
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 0
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 8
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 3
  br label %for.body642

for.body642:                                      ; preds = %for.body642.lr.ph, %for.inc784
  %137 = phi i8* [ %136, %for.body642.lr.ph ], [ %188, %for.inc784 ]
  %indvars.iv = phi i64 [ 0, %for.body642.lr.ph ], [ %indvars.iv.next, %for.inc784 ]
  %arrayidx6401345 = phi i8** [ %dirname.0.lcssa1396, %for.body642.lr.ph ], [ %arrayidx640, %for.inc784 ]
  %j.61342 = phi i32 [ %j.0.lcssa1395, %for.body642.lr.ph ], [ %j.10, %for.inc784 ]
  %size.01341 = phi i64 [ 0, %for.body642.lr.ph ], [ %size.2, %for.inc784 ]
  %138 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool643 = icmp eq i32 %138, 0
  br i1 %tobool643, label %if.end676, label %do.body.preheader

do.body.preheader:                                ; preds = %for.body642
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %land.rhs
  %139 = phi i8* [ %141, %land.rhs ], [ %137, %do.body.preheader ]
  %call647 = call i64 @strlen(i8* %139) #13
  %conv648 = trunc i64 %call647 to i32
  %cmp649 = icmp sgt i32 %conv648, 1
  br i1 %cmp649, label %land.lhs.true651, label %if.end676

land.lhs.true651:                                 ; preds = %do.body
  %sub654 = shl i64 %call647, 32
  %sext = add i64 %sub654, -4294967296
  %idxprom655 = ashr exact i64 %sext, 32
  %arrayidx656 = getelementptr inbounds i8, i8* %139, i64 %idxprom655
  %140 = load i8, i8* %arrayidx656, align 1, !tbaa !2
  %cmp658 = icmp eq i8 %140, 47
  br i1 %cmp658, label %do.cond, label %land.rhs

do.cond:                                          ; preds = %land.lhs.true651
  %dec = add nsw i32 %conv648, -1
  %idxprom663 = sext i32 %dec to i64
  %arrayidx664 = getelementptr inbounds i8, i8* %139, i64 %idxprom663
  store i8 0, i8* %arrayidx664, align 1, !tbaa !2
  %cmp666 = icmp sgt i32 %conv648, 2
  %.pre = load i8*, i8** %arrayidx6401345, align 8, !tbaa !5
  br i1 %cmp666, label %land.rhs, label %if.end676

land.rhs:                                         ; preds = %do.cond, %land.lhs.true651
  %141 = phi i8* [ %139, %land.lhs.true651 ], [ %.pre, %do.cond ]
  %j.71196 = phi i32 [ %conv648, %land.lhs.true651 ], [ %dec, %do.cond ]
  %sub670 = add nsw i32 %j.71196, -1
  %idxprom671 = sext i32 %sub670 to i64
  %arrayidx672 = getelementptr inbounds i8, i8* %141, i64 %idxprom671
  %142 = load i8, i8* %arrayidx672, align 1, !tbaa !2
  %cmp674 = icmp eq i8 %142, 47
  br i1 %cmp674, label %do.body, label %if.end676

if.end676:                                        ; preds = %do.body, %land.rhs, %do.cond, %for.body642
  %143 = phi i8* [ %137, %for.body642 ], [ %.pre, %do.cond ], [ %139, %do.body ], [ %141, %land.rhs ]
  %j.8 = phi i32 [ %j.61342, %for.body642 ], [ 1, %do.cond ], [ %conv648, %do.body ], [ %j.71196, %land.rhs ]
  %call.i1193 = call i32 @__lxstat(i32 1, i8* nonnull %143, %struct.stat* nonnull %st) #5
  %cmp680 = icmp sgt i32 %call.i1193, -1
  br i1 %cmp680, label %if.then682, label %if.end693

if.then682:                                       ; preds = %if.end676
  %144 = load i64, i64* %st_ino, align 8, !tbaa !19
  %145 = load i64, i64* %st_dev, align 8, !tbaa !22
  call void @saveino(i64 %144, i64 %145) #5
  %146 = load i32, i32* @colorize, align 4, !tbaa !2
  %tobool683 = icmp eq i32 %146, 0
  br i1 %tobool683, label %if.end691, label %if.then684

if.then684:                                       ; preds = %if.then682
  %147 = load i32, i32* %st_mode, align 8, !tbaa !23
  %conv685 = trunc i32 %147 to i16
  %148 = load i8*, i8** %arrayidx6401345, align 8, !tbaa !5
  %call679.lobit = lshr i32 %call.i1193, 31
  %call690 = call i32 @color(i16 zeroext %conv685, i8* %148, i32 %call679.lobit, i32 0) #5
  br label %if.end691

if.end691:                                        ; preds = %if.then682, %if.then684
  %colored.2 = phi i32 [ %call690, %if.then684 ], [ 0, %if.then682 ]
  %149 = load i64, i64* %st_size, align 8, !tbaa !24
  %add692 = add nsw i64 %149, %size.01341
  br label %if.end693

if.end693:                                        ; preds = %if.end691, %if.end676
  %colored.3 = phi i32 [ %colored.2, %if.end691 ], [ 0, %if.end676 ]
  %size.1 = phi i64 [ %add692, %if.end691 ], [ %size.01341, %if.end676 ]
  %150 = load i32, i32* @Xflag, align 4, !tbaa !2
  %151 = load i32, i32* @Jflag, align 4
  %152 = or i32 %151, %150
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %if.else738, label %if.then697

if.then697:                                       ; preds = %if.end693
  %154 = load i32, i32* %st_mode, align 8, !tbaa !23
  %and = and i32 %154, 61440
  %155 = add nsw i32 %and, -4096
  %156 = lshr exact i32 %155, 12
  %trunc = trunc i32 %156 to i20
  %157 = icmp ult i20 %trunc, 12
  br i1 %157, label %switch.lookup, label %for.end712

switch.lookup:                                    ; preds = %if.then697
  %158 = sext i20 %trunc to i64
  %switch.gep = getelementptr inbounds [12 x i32], [12 x i32]* @switch.table.main, i64 0, i64 %158
  %switch.load = load i32, i32* %switch.gep, align 4
  %159 = sext i20 %trunc to i64
  %switch.gep1412 = getelementptr inbounds [12 x i64], [12 x i64]* @switch.table.prot, i64 0, i64 %159
  %switch.load1413 = load i64, i64* %switch.gep1412, align 8
  br label %for.end712

for.end712:                                       ; preds = %if.then697, %switch.lookup
  %j.9.lcssa = phi i32 [ %switch.load, %switch.lookup ], [ 7, %if.then697 ]
  %idxprom700.lcssa = phi i64 [ %switch.load1413, %switch.lookup ], [ 7, %if.then697 ]
  %tobool713 = icmp eq i32 %150, 0
  br i1 %tobool713, label %if.else722, label %if.then714

if.then714:                                       ; preds = %for.end712
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %161 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool715 = icmp eq i32 %161, 0
  %cond716 = select i1 %tobool715, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %arrayidx718 = getelementptr inbounds [9 x i8*], [9 x i8*]* @ftype, i64 0, i64 %idxprom700.lcssa
  %162 = load i8*, i8** %arrayidx718, align 8, !tbaa !5
  %163 = load i8*, i8** %arrayidx6401345, align 8, !tbaa !5
  %call721 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i64 0, i64 0), i8* %cond716, i8* %162, i8* %163)
  br label %if.end744

if.else722:                                       ; preds = %for.end712
  %tobool723 = icmp eq i32 %151, 0
  br i1 %tobool723, label %if.end744, label %if.then724

if.then724:                                       ; preds = %if.else722
  %tobool725 = icmp eq i64 %indvars.iv, 0
  br i1 %tobool725, label %if.end728, label %if.then726

if.then726:                                       ; preds = %if.then724
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %fputc = call i32 @fputc(i32 44, %struct._IO_FILE* %164)
  br label %if.end728

if.end728:                                        ; preds = %if.then724, %if.then726
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %166 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool729 = icmp eq i32 %166, 0
  %cond730 = select i1 %tobool729, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %arrayidx732 = getelementptr inbounds [9 x i8*], [9 x i8*]* @ftype, i64 0, i64 %idxprom700.lcssa
  %167 = load i8*, i8** %arrayidx732, align 8, !tbaa !5
  %168 = load i8*, i8** %arrayidx6401345, align 8, !tbaa !5
  %call735 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %165, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.64, i64 0, i64 0), i8* %cond730, i8* %167, i8* %168)
  br label %if.end744

if.else738:                                       ; preds = %if.end693
  %169 = load i32, i32* @Hflag, align 4, !tbaa !2
  %tobool739 = icmp eq i32 %169, 0
  br i1 %tobool739, label %if.then740, label %if.end744

if.then740:                                       ; preds = %if.else738
  %170 = load i8*, i8** %arrayidx6401345, align 8, !tbaa !5
  call void @printit(i8* %170)
  br label %if.end744

if.end744:                                        ; preds = %if.else722, %if.else738, %if.then740, %if.then714, %if.end728
  %j.10 = phi i32 [ %j.9.lcssa, %if.then714 ], [ %j.9.lcssa, %if.end728 ], [ %j.9.lcssa, %if.else722 ], [ %j.8, %if.else738 ], [ %j.8, %if.then740 ]
  %tobool745 = icmp eq i32 %colored.3, 0
  br i1 %tobool745, label %if.end748, label %if.then746

if.then746:                                       ; preds = %if.end744
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %172 = load i8*, i8** @endcode, align 8, !tbaa !5
  %fputs1163 = call i32 @fputs(i8* %172, %struct._IO_FILE* %171)
  br label %if.end748

if.end748:                                        ; preds = %if.end744, %if.then746
  %173 = load i32, i32* @Hflag, align 4, !tbaa !2
  %tobool749 = icmp eq i32 %173, 0
  br i1 %tobool749, label %if.then750, label %if.else755

if.then750:                                       ; preds = %if.end748
  %174 = load i64 (i8*, i32*, i32*, i64, i64)*, i64 (i8*, i32*, i32*, i64, i64)** @listdir, align 8, !tbaa !5
  %175 = load i8*, i8** %arrayidx6401345, align 8, !tbaa !5
  %call753 = call i64 %174(i8* %175, i32* nonnull %dtotal, i32* nonnull %ftotal, i64 0, i64 0) #5
  br label %if.end769

if.else755:                                       ; preds = %if.end748
  %176 = load i8*, i8** %arrayidx6401345, align 8, !tbaa !5
  %call758 = call i32 @chdir(i8* %176) #5
  %tobool759 = icmp eq i32 %call758, 0
  br i1 %tobool759, label %if.else764, label %if.then760

if.then760:                                       ; preds = %if.else755
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %178 = load i8*, i8** %arrayidx6401345, align 8, !tbaa !5
  %call763 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.66, i64 0, i64 0), i8* %178)
  call void @exit(i32 1) #15
  unreachable

if.else764:                                       ; preds = %if.else755
  %179 = load i64 (i8*, i32*, i32*, i64, i64)*, i64 (i8*, i32*, i32*, i64, i64)** @listdir, align 8, !tbaa !5
  %call765 = call i64 %179(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i32* nonnull %dtotal, i32* nonnull %ftotal, i64 0, i64 0) #5
  %180 = load i8*, i8** @curdir, align 8, !tbaa !5
  %call767 = call i32 @chdir(i8* %180) #5
  br label %if.end769

if.end769:                                        ; preds = %if.else764, %if.then750
  %call765.pn = phi i64 [ %call765, %if.else764 ], [ %call753, %if.then750 ]
  %size.2 = add nsw i64 %call765.pn, %size.1
  %181 = load i32, i32* @Xflag, align 4, !tbaa !2
  %tobool770 = icmp eq i32 %181, 0
  br i1 %tobool770, label %if.end777, label %if.then771

if.then771:                                       ; preds = %if.end769
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %183 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool772 = icmp eq i32 %183, 0
  %cond773 = select i1 %tobool772, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %idxprom774 = sext i32 %j.10 to i64
  %arrayidx775 = getelementptr inbounds [9 x i8*], [9 x i8*]* @ftype, i64 0, i64 %idxprom774
  %184 = load i8*, i8** %arrayidx775, align 8, !tbaa !5
  %call776 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0), i8* %cond773, i8* %184)
  br label %if.end777

if.end777:                                        ; preds = %if.end769, %if.then771
  %185 = load i32, i32* @Jflag, align 4, !tbaa !2
  %tobool778 = icmp eq i32 %185, 0
  br i1 %tobool778, label %for.inc784, label %if.then779

if.then779:                                       ; preds = %if.end777
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %187 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool780 = icmp eq i32 %187, 0
  %cond781 = select i1 %tobool780, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %call782 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0), i8* %cond781)
  br label %for.inc784

for.inc784:                                       ; preds = %if.end777, %if.then779
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %arrayidx640 = getelementptr inbounds i8*, i8** %dirname.0.lcssa1396, i64 %indvars.iv.next
  %188 = load i8*, i8** %arrayidx640, align 8, !tbaa !5
  %tobool641 = icmp eq i8* %188, null
  br i1 %tobool641, label %if.end838, label %for.body642

if.else787:                                       ; preds = %if.end635
  %call.i1194 = call i32 @__lxstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), %struct.stat* nonnull %st) #5
  %cmp789 = icmp sgt i32 %call.i1194, -1
  br i1 %cmp789, label %if.then791, label %if.end803

if.then791:                                       ; preds = %if.else787
  %st_ino792 = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 1
  %189 = load i64, i64* %st_ino792, align 8, !tbaa !19
  %st_dev793 = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 0
  %190 = load i64, i64* %st_dev793, align 8, !tbaa !22
  call void @saveino(i64 %189, i64 %190) #5
  %191 = load i32, i32* @colorize, align 4, !tbaa !2
  %tobool794 = icmp eq i32 %191, 0
  br i1 %tobool794, label %if.end801, label %if.then795

if.then795:                                       ; preds = %if.then791
  %st_mode796 = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 3
  %192 = load i32, i32* %st_mode796, align 8, !tbaa !23
  %conv797 = trunc i32 %192 to i16
  %call788.lobit = lshr i32 %call.i1194, 31
  %call800 = call i32 @color(i16 zeroext %conv797, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i32 %call788.lobit, i32 0) #5
  br label %if.end801

if.end801:                                        ; preds = %if.then791, %if.then795
  %colored.4 = phi i32 [ %call800, %if.then795 ], [ 0, %if.then791 ]
  %st_size802 = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 8
  %193 = load i64, i64* %st_size802, align 8, !tbaa !24
  br label %if.end803

if.end803:                                        ; preds = %if.end801, %if.else787
  %colored.5 = phi i32 [ %colored.4, %if.end801 ], [ 0, %if.else787 ]
  %size.3 = phi i64 [ %193, %if.end801 ], [ 0, %if.else787 ]
  %194 = load i32, i32* @Xflag, align 4, !tbaa !2
  %tobool804 = icmp eq i32 %194, 0
  br i1 %tobool804, label %if.else809, label %if.then805

if.then805:                                       ; preds = %if.end803
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %196 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool806 = icmp eq i32 %196, 0
  %cond807 = select i1 %tobool806, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %call808 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %195, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.70, i64 0, i64 0), i8* %cond807)
  br label %if.end819

if.else809:                                       ; preds = %if.end803
  %197 = load i32, i32* @Jflag, align 4, !tbaa !2
  %tobool810 = icmp eq i32 %197, 0
  br i1 %tobool810, label %if.else813, label %if.then811

if.then811:                                       ; preds = %if.else809
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %199 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.71, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %198)
  br label %if.end819

if.else813:                                       ; preds = %if.else809
  %200 = load i32, i32* @Hflag, align 4, !tbaa !2
  %tobool814 = icmp eq i32 %200, 0
  br i1 %tobool814, label %if.then815, label %if.end819

if.then815:                                       ; preds = %if.else813
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %fputc1170 = call i32 @fputc(i32 46, %struct._IO_FILE* %201)
  br label %if.end819

if.end819:                                        ; preds = %if.else813, %if.then811, %if.then815, %if.then805
  %tobool820 = icmp eq i32 %colored.5, 0
  br i1 %tobool820, label %if.end823, label %if.then821

if.then821:                                       ; preds = %if.end819
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %203 = load i8*, i8** @endcode, align 8, !tbaa !5
  %fputs = call i32 @fputs(i8* %203, %struct._IO_FILE* %202)
  br label %if.end823

if.end823:                                        ; preds = %if.end819, %if.then821
  %204 = load i64 (i8*, i32*, i32*, i64, i64)*, i64 (i8*, i32*, i32*, i64, i64)** @listdir, align 8, !tbaa !5
  %call824 = call i64 %204(i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i32* nonnull %dtotal, i32* nonnull %ftotal, i64 0, i64 0) #5
  %add825 = add nsw i64 %call824, %size.3
  %205 = load i32, i32* @Xflag, align 4, !tbaa !2
  %tobool826 = icmp eq i32 %205, 0
  br i1 %tobool826, label %if.end831, label %if.then827

if.then827:                                       ; preds = %if.end823
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %207 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool828 = icmp eq i32 %207, 0
  %cond829 = select i1 %tobool828, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %208 = load i8*, i8** @_nl, align 8, !tbaa !5
  %call830 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %206, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i64 0, i64 0), i8* %cond829, i8* %208)
  br label %if.end831

if.end831:                                        ; preds = %if.end823, %if.then827
  %209 = load i32, i32* @Jflag, align 4, !tbaa !2
  %tobool832 = icmp eq i32 %209, 0
  br i1 %tobool832, label %if.end838, label %if.then833

if.then833:                                       ; preds = %if.end831
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %211 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool834 = icmp eq i32 %211, 0
  %cond835 = select i1 %tobool834, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %call836 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %210, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0), i8* %cond835)
  br label %if.end838

if.end838:                                        ; preds = %for.inc784, %if.then637, %if.end831, %if.then833
  %size.4 = phi i64 [ %add825, %if.then833 ], [ %add825, %if.end831 ], [ 0, %if.then637 ], [ %size.2, %for.inc784 ]
  %212 = load i32, i32* @Hflag, align 4, !tbaa !2
  %tobool839 = icmp eq i32 %212, 0
  br i1 %tobool839, label %if.end842, label %if.then840

if.then840:                                       ; preds = %if.end838
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %214 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %213)
  br label %if.end842

if.end842:                                        ; preds = %if.end838, %if.then840
  %215 = load i32, i32* @noreport, align 4, !tbaa !2
  %tobool843 = icmp eq i32 %215, 0
  br i1 %tobool843, label %if.then844, label %if.end916

if.then844:                                       ; preds = %if.end842
  %216 = load i32, i32* @Xflag, align 4, !tbaa !2
  %tobool845 = icmp eq i32 %216, 0
  br i1 %tobool845, label %if.else868, label %if.then846

if.then846:                                       ; preds = %if.then844
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %218 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool847 = icmp eq i32 %218, 0
  %cond848 = select i1 %tobool847, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %219 = load i8*, i8** @_nl, align 8, !tbaa !5
  %call849 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %217, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i64 0, i64 0), i8* %cond848, i8* %219)
  %220 = load i32, i32* @duflag, align 4, !tbaa !2
  %tobool850 = icmp eq i32 %220, 0
  br i1 %tobool850, label %if.end855, label %if.then851

if.then851:                                       ; preds = %if.then846
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %222 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool852 = icmp eq i32 %222, 0
  %cond853 = select i1 %tobool852, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %223 = load i8*, i8** @_nl, align 8, !tbaa !5
  %call854 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %221, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.75, i64 0, i64 0), i8* %cond853, i64 %size.4, i8* %223)
  br label %if.end855

if.end855:                                        ; preds = %if.then846, %if.then851
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %225 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool856 = icmp eq i32 %225, 0
  %cond857 = select i1 %tobool856, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %226 = load i32, i32* %dtotal, align 4, !tbaa !15
  %227 = load i8*, i8** @_nl, align 8, !tbaa !5
  %call858 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %224, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i64 0, i64 0), i8* %cond857, i32 %226, i8* %227)
  %228 = load i32, i32* @dflag, align 4, !tbaa !2
  %tobool859 = icmp eq i32 %228, 0
  br i1 %tobool859, label %if.then860, label %if.end864

if.then860:                                       ; preds = %if.end855
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %230 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool861 = icmp eq i32 %230, 0
  %cond862 = select i1 %tobool861, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %231 = load i32, i32* %ftotal, align 4, !tbaa !15
  %232 = load i8*, i8** @_nl, align 8, !tbaa !5
  %call863 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %229, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.78, i64 0, i64 0), i8* %cond862, i32 %231, i8* %232)
  br label %if.end864

if.end864:                                        ; preds = %if.end855, %if.then860
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %234 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool865 = icmp eq i32 %234, 0
  %cond866 = select i1 %tobool865, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %235 = load i8*, i8** @_nl, align 8, !tbaa !5
  %call867 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %233, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i64 0, i64 0), i8* %cond866, i8* %235)
  br label %if.end916

if.else868:                                       ; preds = %if.then844
  %236 = load i32, i32* @Jflag, align 4, !tbaa !2
  %tobool869 = icmp eq i32 %236, 0
  br i1 %tobool869, label %if.else884, label %if.then870

if.then870:                                       ; preds = %if.else868
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %238 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool871 = icmp eq i32 %238, 0
  %cond872 = select i1 %tobool871, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %call873 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %237, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.80, i64 0, i64 0), i8* %cond872)
  %239 = load i32, i32* @duflag, align 4, !tbaa !2
  %tobool874 = icmp eq i32 %239, 0
  br i1 %tobool874, label %if.end877, label %if.then875

if.then875:                                       ; preds = %if.then870
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call876 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %240, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i64 0, i64 0), i64 %size.4)
  br label %if.end877

if.end877:                                        ; preds = %if.then870, %if.then875
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %242 = load i32, i32* %dtotal, align 4, !tbaa !15
  %call878 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i64 0, i64 0), i32 %242)
  %243 = load i32, i32* @dflag, align 4, !tbaa !2
  %tobool879 = icmp eq i32 %243, 0
  br i1 %tobool879, label %if.then880, label %if.end882

if.then880:                                       ; preds = %if.end877
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %245 = load i32, i32* %ftotal, align 4, !tbaa !15
  %call881 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %244, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i64 0, i64 0), i32 %245)
  br label %if.end882

if.end882:                                        ; preds = %if.end877, %if.then880
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %fputc1167 = call i32 @fputc(i32 125, %struct._IO_FILE* %246)
  br label %if.end916

if.else884:                                       ; preds = %if.else868
  %247 = load i32, i32* @duflag, align 4, !tbaa !2
  %tobool885 = icmp eq i32 %247, 0
  br i1 %tobool885, label %if.else896, label %if.then886

if.then886:                                       ; preds = %if.else884
  %call887 = call i32 @psize(i8* nonnull %3, i64 %size.4)
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %249 = load i32, i32* @hflag, align 4, !tbaa !2
  %250 = load i32, i32* @siflag, align 4
  %251 = or i32 %250, %249
  %252 = icmp eq i32 %251, 0
  %cond894 = select i1 %252, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %call895 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %248, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.85, i64 0, i64 0), i8* nonnull %3, i8* %cond894)
  br label %if.end898

if.else896:                                       ; preds = %if.else884
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call897 = call i32 @fputc(i32 10, %struct._IO_FILE* %253)
  br label %if.end898

if.end898:                                        ; preds = %if.else896, %if.then886
  %254 = load i32, i32* @dflag, align 4, !tbaa !2
  %tobool899 = icmp eq i32 %254, 0
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %256 = load i32, i32* %dtotal, align 4, !tbaa !15
  %cmp901 = icmp eq i32 %256, 1
  %cond903 = select i1 %cmp901, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0)
  br i1 %tobool899, label %if.else905, label %if.then900

if.then900:                                       ; preds = %if.end898
  %call904 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %255, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i64 0, i64 0), i32 %256, i8* %cond903)
  br label %if.end916

if.else905:                                       ; preds = %if.end898
  %257 = load i32, i32* %ftotal, align 4, !tbaa !15
  %cmp909 = icmp eq i32 %257, 1
  %cond911 = select i1 %cmp909, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0)
  %call912 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %255, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.90, i64 0, i64 0), i32 %256, i8* %cond903, i32 %257, i8* %cond911)
  br label %if.end916

if.end916:                                        ; preds = %if.end842, %if.end864, %if.then900, %if.else905, %if.end882
  %258 = load i32, i32* @Hflag, align 4, !tbaa !2
  %tobool917 = icmp eq i32 %258, 0
  br i1 %tobool917, label %if.else929, label %if.then918

if.then918:                                       ; preds = %if.end916
  %259 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %260 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.92, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %259)
  %261 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %262 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %261)
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %264 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.94, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %263)
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %266 = load %struct.linedraw*, %struct.linedraw** @linedraw, align 8, !tbaa !5
  %copy = getelementptr inbounds %struct.linedraw, %struct.linedraw* %266, i64 0, i32 4
  %267 = load i8*, i8** %copy, align 8, !tbaa !25
  %call925 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %265, i8* getelementptr inbounds ([254 x i8], [254 x i8]* @.str.140, i64 0, i64 0), i8* %267, i8* %267, i8* %267, i8* %267)
  %268 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %269 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %268)
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %271 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %270)
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %273 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.97, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %272)
  br label %if.end939

if.else929:                                       ; preds = %if.end916
  %274 = load i32, i32* @Xflag, align 4, !tbaa !2
  %tobool930 = icmp eq i32 %274, 0
  br i1 %tobool930, label %if.else933, label %if.then931

if.then931:                                       ; preds = %if.else929
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %276 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %275)
  br label %if.end939

if.else933:                                       ; preds = %if.else929
  %277 = load i32, i32* @Jflag, align 4, !tbaa !2
  %tobool934 = icmp eq i32 %277, 0
  br i1 %tobool934, label %if.end939, label %if.then935

if.then935:                                       ; preds = %if.else933
  %278 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %279 = load i8*, i8** @_nl, align 8, !tbaa !5
  %call936 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %278, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i64 0, i64 0), i8* %279)
  br label %if.end939

if.end939:                                        ; preds = %if.else933, %if.then931, %if.then935, %if.then918
  %280 = load i8*, i8** @outfilename, align 8, !tbaa !5
  %cmp940 = icmp eq i8* %280, null
  br i1 %cmp940, label %if.end944, label %if.then942

if.then942:                                       ; preds = %if.end939
  %281 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call943 = call i32 @fclose(%struct._IO_FILE* %281)
  br label %if.end944

if.end944:                                        ; preds = %if.end939, %if.then942
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @usage(i32 %n) local_unnamed_addr #2 {
entry:
  %cmp = icmp slt i32 %n, 2
  %stderr.val = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %stdout.val = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %0 = select i1 %cmp, %struct._IO_FILE* %stderr.val, %struct._IO_FILE* %stdout.val
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([347 x i8], [347 x i8]* @.str.100, i64 0, i64 0), i64 346, i64 1, %struct._IO_FILE* %0)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  ret void

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([3022 x i8], [3022 x i8]* @.str.101, i64 0, i64 0), i64 3021, i64 1, %struct._IO_FILE* %2)
  tail call void @exit(i32 0) #15
  unreachable
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture readonly, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind uwtable
define i8* @gnu_getcwd() local_unnamed_addr #2 {
entry:
  %call.i = tail call noalias i8* @malloc(i64 100) #5
  %cmp.i = icmp eq i8* %call.i, null
  br i1 %cmp.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %0) #14
  tail call void @exit(i32 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %entry
  %call224 = tail call i8* @getcwd(i8* nonnull %call.i, i64 100) #5
  %cmp25 = icmp eq i8* %call224, null
  br i1 %cmp25, label %if.end.preheader, label %cleanup6

if.end.preheader:                                 ; preds = %xmalloc.exit
  br label %if.end

while.cond:                                       ; preds = %if.end
  %call2 = tail call i8* @getcwd(i8* nonnull %call.i16, i64 %conv4) #5
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %if.end, label %cleanup6

if.end:                                           ; preds = %if.end.preheader, %while.cond
  %buffer.027 = phi i8* [ %call.i16, %while.cond ], [ %call.i, %if.end.preheader ]
  %size.026 = phi i32 [ %mul, %while.cond ], [ 100, %if.end.preheader ]
  %mul = shl nsw i32 %size.026, 1
  tail call void @free(i8* nonnull %buffer.027) #5
  %conv4 = sext i32 %mul to i64
  %call.i16 = tail call noalias i8* @malloc(i64 %conv4) #5
  %cmp.i17 = icmp eq i8* %call.i16, null
  br i1 %cmp.i17, label %if.then.i18, label %while.cond

if.then.i18:                                      ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %2) #14
  tail call void @exit(i32 1) #15
  unreachable

cleanup6:                                         ; preds = %while.cond, %xmalloc.exit
  %buffer.0.lcssa = phi i8* [ %call.i, %xmalloc.exit ], [ %call.i16, %while.cond ]
  ret i8* %buffer.0.lcssa
}

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @printit(i8* %s) local_unnamed_addr #2 {
entry:
  %0 = load i32, i32* @Nflag, align 4, !tbaa !2
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @Qflag, align 4, !tbaa !2
  %tobool1 = icmp eq i32 %1, 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  br i1 %tobool1, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i64 0, i64 0), i8* %s)
  br label %cleanup105

if.else:                                          ; preds = %if.then
  %fputs = tail call i32 @fputs(i8* %s, %struct._IO_FILE* %2)
  br label %cleanup105

if.end4:                                          ; preds = %entry
  %3 = load i32, i32* @mb_cur_max, align 4, !tbaa !15
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then5, label %if.end37

if.then5:                                         ; preds = %if.end4
  %call6 = tail call i64 @strlen(i8* %s) #13
  %add = shl i64 %call6, 32
  %sext = add i64 %add, 4294967296
  %mul = ashr exact i64 %sext, 30
  %call.i = tail call noalias i8* @malloc(i64 %mul) #5
  %cmp.i = icmp eq i8* %call.i, null
  br i1 %cmp.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %if.then5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %4) #14
  tail call void @exit(i32 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %if.then5
  %conv7 = ashr exact i64 %sext, 32
  %6 = bitcast i8* %call.i to i32*
  %call10 = tail call i64 @mbstowcs(i32* %6, i8* %s, i64 %conv7) #5
  %cmp11 = icmp eq i64 %call10, 0
  br i1 %cmp11, label %if.end35, label %if.then13

if.then13:                                        ; preds = %xmalloc.exit
  %7 = load i32, i32* @Qflag, align 4, !tbaa !2
  %tobool14 = icmp eq i32 %7, 0
  br i1 %tobool14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.then13
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call16 = tail call i32 @_IO_putc(i32 34, %struct._IO_FILE* %8)
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.then15
  %9 = load i32, i32* %6, align 4, !tbaa !15
  %tobool18141 = icmp eq i32 %9, 0
  br i1 %tobool18141, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end17
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %10 = phi i32 [ %16, %for.inc ], [ %9, %for.body.preheader ]
  %tp.0142 = phi i32* [ %incdec.ptr, %for.inc ], [ %6, %for.body.preheader ]
  %call19 = tail call i32 @iswprint(i32 %10) #5
  %tobool20 = icmp eq i32 %call19, 0
  br i1 %tobool20, label %if.else23, label %if.then21

if.then21:                                        ; preds = %for.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %12 = load i32, i32* %tp.0142, align 4, !tbaa !15
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i64 0, i64 0), i32 %12)
  br label %for.inc

if.else23:                                        ; preds = %for.body
  %13 = load i32, i32* @qflag, align 4, !tbaa !2
  %tobool24 = icmp eq i32 %13, 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  br i1 %tobool24, label %if.else27, label %if.then25

if.then25:                                        ; preds = %if.else23
  %call26 = tail call i32 @_IO_putc(i32 63, %struct._IO_FILE* %14)
  br label %for.inc

if.else27:                                        ; preds = %if.else23
  %15 = load i32, i32* %tp.0142, align 4, !tbaa !15
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i64 0, i64 0), i32 %15)
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %if.else27, %if.then25
  %incdec.ptr = getelementptr inbounds i32, i32* %tp.0142, i64 1
  %16 = load i32, i32* %incdec.ptr, align 4, !tbaa !15
  %tobool18 = icmp eq i32 %16, 0
  br i1 %tobool18, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end17
  %17 = load i32, i32* @Qflag, align 4, !tbaa !2
  %tobool31 = icmp eq i32 %17, 0
  br i1 %tobool31, label %if.end34, label %if.then32

if.then32:                                        ; preds = %for.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call33 = tail call i32 @_IO_putc(i32 34, %struct._IO_FILE* %18)
  br label %if.end34

if.end34:                                         ; preds = %for.end, %if.then32
  tail call void @free(i8* %call.i) #5
  br label %cleanup105

if.end35:                                         ; preds = %xmalloc.exit
  tail call void @free(i8* nonnull %call.i) #5
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.end4
  %19 = load i32, i32* @Qflag, align 4, !tbaa !2
  %tobool38 = icmp eq i32 %19, 0
  br i1 %tobool38, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end37
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call40 = tail call i32 @_IO_putc(i32 34, %struct._IO_FILE* %20)
  br label %if.end41

if.end41:                                         ; preds = %if.end37, %if.then39
  %21 = load i8, i8* %s, align 1, !tbaa !2
  %tobool43139 = icmp eq i8 %21, 0
  br i1 %tobool43139, label %for.end100, label %for.body44.preheader

for.body44.preheader:                             ; preds = %if.end41
  br label %for.body44

for.body44:                                       ; preds = %for.body44.preheader, %for.inc98
  %22 = phi i8 [ %36, %for.inc98 ], [ %21, %for.body44.preheader ]
  %s.addr.0140 = phi i8* [ %incdec.ptr99, %for.inc98 ], [ %s, %for.body44.preheader ]
  %conv45 = zext i8 %22 to i32
  switch i8 %22, label %lor.lhs.false52 [
    i8 92, label %if.then62
    i8 13, label %if.then62
    i8 12, label %if.then62
    i8 11, label %if.then62
    i8 10, label %if.then62
    i8 9, label %if.then62
    i8 8, label %if.then62
    i8 7, label %if.then62
  ]

lor.lhs.false52:                                  ; preds = %for.body44
  %cmp53 = icmp eq i8 %22, 34
  %23 = load i32, i32* @Qflag, align 4
  %tobool56 = icmp ne i32 %23, 0
  %or.cond109 = and i1 %cmp53, %tobool56
  %cmp58 = icmp ne i8 %22, 32
  %or.cond110 = or i1 %cmp58, %tobool56
  %or.cond = xor i1 %or.cond109, %or.cond110
  br i1 %or.cond, label %if.else72, label %if.then62

if.then62:                                        ; preds = %lor.lhs.false52, %for.body44, %for.body44, %for.body44, %for.body44, %for.body44, %for.body44, %for.body44, %for.body44
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call63 = tail call i32 @_IO_putc(i32 92, %struct._IO_FILE* %24)
  %cmp64 = icmp ugt i8 %22, 13
  br i1 %cmp64, label %if.then66, label %if.else68

if.then66:                                        ; preds = %if.then62
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call67 = tail call i32 @_IO_putc(i32 %conv45, %struct._IO_FILE* %25)
  br label %for.inc98

if.else68:                                        ; preds = %if.then62
  %sub = add nsw i32 %conv45, -7
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* @.str.128, i64 0, i64 %idxprom
  %26 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv69 = sext i8 %26 to i32
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call70 = tail call i32 @_IO_putc(i32 %conv69, %struct._IO_FILE* %27)
  br label %for.inc98

if.else72:                                        ; preds = %lor.lhs.false52
  %call73 = tail call i16** @__ctype_b_loc() #17
  %28 = load i16*, i16** %call73, align 8, !tbaa !5
  %idxprom74 = zext i8 %22 to i64
  %arrayidx75 = getelementptr inbounds i16, i16* %28, i64 %idxprom74
  %29 = load i16, i16* %arrayidx75, align 2, !tbaa !27
  %30 = and i16 %29, 16384
  %tobool77 = icmp eq i16 %30, 0
  br i1 %tobool77, label %if.else80, label %if.then78

if.then78:                                        ; preds = %if.else72
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call79 = tail call i32 @_IO_putc(i32 %conv45, %struct._IO_FILE* %31)
  br label %for.inc98

if.else80:                                        ; preds = %if.else72
  %32 = load i32, i32* @qflag, align 4, !tbaa !2
  %tobool81 = icmp eq i32 %32, 0
  br i1 %tobool81, label %if.else93, label %if.then82

if.then82:                                        ; preds = %if.else80
  %33 = load i32, i32* @mb_cur_max, align 4, !tbaa !15
  %cmp83 = icmp sgt i32 %33, 1
  %cmp86 = icmp slt i8 %22, 0
  %or.cond111 = and i1 %cmp86, %cmp83
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  br i1 %or.cond111, label %if.then88, label %if.else90

if.then88:                                        ; preds = %if.then82
  %call89 = tail call i32 @_IO_putc(i32 %conv45, %struct._IO_FILE* %34)
  br label %for.inc98

if.else90:                                        ; preds = %if.then82
  %call91 = tail call i32 @_IO_putc(i32 63, %struct._IO_FILE* %34)
  br label %for.inc98

if.else93:                                        ; preds = %if.else80
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call94 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i64 0, i64 0), i32 %conv45)
  br label %for.inc98

for.inc98:                                        ; preds = %if.else68, %if.then66, %if.else93, %if.else90, %if.then88, %if.then78
  %incdec.ptr99 = getelementptr inbounds i8, i8* %s.addr.0140, i64 1
  %36 = load i8, i8* %incdec.ptr99, align 1, !tbaa !2
  %tobool43 = icmp eq i8 %36, 0
  br i1 %tobool43, label %for.end100, label %for.body44

for.end100:                                       ; preds = %for.inc98, %if.end41
  %37 = load i32, i32* @Qflag, align 4, !tbaa !2
  %tobool101 = icmp eq i32 %37, 0
  br i1 %tobool101, label %cleanup105, label %if.then102

if.then102:                                       ; preds = %for.end100
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call103 = tail call i32 @_IO_putc(i32 34, %struct._IO_FILE* %38)
  br label %cleanup105

cleanup105:                                       ; preds = %if.then102, %for.end100, %if.end34, %if.then2, %if.else
  ret void
}

; Function Attrs: nounwind
declare i32 @chdir(i8*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @psize(i8* nocapture %buf, i64 %size) local_unnamed_addr #2 {
entry:
  %0 = load i32, i32* @siflag, align 4, !tbaa !2
  %tobool = icmp ne i32 %0, 0
  %1 = select i1 %tobool, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.130, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.129, i64 0, i64 0)
  %cond2 = select i1 %tobool, i32 1000, i32 1024
  %2 = load i32, i32* @hflag, align 4, !tbaa !2
  %3 = or i32 %2, %0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %if.else25, label %if.then

if.then:                                          ; preds = %entry
  %5 = zext i32 %cond2 to i64
  %cmp = icmp sle i64 %5, %size
  %conv7 = select i1 %tobool, i64 1000000, i64 1048576
  %cmp844 = icmp sgt i64 %conv7, %size
  br i1 %cmp844, label %for.end, label %for.inc.lr.ph

for.inc.lr.ph:                                    ; preds = %if.then
  %cond6 = zext i1 %cmp to i32
  br label %for.inc

for.inc:                                          ; preds = %for.inc.lr.ph, %for.inc
  %idx.046 = phi i32 [ %cond6, %for.inc.lr.ph ], [ %inc, %for.inc ]
  %size.addr.045 = phi i64 [ %size, %for.inc.lr.ph ], [ %div, %for.inc ]
  %inc = add nuw nsw i32 %idx.046, 1
  %div = sdiv i64 %size.addr.045, %5
  %cmp8 = icmp slt i64 %div, %conv7
  br i1 %cmp8, label %if.else.loopexit, label %for.inc

for.end:                                          ; preds = %if.then
  br i1 %cmp, label %if.else, label %if.then12

if.then12:                                        ; preds = %for.end
  %conv13 = trunc i64 %size to i32
  %call = tail call i32 (i8*, i8*, ...) @sprintf(i8* %buf, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i32 %conv13) #5
  br label %cleanup

if.else.loopexit:                                 ; preds = %for.inc
  %phitmp = sext i32 %inc to i64
  br label %if.else

if.else:                                          ; preds = %if.else.loopexit, %for.end
  %idx.0.lcssa50 = phi i64 [ 1, %for.end ], [ %phitmp, %if.else.loopexit ]
  %size.addr.0.lcssa49 = phi i64 [ %size, %for.end ], [ %div, %if.else.loopexit ]
  %div15 = sdiv i64 %size.addr.0.lcssa49, %5
  %cmp16 = icmp sgt i64 %div15, 9
  %cond18 = select i1 %cmp16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.133, i64 0, i64 0)
  %conv19 = sitofp i64 %size.addr.0.lcssa49 to float
  %conv20 = sitofp i32 %cond2 to float
  %div21 = fdiv float %conv19, %conv20
  %conv22 = fpext float %div21 to double
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idx.0.lcssa50
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv23 = sext i8 %6 to i32
  %call24 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %buf, i8* %cond18, double %conv22, i32 %conv23) #5
  br label %cleanup

if.else25:                                        ; preds = %entry
  %call26 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %buf, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.134, i64 0, i64 0), i64 %size) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else25, %if.else, %if.then12
  %retval.0 = phi i32 [ %call24, %if.else ], [ %call, %if.then12 ], [ %call26, %if.else25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @mbstowcs(i32*, i8*, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @_IO_putc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noalias i8* @xmalloc(i64 %size) local_unnamed_addr #2 {
entry:
  %call = tail call noalias i8* @malloc(i64 %size) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %0) #16
  tail call void @exit(i32 1) #15
  unreachable

if.end:                                           ; preds = %entry
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define noalias i8* @xrealloc(i8* nocapture %ptr, i64 %size) local_unnamed_addr #2 {
entry:
  %call = tail call i8* @realloc(i8* %ptr, i64 %size) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %0) #16
  tail call void @exit(i32 1) #15
  unreachable

if.end:                                           ; preds = %entry
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define %struct._info** @read_dir(i8* %dir, i32* nocapture %n) local_unnamed_addr #2 {
entry:
  %lst = alloca %struct.stat, align 16
  %st = alloca %struct.stat, align 16
  %0 = bitcast %struct.stat* %lst to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #5
  %1 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %1) #5
  %2 = load i8*, i8** @read_dir.path, align 8, !tbaa !5
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* %dir) #13
  %add = add i64 %call, 4096
  store i64 %add, i64* @read_dir.lbufsize, align 8, !tbaa !29
  store i64 %add, i64* @read_dir.pathsize, align 8, !tbaa !29
  %call.i = tail call noalias i8* @malloc(i64 %add) #5
  %cmp.i = icmp eq i8* %call.i, null
  br i1 %cmp.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %3) #14
  tail call void @exit(i32 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %if.then
  store i8* %call.i, i8** @read_dir.path, align 8, !tbaa !5
  %call.i338 = tail call noalias i8* @malloc(i64 %add) #5
  %cmp.i339 = icmp eq i8* %call.i338, null
  br i1 %cmp.i339, label %if.then.i340, label %xmalloc.exit341

if.then.i340:                                     ; preds = %xmalloc.exit
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %5) #14
  tail call void @exit(i32 1) #15
  unreachable

xmalloc.exit341:                                  ; preds = %xmalloc.exit
  store i8* %call.i338, i8** @read_dir.lbuf, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %xmalloc.exit341, %entry
  store i32 1, i32* %n, align 4, !tbaa !15
  %call3 = tail call %struct.__dirstream* @opendir(i8* %dir)
  %cmp4 = icmp eq %struct.__dirstream* %call3, null
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call.i342 = tail call noalias i8* @malloc(i64 240) #5
  %cmp.i343 = icmp eq i8* %call.i342, null
  br i1 %cmp.i343, label %if.then.i344, label %xmalloc.exit345

if.then.i344:                                     ; preds = %if.end6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %7) #14
  tail call void @exit(i32 1) #15
  unreachable

xmalloc.exit345:                                  ; preds = %if.end6
  %9 = bitcast i8* %call.i342 to %struct._info**
  %call8389 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %call3) #5
  %tobool390 = icmp eq %struct.dirent* %call8389, null
  br i1 %tobool390, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %xmalloc.exit345
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %lst, i64 0, i32 3
  %st_mode63 = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 3
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %lst, i64 0, i32 4
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %lst, i64 0, i32 5
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %lst, i64 0, i32 8
  %tv_sec = getelementptr inbounds %struct.stat, %struct.stat* %lst, i64 0, i32 11, i32 0
  %tv_sec163 = getelementptr inbounds %struct.stat, %struct.stat* %lst, i64 0, i32 13, i32 0
  %tv_sec166 = getelementptr inbounds %struct.stat, %struct.stat* %lst, i64 0, i32 12, i32 0
  %10 = bitcast %struct.stat* %st to <2 x i64>*
  %11 = bitcast %struct.stat* %lst to <2 x i64>*
  %12 = bitcast %struct.stat* %st to <2 x i64>*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %call8394 = phi %struct.dirent* [ %call8389, %while.body.lr.ph ], [ %call8, %while.cond.backedge ]
  %p.0393 = phi i32 [ 0, %while.body.lr.ph ], [ %p.0.be, %while.cond.backedge ]
  %ne.0392 = phi i32 [ 30, %while.body.lr.ph ], [ %ne.0.be, %while.cond.backedge ]
  %dl.0391 = phi %struct._info** [ %9, %while.body.lr.ph ], [ %dl.0.be, %while.cond.backedge ]
  %13 = phi i8* [ %call.i342, %while.body.lr.ph ], [ %.be, %while.cond.backedge ]
  %arraydecay = getelementptr inbounds %struct.dirent, %struct.dirent* %call8394, i64 0, i32 4, i64 0
  %call9 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i64 0, i64 0), i8* %arraydecay) #13
  %tobool10 = icmp eq i32 %call9, 0
  br i1 %tobool10, label %while.cond.backedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %call13 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i8* %arraydecay) #13
  %tobool14 = icmp eq i32 %call13, 0
  br i1 %tobool14, label %while.cond.backedge, label %if.end16

while.cond.backedge:                              ; preds = %land.lhs.true110, %land.lhs.true102, %land.lhs.true93, %land.lhs.true83, %if.end47, %land.lhs.true25, %land.lhs.true, %while.body, %lor.lhs.false, %xmalloc.exit370, %if.end221
  %.be = phi i8* [ %38, %xmalloc.exit370 ], [ %38, %if.end221 ], [ %13, %lor.lhs.false ], [ %13, %while.body ], [ %13, %land.lhs.true ], [ %13, %land.lhs.true25 ], [ %13, %if.end47 ], [ %13, %land.lhs.true83 ], [ %13, %land.lhs.true93 ], [ %13, %land.lhs.true102 ], [ %13, %land.lhs.true110 ]
  %dl.0.be = phi %struct._info** [ %dl.1, %xmalloc.exit370 ], [ %dl.1, %if.end221 ], [ %dl.0391, %lor.lhs.false ], [ %dl.0391, %while.body ], [ %dl.0391, %land.lhs.true ], [ %dl.0391, %land.lhs.true25 ], [ %dl.0391, %if.end47 ], [ %dl.0391, %land.lhs.true83 ], [ %dl.0391, %land.lhs.true93 ], [ %dl.0391, %land.lhs.true102 ], [ %dl.0391, %land.lhs.true110 ]
  %ne.0.be = phi i32 [ %ne.1, %xmalloc.exit370 ], [ %ne.1, %if.end221 ], [ %ne.0392, %lor.lhs.false ], [ %ne.0392, %while.body ], [ %ne.0392, %land.lhs.true ], [ %ne.0392, %land.lhs.true25 ], [ %ne.0392, %if.end47 ], [ %ne.0392, %land.lhs.true83 ], [ %ne.0392, %land.lhs.true93 ], [ %ne.0392, %land.lhs.true102 ], [ %ne.0392, %land.lhs.true110 ]
  %p.0.be = phi i32 [ %inc, %xmalloc.exit370 ], [ %inc244, %if.end221 ], [ %p.0393, %lor.lhs.false ], [ %p.0393, %while.body ], [ %p.0393, %land.lhs.true ], [ %p.0393, %land.lhs.true25 ], [ %p.0393, %if.end47 ], [ %p.0393, %land.lhs.true83 ], [ %p.0393, %land.lhs.true93 ], [ %p.0393, %land.lhs.true102 ], [ %p.0393, %land.lhs.true110 ]
  %call8 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %call3) #5
  %tobool = icmp eq %struct.dirent* %call8, null
  br i1 %tobool, label %while.end, label %while.body

if.end16:                                         ; preds = %lor.lhs.false
  %14 = load i32, i32* @Hflag, align 4, !tbaa !2
  %tobool17 = icmp eq i32 %14, 0
  br i1 %tobool17, label %if.end23, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end16
  %call20 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i64 0, i64 0)) #13
  %tobool21 = icmp eq i32 %call20, 0
  br i1 %tobool21, label %while.cond.backedge, label %if.end23

if.end23:                                         ; preds = %land.lhs.true, %if.end16
  %15 = load i32, i32* @aflag, align 4, !tbaa !2
  %tobool24 = icmp eq i32 %15, 0
  br i1 %tobool24, label %land.lhs.true25, label %if.end30

land.lhs.true25:                                  ; preds = %if.end23
  %16 = load i8, i8* %arraydecay, align 1, !tbaa !2
  %cmp27 = icmp eq i8 %16, 46
  br i1 %cmp27, label %while.cond.backedge, label %if.end30

if.end30:                                         ; preds = %if.end23, %land.lhs.true25
  %call31 = call i64 @strlen(i8* %dir) #13
  %call34 = call i64 @strlen(i8* %arraydecay) #13
  %add35 = add i64 %call34, %call31
  %add36 = add i64 %add35, 2
  %17 = load i64, i64* @read_dir.pathsize, align 8, !tbaa !29
  %cmp37 = icmp ugt i64 %add36, %17
  %18 = load i8*, i8** @read_dir.path, align 8, !tbaa !5
  br i1 %cmp37, label %if.then39, label %if.end47

if.then39:                                        ; preds = %if.end30
  %add45 = add i64 %add35, 4096
  store i64 %add45, i64* @read_dir.pathsize, align 8, !tbaa !29
  %call.i346 = call i8* @realloc(i8* %18, i64 %add45) #5
  %cmp.i347 = icmp eq i8* %call.i346, null
  br i1 %cmp.i347, label %if.then.i348, label %xrealloc.exit

if.then.i348:                                     ; preds = %if.then39
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %20 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %19) #14
  call void @exit(i32 1) #15
  unreachable

xrealloc.exit:                                    ; preds = %if.then39
  store i8* %call.i346, i8** @read_dir.path, align 8, !tbaa !5
  br label %if.end47

if.end47:                                         ; preds = %if.end30, %xrealloc.exit
  %21 = phi i8* [ %call.i346, %xrealloc.exit ], [ %18, %if.end30 ]
  %call50 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i64 0, i64 0), i8* %dir, i8* %arraydecay) #5
  %22 = load i8*, i8** @read_dir.path, align 8, !tbaa !5
  %call.i349 = call i32 @__lxstat(i32 1, i8* nonnull %22, %struct.stat* nonnull %lst) #5
  %cmp52 = icmp slt i32 %call.i349, 0
  br i1 %cmp52, label %while.cond.backedge, label %if.end55

if.end55:                                         ; preds = %if.end47
  %23 = load i32, i32* %st_mode, align 8, !tbaa !23
  %and = and i32 %23, 61440
  %cmp56 = icmp eq i32 %and, 40960
  br i1 %cmp56, label %if.then58, label %if.else

if.then58:                                        ; preds = %if.end55
  %24 = load i8*, i8** @read_dir.path, align 8, !tbaa !5
  %call.i350 = call i32 @__xstat(i32 1, i8* nonnull %24, %struct.stat* nonnull %st) #5
  %cmp60 = icmp slt i32 %call.i350, 0
  br i1 %cmp60, label %if.then62, label %if.end69

if.then62:                                        ; preds = %if.then58
  store i32 0, i32* %st_mode63, align 8, !tbaa !23
  br label %if.end69

if.else:                                          ; preds = %if.end55
  store i32 %23, i32* %st_mode63, align 8, !tbaa !23
  %25 = load <2 x i64>, <2 x i64>* %11, align 16, !tbaa !29
  store <2 x i64> %25, <2 x i64>* %12, align 16, !tbaa !29
  br label %if.end69

if.end69:                                         ; preds = %if.then58, %if.then62, %if.else
  %rs.0 = phi i32 [ %call.i350, %if.then62 ], [ %call.i350, %if.then58 ], [ 0, %if.else ]
  %26 = load i32, i32* %st_mode, align 8, !tbaa !23
  %and71 = and i32 %26, 61440
  %cmp72 = icmp eq i32 %and71, 16384
  br i1 %cmp72, label %if.end91, label %land.lhs.true74

land.lhs.true74:                                  ; preds = %if.end69
  %cmp77 = icmp ne i32 %and71, 40960
  %27 = load i32, i32* @lflag, align 4
  %tobool80 = icmp eq i32 %27, 0
  %or.cond.not = or i1 %cmp77, %tobool80
  %28 = load i8*, i8** @pattern, align 8
  %tobool82 = icmp ne i8* %28, null
  %or.cond259 = and i1 %or.cond.not, %tobool82
  br i1 %or.cond259, label %land.lhs.true83, label %if.end91

land.lhs.true83:                                  ; preds = %land.lhs.true74
  %call86 = call i32 @patmatch(i8* %arraydecay, i8* nonnull %28)
  %cmp87 = icmp eq i32 %call86, 1
  br i1 %cmp87, label %if.end91, label %while.cond.backedge

if.end91:                                         ; preds = %land.lhs.true83, %if.end69, %land.lhs.true74
  %29 = load i8*, i8** @ipattern, align 8, !tbaa !5
  %tobool92 = icmp eq i8* %29, null
  br i1 %tobool92, label %if.end100, label %land.lhs.true93

land.lhs.true93:                                  ; preds = %if.end91
  %call96 = call i32 @patmatch(i8* %arraydecay, i8* nonnull %29)
  %cmp97 = icmp eq i32 %call96, 1
  br i1 %cmp97, label %while.cond.backedge, label %if.end100

if.end100:                                        ; preds = %if.end91, %land.lhs.true93
  %30 = load i32, i32* @dflag, align 4, !tbaa !2
  %tobool101 = icmp eq i32 %30, 0
  br i1 %tobool101, label %if.end108, label %land.lhs.true102

land.lhs.true102:                                 ; preds = %if.end100
  %31 = load i32, i32* %st_mode63, align 8, !tbaa !23
  %and104 = and i32 %31, 61440
  %cmp105 = icmp eq i32 %and104, 16384
  br i1 %cmp105, label %if.end108, label %while.cond.backedge

if.end108:                                        ; preds = %land.lhs.true102, %if.end100
  %32 = load i8*, i8** @pattern, align 8, !tbaa !5
  %tobool109 = icmp eq i8* %32, null
  br i1 %tobool109, label %if.end118, label %land.lhs.true110

land.lhs.true110:                                 ; preds = %if.end108
  %33 = load i32, i32* %st_mode, align 8, !tbaa !23
  %and112 = and i32 %33, 61440
  %cmp113 = icmp ne i32 %and112, 40960
  %34 = load i32, i32* @lflag, align 4
  %tobool116 = icmp ne i32 %34, 0
  %or.cond258 = or i1 %cmp113, %tobool116
  br i1 %or.cond258, label %if.end118, label %while.cond.backedge

if.end118:                                        ; preds = %if.end108, %land.lhs.true110
  %sub = add nsw i32 %ne.0392, -1
  %cmp119 = icmp eq i32 %p.0393, %sub
  br i1 %cmp119, label %if.then121, label %if.end125

if.then121:                                       ; preds = %if.end118
  %add122 = add nsw i32 %ne.0392, 20
  %conv123 = sext i32 %add122 to i64
  %mul = shl nsw i64 %conv123, 3
  %call.i351 = call i8* @realloc(i8* %13, i64 %mul) #5
  %cmp.i352 = icmp eq i8* %call.i351, null
  br i1 %cmp.i352, label %if.then.i353, label %xrealloc.exit354

if.then.i353:                                     ; preds = %if.then121
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %36 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %35) #14
  call void @exit(i32 1) #15
  unreachable

xrealloc.exit354:                                 ; preds = %if.then121
  %37 = bitcast i8* %call.i351 to %struct._info**
  br label %if.end125

if.end125:                                        ; preds = %xrealloc.exit354, %if.end118
  %38 = phi i8* [ %call.i351, %xrealloc.exit354 ], [ %13, %if.end118 ]
  %dl.1 = phi %struct._info** [ %37, %xrealloc.exit354 ], [ %dl.0391, %if.end118 ]
  %ne.1 = phi i32 [ %add122, %xrealloc.exit354 ], [ %ne.0392, %if.end118 ]
  %call.i355 = call noalias i8* @malloc(i64 120) #5
  %cmp.i356 = icmp eq i8* %call.i355, null
  br i1 %cmp.i356, label %if.then.i357, label %xmalloc.exit358

if.then.i357:                                     ; preds = %if.end125
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %39) #14
  call void @exit(i32 1) #15
  unreachable

xmalloc.exit358:                                  ; preds = %if.end125
  %idxprom = sext i32 %p.0393 to i64
  %arrayidx127 = getelementptr inbounds %struct._info*, %struct._info** %dl.1, i64 %idxprom
  %41 = bitcast %struct._info** %arrayidx127 to i8**
  store i8* %call.i355, i8** %41, align 8, !tbaa !5
  %call130 = call i64 @strlen(i8* %arraydecay) #13
  %add131 = add i64 %call130, 1
  %call.i359 = call noalias i8* @malloc(i64 %add131) #5
  %cmp.i360 = icmp eq i8* %call.i359, null
  br i1 %cmp.i360, label %if.then.i361, label %xmalloc.exit362

if.then.i361:                                     ; preds = %xmalloc.exit358
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %43 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %42) #14
  call void @exit(i32 1) #15
  unreachable

xmalloc.exit362:                                  ; preds = %xmalloc.exit358
  %call135 = call i8* @strcpy(i8* nonnull %call.i359, i8* %arraydecay) #5
  %44 = load %struct._info*, %struct._info** %arrayidx127, align 8, !tbaa !5
  %name = getelementptr inbounds %struct._info, %struct._info* %44, i64 0, i32 0
  store i8* %call135, i8** %name, align 8, !tbaa !11
  %45 = load i32, i32* %st_mode, align 8, !tbaa !23
  %46 = load %struct._info*, %struct._info** %arrayidx127, align 8, !tbaa !5
  %mode = getelementptr inbounds %struct._info, %struct._info* %46, i64 0, i32 7
  store i32 %45, i32* %mode, align 4, !tbaa !30
  %47 = load i32, i32* %st_uid, align 4, !tbaa !31
  %uid = getelementptr inbounds %struct._info, %struct._info* %46, i64 0, i32 9
  store i32 %47, i32* %uid, align 4, !tbaa !32
  %48 = load i32, i32* %st_gid, align 16, !tbaa !33
  %gid = getelementptr inbounds %struct._info, %struct._info* %46, i64 0, i32 10
  store i32 %48, i32* %gid, align 8, !tbaa !34
  %49 = load i64, i64* %st_size, align 16, !tbaa !24
  %size = getelementptr inbounds %struct._info, %struct._info* %46, i64 0, i32 11
  store i64 %49, i64* %size, align 8, !tbaa !12
  %dev = getelementptr inbounds %struct._info, %struct._info* %46, i64 0, i32 15
  %50 = load <2 x i64>, <2 x i64>* %10, align 16, !tbaa !29
  %51 = bitcast i64* %dev to <2 x i64>*
  store <2 x i64> %50, <2 x i64>* %51, align 8, !tbaa !29
  %lnk = getelementptr inbounds %struct._info, %struct._info* %46, i64 0, i32 1
  store i8* null, i8** %lnk, align 8, !tbaa !35
  %52 = load %struct._info*, %struct._info** %arrayidx127, align 8, !tbaa !5
  %orphan = getelementptr inbounds %struct._info, %struct._info* %52, i64 0, i32 6
  store i32 0, i32* %orphan, align 8, !tbaa !36
  %err = getelementptr inbounds %struct._info, %struct._info* %52, i64 0, i32 17
  store i8* null, i8** %err, align 8, !tbaa !37
  %53 = load %struct._info*, %struct._info** %arrayidx127, align 8, !tbaa !5
  %child = getelementptr inbounds %struct._info, %struct._info* %53, i64 0, i32 18
  store %struct._info** null, %struct._info*** %child, align 8, !tbaa !38
  %54 = load i64, i64* %tv_sec, align 8, !tbaa !39
  %55 = load %struct._info*, %struct._info** %arrayidx127, align 8, !tbaa !5
  %atime = getelementptr inbounds %struct._info, %struct._info* %55, i64 0, i32 12
  store i64 %54, i64* %atime, align 8, !tbaa !40
  %56 = load i64, i64* %tv_sec163, align 8, !tbaa !41
  %ctime = getelementptr inbounds %struct._info, %struct._info* %55, i64 0, i32 13
  store i64 %56, i64* %ctime, align 8, !tbaa !14
  %57 = load i64, i64* %tv_sec166, align 8, !tbaa !42
  %mtime = getelementptr inbounds %struct._info, %struct._info* %55, i64 0, i32 14
  store i64 %57, i64* %mtime, align 8, !tbaa !13
  %and170 = and i32 %45, 61440
  %cmp171 = icmp eq i32 %and170, 40960
  br i1 %cmp171, label %if.then173, label %xmalloc.exit362.if.end221_crit_edge

xmalloc.exit362.if.end221_crit_edge:              ; preds = %xmalloc.exit362
  %.pre399 = load i32, i32* %st_mode63, align 8, !tbaa !23
  br label %if.end221

if.then173:                                       ; preds = %xmalloc.exit362
  %58 = load i64, i64* @read_dir.lbufsize, align 8, !tbaa !29
  %cmp176 = icmp slt i64 %49, %58
  %.pre396 = load i8*, i8** @read_dir.lbuf, align 8, !tbaa !5
  br i1 %cmp176, label %if.end182, label %if.then178

if.then178:                                       ; preds = %if.then173
  %add180 = add nsw i64 %49, 8192
  store i64 %add180, i64* @read_dir.lbufsize, align 8, !tbaa !29
  %call.i363 = call i8* @realloc(i8* %.pre396, i64 %add180) #5
  %cmp.i364 = icmp eq i8* %call.i363, null
  br i1 %cmp.i364, label %if.then.i365, label %xrealloc.exit366

if.then.i365:                                     ; preds = %if.then178
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %60 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %59) #14
  call void @exit(i32 1) #15
  unreachable

xrealloc.exit366:                                 ; preds = %if.then178
  store i8* %call.i363, i8** @read_dir.lbuf, align 8, !tbaa !5
  %.pre397 = load i64, i64* @read_dir.lbufsize, align 8, !tbaa !29
  br label %if.end182

if.end182:                                        ; preds = %if.then173, %xrealloc.exit366
  %61 = phi i64 [ %.pre397, %xrealloc.exit366 ], [ %58, %if.then173 ]
  %62 = phi i8* [ %call.i363, %xrealloc.exit366 ], [ %.pre396, %if.then173 ]
  %63 = load i8*, i8** @read_dir.path, align 8, !tbaa !5
  %sub183 = add nsw i64 %61, -1
  %call184 = call i64 @readlink(i8* %63, i8* %62, i64 %sub183) #5
  %conv185 = trunc i64 %call184 to i32
  %cmp186 = icmp slt i32 %conv185, 0
  br i1 %cmp186, label %if.then188, label %if.else199

if.then188:                                       ; preds = %if.end182
  %call.i367 = call noalias i8* @malloc(i64 42) #5
  %cmp.i368 = icmp eq i8* %call.i367, null
  br i1 %cmp.i368, label %if.then.i369, label %xmalloc.exit370

if.then.i369:                                     ; preds = %if.then188
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %65 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %64) #14
  call void @exit(i32 1) #15
  unreachable

xmalloc.exit370:                                  ; preds = %if.then188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %call.i367, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.105, i64 0, i64 0), i64 42, i32 1, i1 false)
  %66 = load %struct._info*, %struct._info** %arrayidx127, align 8, !tbaa !5
  %lnk193 = getelementptr inbounds %struct._info, %struct._info* %66, i64 0, i32 1
  store i8* %call.i367, i8** %lnk193, align 8, !tbaa !35
  %67 = load %struct._info*, %struct._info** %arrayidx127, align 8, !tbaa !5
  %isdir = getelementptr inbounds %struct._info, %struct._info* %67, i64 0, i32 2
  store i32 0, i32* %isdir, align 8, !tbaa !7
  %68 = load i32, i32* %st_mode63, align 8, !tbaa !23
  %inc = add nsw i32 %p.0393, 1
  %lnkmode = getelementptr inbounds %struct._info, %struct._info* %67, i64 0, i32 8
  store i32 %68, i32* %lnkmode, align 8, !tbaa !43
  br label %while.cond.backedge

if.else199:                                       ; preds = %if.end182
  %69 = load i8*, i8** @read_dir.lbuf, align 8, !tbaa !5
  %sext = shl i64 %call184, 32
  %idxprom200 = ashr exact i64 %sext, 32
  %arrayidx201 = getelementptr inbounds i8, i8* %69, i64 %idxprom200
  store i8 0, i8* %arrayidx201, align 1, !tbaa !2
  %call202 = call i64 @strlen(i8* %69) #13
  %add203 = add i64 %call202, 1
  %call.i371 = call noalias i8* @malloc(i64 %add203) #5
  %cmp.i372 = icmp eq i8* %call.i371, null
  br i1 %cmp.i372, label %if.then.i373, label %xmalloc.exit374

if.then.i373:                                     ; preds = %if.else199
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %71 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %70) #14
  call void @exit(i32 1) #15
  unreachable

xmalloc.exit374:                                  ; preds = %if.else199
  %call205 = call i8* @strcpy(i8* nonnull %call.i371, i8* %69) #5
  %72 = load %struct._info*, %struct._info** %arrayidx127, align 8, !tbaa !5
  %lnk208 = getelementptr inbounds %struct._info, %struct._info* %72, i64 0, i32 1
  store i8* %call205, i8** %lnk208, align 8, !tbaa !35
  %cmp209 = icmp slt i32 %rs.0, 0
  %73 = load %struct._info*, %struct._info** %arrayidx127, align 8, !tbaa !5
  br i1 %cmp209, label %if.then211, label %if.end215

if.then211:                                       ; preds = %xmalloc.exit374
  %orphan214 = getelementptr inbounds %struct._info, %struct._info* %73, i64 0, i32 6
  store i32 1, i32* %orphan214, align 8, !tbaa !36
  br label %if.end215

if.end215:                                        ; preds = %xmalloc.exit374, %if.then211
  %74 = load i32, i32* %st_mode63, align 8, !tbaa !23
  %lnkmode219 = getelementptr inbounds %struct._info, %struct._info* %73, i64 0, i32 8
  store i32 %74, i32* %lnkmode219, align 8, !tbaa !43
  br label %if.end221

if.end221:                                        ; preds = %xmalloc.exit362.if.end221_crit_edge, %if.end215
  %75 = phi %struct._info* [ %55, %xmalloc.exit362.if.end221_crit_edge ], [ %73, %if.end215 ]
  %76 = phi i32 [ %.pre399, %xmalloc.exit362.if.end221_crit_edge ], [ %74, %if.end215 ]
  %and223 = and i32 %76, 61440
  %cmp224 = icmp eq i32 %and223, 16384
  %isdir228 = getelementptr inbounds %struct._info, %struct._info* %75, i64 0, i32 2
  %cmp231 = icmp eq i32 %and223, 49152
  %cmp237 = icmp eq i32 %and223, 4096
  %and242 = and i32 %76, 73
  %tobool243 = icmp ne i32 %and242, 0
  %77 = insertelement <4 x i1> undef, i1 %cmp224, i32 0
  %78 = insertelement <4 x i1> %77, i1 %cmp231, i32 1
  %79 = insertelement <4 x i1> %78, i1 %cmp237, i32 2
  %80 = insertelement <4 x i1> %79, i1 %tobool243, i32 3
  %81 = zext <4 x i1> %80 to <4 x i32>
  %inc244 = add nsw i32 %p.0393, 1
  %82 = bitcast i32* %isdir228 to <4 x i32>*
  store <4 x i32> %81, <4 x i32>* %82, align 8, !tbaa !2
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %xmalloc.exit345
  %dl.0.lcssa = phi %struct._info** [ %9, %xmalloc.exit345 ], [ %dl.0.be, %while.cond.backedge ]
  %p.0.lcssa = phi i32 [ 0, %xmalloc.exit345 ], [ %p.0.be, %while.cond.backedge ]
  %call247 = call i32 @closedir(%struct.__dirstream* nonnull %call3)
  store i32 %p.0.lcssa, i32* %n, align 4, !tbaa !15
  %idxprom248 = sext i32 %p.0.lcssa to i64
  %arrayidx249 = getelementptr inbounds %struct._info*, %struct._info** %dl.0.lcssa, i64 %idxprom248
  store %struct._info* null, %struct._info** %arrayidx249, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.end
  %retval.0 = phi %struct._info** [ %dl.0.lcssa, %while.end ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #5
  ret %struct._info** %retval.0
}

; Function Attrs: nounwind
declare noalias %struct.__dirstream* @opendir(i8* nocapture readonly) local_unnamed_addr #4

declare %struct.dirent* @readdir(%struct.__dirstream*) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @patmatch(i8* readonly %buf, i8* %pat) local_unnamed_addr #2 {
entry:
  %call = tail call i8* @strchr(i8* %pat, i32 124) #13
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp eq i8* %call, %pat
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 1
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %tobool1 = icmp eq i8 %0, 0
  br i1 %tobool1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  store i8 0, i8* %call, align 1, !tbaa !2
  %call3 = tail call i32 @patmatch(i8* %buf, i8* %pat)
  %tobool4 = icmp eq i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @patmatch(i8* %buf, i8* nonnull %arrayidx)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then5
  %match.0 = phi i32 [ %call3, %if.end ], [ %call6, %if.then5 ]
  store i8 124, i8* %call, align 1, !tbaa !2
  br label %cleanup

if.end8:                                          ; preds = %entry
  %1 = load i8, i8* %pat, align 1, !tbaa !2
  %tobool9281 = icmp eq i8 %1, 0
  br i1 %tobool9281, label %while.end116, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end8
  %2 = load i32, i32* @ignorecase, align 4
  %tobool.i179 = icmp eq i32 %2, 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end115
  %3 = phi i8 [ %1, %while.body.lr.ph ], [ %34, %if.end115 ]
  %buf.addr.0284 = phi i8* [ %buf, %while.body.lr.ph ], [ %buf.addr.2, %if.end115 ]
  %match.1283 = phi i32 [ 1, %while.body.lr.ph ], [ %match.8263, %if.end115 ]
  %pat.addr.0282 = phi i8* [ %pat, %while.body.lr.ph ], [ %incdec.ptr111, %if.end115 ]
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 91, label %sw.bb
    i32 42, label %sw.bb79
    i32 63, label %sw.bb94
    i32 92, label %sw.bb99
  ]

sw.bb:                                            ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8, i8* %pat.addr.0282, i64 1
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !2
  %cmp13 = icmp eq i8 %4, 94
  %incdec.ptr16 = getelementptr inbounds i8, i8* %pat.addr.0282, i64 2
  %pat.addr.1 = select i1 %cmp13, i8* %incdec.ptr16, i8* %incdec.ptr
  %match.2 = select i1 %cmp13, i32 %match.1283, i32 0
  %not.cmp13 = xor i1 %cmp13, true
  %n.0 = zext i1 %not.cmp13 to i32
  br label %while.cond18

while.cond18:                                     ; preds = %if.end76, %sw.bb
  %pat.addr.2 = phi i8* [ %pat.addr.1, %sw.bb ], [ %incdec.ptr77, %if.end76 ]
  %match.3 = phi i32 [ %match.2, %sw.bb ], [ %match.5, %if.end76 ]
  %5 = load i8, i8* %pat.addr.2, align 1, !tbaa !2
  switch i8 %5, label %if.end28 [
    i8 93, label %sw.epilog
    i8 92, label %if.then26
  ]

if.then26:                                        ; preds = %while.cond18
  %incdec.ptr27 = getelementptr inbounds i8, i8* %pat.addr.2, i64 1
  %.pr = load i8, i8* %incdec.ptr27, align 1, !tbaa !2
  br label %if.end28

if.end28:                                         ; preds = %while.cond18, %if.then26
  %6 = phi i8 [ %5, %while.cond18 ], [ %.pr, %if.then26 ]
  %pat.addr.3 = phi i8* [ %pat.addr.2, %while.cond18 ], [ %incdec.ptr27, %if.then26 ]
  %tobool29 = icmp eq i8 %6, 0
  br i1 %tobool29, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end28
  %arrayidx32 = getelementptr inbounds i8, i8* %pat.addr.3, i64 1
  %7 = load i8, i8* %arrayidx32, align 1, !tbaa !2
  %cmp34 = icmp eq i8 %7, 45
  br i1 %cmp34, label %if.then36, label %if.else67

if.then36:                                        ; preds = %if.end31
  %add.ptr38 = getelementptr inbounds i8, i8* %pat.addr.3, i64 2
  %8 = load i8, i8* %add.ptr38, align 1, !tbaa !2
  %cmp40 = icmp eq i8 %8, 92
  %incdec.ptr45 = getelementptr inbounds i8, i8* %pat.addr.3, i64 3
  %pat.addr.4 = select i1 %cmp40, i8* %incdec.ptr45, i8* %add.ptr38
  %9 = load i8, i8* %buf.addr.0284, align 1, !tbaa !2
  br i1 %tobool.i179, label %cond.false.i205, label %cond.true.i203

cond.true.i203:                                   ; preds = %if.then36
  %call.i190 = tail call i32** @__ctype_tolower_loc() #17
  %10 = load i32*, i32** %call.i190, align 8, !tbaa !5
  %idxprom.i191 = sext i8 %9 to i64
  %arrayidx.i192 = getelementptr inbounds i32, i32* %10, i64 %idxprom.i191
  %11 = load i32, i32* %arrayidx.i192, align 4, !tbaa !15
  %conv2.i197 = trunc i32 %11 to i8
  %idxprom.i201 = sext i8 %6 to i64
  %arrayidx.i202 = getelementptr inbounds i32, i32* %10, i64 %idxprom.i201
  %12 = load i32, i32* %arrayidx.i202, align 4, !tbaa !15
  br label %cond_lower.exit208

cond.false.i205:                                  ; preds = %if.then36
  %conv1.i204 = sext i8 %6 to i32
  br label %cond_lower.exit208

cond_lower.exit208:                               ; preds = %cond.true.i203, %cond.false.i205
  %conv2.i197250 = phi i8 [ %conv2.i197, %cond.true.i203 ], [ %9, %cond.false.i205 ]
  %cond.i206 = phi i32 [ %12, %cond.true.i203 ], [ %conv1.i204, %cond.false.i205 ]
  %conv2.i207 = trunc i32 %cond.i206 to i8
  %cmp52 = icmp slt i8 %conv2.i197250, %conv2.i207
  br i1 %cmp52, label %cond_lower.exit208.if.end62_crit_edge, label %land.lhs.true54

cond_lower.exit208.if.end62_crit_edge:            ; preds = %cond_lower.exit208
  %.pre = load i8, i8* %pat.addr.4, align 1, !tbaa !2
  br label %if.end62

land.lhs.true54:                                  ; preds = %cond_lower.exit208
  br i1 %tobool.i179, label %cond.false.i225, label %cond.true.i223

cond.true.i223:                                   ; preds = %land.lhs.true54
  %call.i210 = tail call i32** @__ctype_tolower_loc() #17
  %13 = load i32*, i32** %call.i210, align 8, !tbaa !5
  %idxprom.i211 = sext i8 %9 to i64
  %arrayidx.i212 = getelementptr inbounds i32, i32* %13, i64 %idxprom.i211
  %14 = load i32, i32* %arrayidx.i212, align 4, !tbaa !15
  %conv2.i217 = trunc i32 %14 to i8
  %15 = load i8, i8* %pat.addr.4, align 1, !tbaa !2
  %idxprom.i221 = sext i8 %15 to i64
  %arrayidx.i222 = getelementptr inbounds i32, i32* %13, i64 %idxprom.i221
  %16 = load i32, i32* %arrayidx.i222, align 4, !tbaa !15
  br label %cond_lower.exit228

cond.false.i225:                                  ; preds = %land.lhs.true54
  %17 = load i8, i8* %pat.addr.4, align 1, !tbaa !2
  %conv1.i224 = sext i8 %17 to i32
  br label %cond_lower.exit228

cond_lower.exit228:                               ; preds = %cond.true.i223, %cond.false.i225
  %18 = phi i8 [ %15, %cond.true.i223 ], [ %17, %cond.false.i225 ]
  %conv2.i217253 = phi i8 [ %conv2.i217, %cond.true.i223 ], [ %9, %cond.false.i225 ]
  %cond.i226 = phi i32 [ %16, %cond.true.i223 ], [ %conv1.i224, %cond.false.i225 ]
  %conv2.i227 = trunc i32 %cond.i226 to i8
  %cmp59 = icmp sgt i8 %conv2.i217253, %conv2.i227
  %match.3.n.0 = select i1 %cmp59, i32 %match.3, i32 %n.0
  br label %if.end62

if.end62:                                         ; preds = %cond_lower.exit208.if.end62_crit_edge, %cond_lower.exit228
  %19 = phi i8 [ %.pre, %cond_lower.exit208.if.end62_crit_edge ], [ %18, %cond_lower.exit228 ]
  %match.4 = phi i32 [ %match.3, %cond_lower.exit208.if.end62_crit_edge ], [ %match.3.n.0, %cond_lower.exit228 ]
  %tobool63 = icmp eq i8 %19, 0
  %incdec.ptr65 = getelementptr inbounds i8, i8* %pat.addr.4, i64 -1
  %incdec.ptr65.pat.addr.4 = select i1 %tobool63, i8* %incdec.ptr65, i8* %pat.addr.4
  br label %if.end76

if.else67:                                        ; preds = %if.end31
  %20 = load i8, i8* %buf.addr.0284, align 1, !tbaa !2
  br i1 %tobool.i179, label %cond.false.i245, label %cond.true.i243

cond.true.i243:                                   ; preds = %if.else67
  %call.i230 = tail call i32** @__ctype_tolower_loc() #17
  %21 = load i32*, i32** %call.i230, align 8, !tbaa !5
  %idxprom.i231 = sext i8 %20 to i64
  %arrayidx.i232 = getelementptr inbounds i32, i32* %21, i64 %idxprom.i231
  %22 = load i32, i32* %arrayidx.i232, align 4, !tbaa !15
  %conv2.i237 = trunc i32 %22 to i8
  %idxprom.i241 = sext i8 %6 to i64
  %arrayidx.i242 = getelementptr inbounds i32, i32* %21, i64 %idxprom.i241
  %23 = load i32, i32* %arrayidx.i242, align 4, !tbaa !15
  br label %cond_lower.exit248

cond.false.i245:                                  ; preds = %if.else67
  %conv1.i244 = sext i8 %6 to i32
  br label %cond_lower.exit248

cond_lower.exit248:                               ; preds = %cond.true.i243, %cond.false.i245
  %conv2.i237256 = phi i8 [ %conv2.i237, %cond.true.i243 ], [ %20, %cond.false.i245 ]
  %cond.i246 = phi i32 [ %23, %cond.true.i243 ], [ %conv1.i244, %cond.false.i245 ]
  %conv2.i247 = trunc i32 %cond.i246 to i8
  %cmp72 = icmp eq i8 %conv2.i237256, %conv2.i247
  %n.0.match.3 = select i1 %cmp72, i32 %n.0, i32 %match.3
  br label %if.end76

if.end76:                                         ; preds = %cond_lower.exit248, %if.end62
  %pat.addr.5 = phi i8* [ %incdec.ptr65.pat.addr.4, %if.end62 ], [ %pat.addr.3, %cond_lower.exit248 ]
  %match.5 = phi i32 [ %match.4, %if.end62 ], [ %n.0.match.3, %cond_lower.exit248 ]
  %incdec.ptr77 = getelementptr inbounds i8, i8* %pat.addr.5, i64 1
  br label %while.cond18

sw.bb79:                                          ; preds = %while.body
  %incdec.ptr80 = getelementptr inbounds i8, i8* %pat.addr.0282, i64 1
  %24 = load i8, i8* %incdec.ptr80, align 1, !tbaa !2
  %tobool81 = icmp eq i8 %24, 0
  br i1 %tobool81, label %cleanup, label %if.end83

if.end83:                                         ; preds = %sw.bb79
  %25 = load i8, i8* %buf.addr.0284, align 1, !tbaa !2
  %tobool86278 = icmp eq i8 %25, 0
  br i1 %tobool86278, label %cleanup, label %land.rhs87.preheader

land.rhs87.preheader:                             ; preds = %if.end83
  br label %land.rhs87

while.cond84:                                     ; preds = %land.rhs87
  %26 = load i8, i8* %incdec.ptr88, align 1, !tbaa !2
  %tobool86 = icmp eq i8 %26, 0
  br i1 %tobool86, label %cleanup, label %land.rhs87

land.rhs87:                                       ; preds = %land.rhs87.preheader, %while.cond84
  %buf.addr.1279 = phi i8* [ %incdec.ptr88, %while.cond84 ], [ %buf.addr.0284, %land.rhs87.preheader ]
  %call89 = tail call i32 @patmatch(i8* nonnull %buf.addr.1279, i8* %incdec.ptr80)
  %tobool90 = icmp eq i32 %call89, 0
  %incdec.ptr88 = getelementptr inbounds i8, i8* %buf.addr.1279, i64 1
  br i1 %tobool90, label %while.cond84, label %cleanup

sw.bb94:                                          ; preds = %while.body
  %27 = load i8, i8* %buf.addr.0284, align 1, !tbaa !2
  %tobool95 = icmp eq i8 %27, 0
  br i1 %tobool95, label %cleanup, label %if.end115

sw.bb99:                                          ; preds = %while.body
  %incdec.ptr102 = getelementptr inbounds i8, i8* %pat.addr.0282, i64 1
  br label %sw.default

sw.default:                                       ; preds = %sw.bb99, %while.body
  %pat.addr.6 = phi i8* [ %pat.addr.0282, %while.body ], [ %incdec.ptr102, %sw.bb99 ]
  %28 = load i8, i8* %buf.addr.0284, align 1, !tbaa !2
  br i1 %tobool.i179, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %sw.default
  %call.i180 = tail call i32** @__ctype_tolower_loc() #17
  %29 = load i32*, i32** %call.i180, align 8, !tbaa !5
  %idxprom.i181 = sext i8 %28 to i64
  %arrayidx.i182 = getelementptr inbounds i32, i32* %29, i64 %idxprom.i181
  %30 = load i32, i32* %arrayidx.i182, align 4, !tbaa !15
  %conv2.i187 = trunc i32 %30 to i8
  %31 = load i8, i8* %pat.addr.6, align 1, !tbaa !2
  %idxprom.i = sext i8 %31 to i64
  %arrayidx.i = getelementptr inbounds i32, i32* %29, i64 %idxprom.i
  %32 = load i32, i32* %arrayidx.i, align 4, !tbaa !15
  br label %cond_lower.exit

cond.false.i:                                     ; preds = %sw.default
  %33 = load i8, i8* %pat.addr.6, align 1, !tbaa !2
  %conv1.i = sext i8 %33 to i32
  br label %cond_lower.exit

cond_lower.exit:                                  ; preds = %cond.true.i, %cond.false.i
  %conv2.i187259 = phi i8 [ %conv2.i187, %cond.true.i ], [ %28, %cond.false.i ]
  %cond.i = phi i32 [ %32, %cond.true.i ], [ %conv1.i, %cond.false.i ]
  %conv2.i = trunc i32 %cond.i to i8
  %cmp109 = icmp eq i8 %conv2.i187259, %conv2.i
  %conv110 = zext i1 %cmp109 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.cond18, %cond_lower.exit
  %pat.addr.7 = phi i8* [ %pat.addr.6, %cond_lower.exit ], [ %pat.addr.2, %while.cond18 ]
  %match.8 = phi i32 [ %conv110, %cond_lower.exit ], [ %match.3, %while.cond18 ]
  %cmp112 = icmp slt i32 %match.8, 1
  br i1 %cmp112, label %cleanup, label %if.end115

if.end115:                                        ; preds = %sw.bb94, %sw.epilog
  %match.8263 = phi i32 [ %match.8, %sw.epilog ], [ %match.1283, %sw.bb94 ]
  %pat.addr.7262 = phi i8* [ %pat.addr.7, %sw.epilog ], [ %pat.addr.0282, %sw.bb94 ]
  %buf.addr.2 = getelementptr inbounds i8, i8* %buf.addr.0284, i64 1
  %incdec.ptr111 = getelementptr inbounds i8, i8* %pat.addr.7262, i64 1
  %34 = load i8, i8* %incdec.ptr111, align 1, !tbaa !2
  %tobool9 = icmp ne i8 %34, 0
  %tobool10 = icmp ne i32 %match.8263, 0
  %35 = and i1 %tobool10, %tobool9
  br i1 %35, label %while.body, label %while.end116

while.end116:                                     ; preds = %if.end115, %if.end8
  %match.1.lcssa = phi i32 [ 1, %if.end8 ], [ %match.8263, %if.end115 ]
  %buf.addr.0.lcssa = phi i8* [ %buf, %if.end8 ], [ %buf.addr.2, %if.end115 ]
  %36 = load i8, i8* %buf.addr.0.lcssa, align 1, !tbaa !2
  %tobool117 = icmp eq i8 %36, 0
  %match.1. = select i1 %tobool117, i32 %match.1.lcssa, i32 0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb94, %if.end28, %while.cond84, %land.rhs87, %if.end83, %while.end116, %sw.bb79, %if.then, %lor.lhs.false, %if.end7
  %retval.0 = phi i32 [ %match.0, %if.end7 ], [ -1, %lor.lhs.false ], [ -1, %if.then ], [ 1, %sw.bb79 ], [ %match.1., %while.end116 ], [ %match.1283, %if.end83 ], [ 0, %while.cond84 ], [ %call89, %land.rhs87 ], [ -1, %if.end28 ], [ %match.8, %sw.epilog ], [ 0, %sw.bb94 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i64 @readlink(i8* nocapture readonly, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare i32 @closedir(%struct.__dirstream* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define %struct._info** @getfulltree(i8* %d, i64 %lev, i64 %dev, i64* nocapture %size, i8** nocapture %err) local_unnamed_addr #2 {
entry:
  %sb = alloca %struct.stat, align 8
  %n = alloca i32, align 4
  %0 = bitcast %struct.stat* %sb to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #5
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  store i8* null, i8** %err, align 8, !tbaa !5
  %2 = load i32, i32* @Level, align 4, !tbaa !15
  %cmp = icmp sgt i32 %2, -1
  %conv = sext i32 %2 to i64
  %cmp1 = icmp ult i64 %conv, %lev
  %or.cond333 = and i1 %cmp, %cmp1
  br i1 %or.cond333, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @xdev, align 4, !tbaa !2
  %tobool = icmp ne i32 %3, 0
  %cmp4 = icmp eq i64 %lev, 0
  %or.cond = and i1 %cmp4, %tobool
  br i1 %or.cond, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %call.i = call i32 @__xstat(i32 1, i8* nonnull %d, %struct.stat* nonnull %sb) #5
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %sb, i64 0, i32 0
  %4 = load i64, i64* %st_dev, align 8, !tbaa !22
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %dev.addr.0 = phi i64 [ %4, %if.then6 ], [ %dev, %if.end ]
  %5 = load i32, i32* @matchdirs, align 4, !tbaa !2
  %tobool8 = icmp ne i32 %5, 0
  %6 = load i8*, i8** @pattern, align 8
  %tobool10 = icmp ne i8* %6, null
  %or.cond229 = and i1 %tobool8, %tobool10
  br i1 %or.cond229, label %if.then11, label %if.end38.thread

if.then11:                                        ; preds = %if.end7
  %call12 = call i64 @strlen(i8* %d) #13
  %add.ptr14 = getelementptr inbounds i8, i8* %d, i64 %call12
  %cmp15418 = icmp eq i64 %call12, 0
  br i1 %cmp15418, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then11
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %start_rel_path.0420 = phi i8* [ %incdec.ptr29, %for.inc ], [ %add.ptr14, %for.body.preheader ]
  %lev_tmp.0419 = phi i64 [ %dec.lev_tmp.0, %for.inc ], [ %lev, %for.body.preheader ]
  %7 = load i8, i8* %start_rel_path.0420, align 1, !tbaa !2
  %cmp18 = icmp eq i8 %7, 47
  %dec = sext i1 %cmp18 to i64
  %dec.lev_tmp.0 = add i64 %lev_tmp.0419, %dec
  %cmp22 = icmp eq i64 %dec.lev_tmp.0, 0
  br i1 %cmp22, label %if.then24, label %for.inc

if.then24:                                        ; preds = %for.body
  %tobool25 = icmp eq i8 %7, 0
  %incdec.ptr = getelementptr inbounds i8, i8* %start_rel_path.0420, i64 1
  %start_rel_path.0.incdec.ptr = select i1 %tobool25, i8* %start_rel_path.0420, i8* %incdec.ptr
  br label %for.end

for.inc:                                          ; preds = %for.body
  %incdec.ptr29 = getelementptr inbounds i8, i8* %start_rel_path.0420, i64 -1
  %cmp15 = icmp eq i8* %incdec.ptr29, %d
  br i1 %cmp15, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.then11, %if.then24
  %start_rel_path.1 = phi i8* [ %start_rel_path.0.incdec.ptr, %if.then24 ], [ %add.ptr14, %if.then11 ], [ %d, %for.inc ]
  %8 = load i8, i8* %start_rel_path.1, align 1, !tbaa !2
  %tobool31 = icmp eq i8 %8, 0
  br i1 %tobool31, label %if.end38.thread, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %for.end
  %call33 = call i32 @patmatch(i8* %start_rel_path.1, i8* %6)
  %cmp34 = icmp eq i32 %call33, 1
  br i1 %cmp34, label %if.end38, label %if.end38.thread

if.end38.thread:                                  ; preds = %land.lhs.true32, %for.end, %if.end7
  %call39394 = call %struct._info** @read_dir(i8* %d, i32* nonnull %n)
  br label %if.end42

if.end38:                                         ; preds = %land.lhs.true32
  %9 = load i8*, i8** @pattern, align 8, !tbaa !5
  store i8* null, i8** @pattern, align 8, !tbaa !5
  %call39 = call %struct._info** @read_dir(i8* %d, i32* nonnull %n)
  %tobool40 = icmp eq i8* %9, null
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end38
  store i8* %9, i8** @pattern, align 8, !tbaa !5
  br label %if.end42

if.end42:                                         ; preds = %if.end38.thread, %if.end38, %if.then41
  %call39396 = phi %struct._info** [ %call39394, %if.end38.thread ], [ %call39, %if.end38 ], [ %call39, %if.then41 ]
  %cmp43 = icmp eq %struct._info** %call39396, null
  br i1 %cmp43, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end42
  %call.i334 = call noalias i8* @malloc(i64 18) #5
  %cmp.i = icmp eq i8* %call.i334, null
  br i1 %cmp.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %if.then45
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %10) #14
  call void @exit(i32 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %if.then45
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %call.i334, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.106, i64 0, i64 0), i64 18, i32 1, i1 false)
  store i8* %call.i334, i8** %err, align 8, !tbaa !5
  br label %cleanup

if.end48:                                         ; preds = %if.end42
  %12 = load i32, i32* %n, align 4, !tbaa !15
  %cmp49 = icmp eq i32 %12, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  %13 = load %struct._info*, %struct._info** %call39396, align 8, !tbaa !5
  %tobool21.i = icmp eq %struct._info* %13, null
  br i1 %tobool21.i, label %free_dir.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then51
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %if.end.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %if.end.i ], [ 0, %for.body.i.preheader ]
  %14 = phi %struct._info* [ %20, %if.end.i ], [ %13, %for.body.i.preheader ]
  %arrayidx23.i = phi %struct._info** [ %arrayidx.i, %if.end.i ], [ %call39396, %for.body.i.preheader ]
  %name.i = getelementptr inbounds %struct._info, %struct._info* %14, i64 0, i32 0
  %15 = load i8*, i8** %name.i, align 8, !tbaa !11
  call void @free(i8* %15) #5
  %16 = load %struct._info*, %struct._info** %arrayidx23.i, align 8, !tbaa !5
  %lnk.i = getelementptr inbounds %struct._info, %struct._info* %16, i64 0, i32 1
  %17 = load i8*, i8** %lnk.i, align 8, !tbaa !35
  %tobool5.i = icmp eq i8* %17, null
  br i1 %tobool5.i, label %for.body.if.end_crit_edge.i, label %if.then.i335

for.body.if.end_crit_edge.i:                      ; preds = %for.body.i
  %18 = bitcast %struct._info* %16 to i8*
  br label %if.end.i

if.then.i335:                                     ; preds = %for.body.i
  call void @free(i8* nonnull %17) #5
  %.phi.trans.insert.i = bitcast %struct._info** %arrayidx23.i to i8**
  %.pre.i = load i8*, i8** %.phi.trans.insert.i, align 8, !tbaa !5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i335, %for.body.if.end_crit_edge.i
  %19 = phi i8* [ %18, %for.body.if.end_crit_edge.i ], [ %.pre.i, %if.then.i335 ]
  call void @free(i8* %19) #5
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1
  %arrayidx.i = getelementptr inbounds %struct._info*, %struct._info** %call39396, i64 %indvars.iv.next.i
  %20 = load %struct._info*, %struct._info** %arrayidx.i, align 8, !tbaa !5
  %tobool.i = icmp eq %struct._info* %20, null
  br i1 %tobool.i, label %free_dir.exit, label %for.body.i

free_dir.exit:                                    ; preds = %if.end.i, %if.then51
  %21 = bitcast %struct._info** %call39396 to i8*
  call void @free(i8* %21) #5
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %call53 = call noalias i8* @malloc(i64 4096) #5
  %22 = load i32, i32* @flimit, align 4, !tbaa !2
  %cmp54 = icmp ne i32 %22, 0
  %cmp57 = icmp ugt i32 %12, %22
  %or.cond400 = and i1 %cmp54, %cmp57
  br i1 %or.cond400, label %if.then59, label %if.end64

if.then59:                                        ; preds = %if.end52
  %call60 = call i32 (i8*, i8*, ...) @sprintf(i8* %call53, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.107, i64 0, i64 0), i32 %12) #5
  %call61 = call i64 @strlen(i8* %call53) #13
  %add = add i64 %call61, 1
  %call.i336 = call noalias i8* @malloc(i64 %add) #5
  %cmp.i337 = icmp eq i8* %call.i336, null
  br i1 %cmp.i337, label %if.then.i338, label %xmalloc.exit340

if.then.i338:                                     ; preds = %if.then59
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %23) #14
  call void @exit(i32 1) #15
  unreachable

xmalloc.exit340:                                  ; preds = %if.then59
  %call63 = call i8* @strcpy(i8* nonnull %call.i336, i8* %call53) #5
  store i8* %call63, i8** %err, align 8, !tbaa !5
  %25 = load %struct._info*, %struct._info** %call39396, align 8, !tbaa !5
  %tobool21.i341 = icmp eq %struct._info* %25, null
  br i1 %tobool21.i341, label %free_dir.exit357, label %for.body.i348.preheader

for.body.i348.preheader:                          ; preds = %xmalloc.exit340
  br label %for.body.i348

for.body.i348:                                    ; preds = %for.body.i348.preheader, %if.end.i356
  %indvars.iv.i343 = phi i64 [ %indvars.iv.next.i353, %if.end.i356 ], [ 0, %for.body.i348.preheader ]
  %26 = phi %struct._info* [ %32, %if.end.i356 ], [ %25, %for.body.i348.preheader ]
  %arrayidx23.i344 = phi %struct._info** [ %arrayidx.i354, %if.end.i356 ], [ %call39396, %for.body.i348.preheader ]
  %name.i345 = getelementptr inbounds %struct._info, %struct._info* %26, i64 0, i32 0
  %27 = load i8*, i8** %name.i345, align 8, !tbaa !11
  call void @free(i8* %27) #5
  %28 = load %struct._info*, %struct._info** %arrayidx23.i344, align 8, !tbaa !5
  %lnk.i346 = getelementptr inbounds %struct._info, %struct._info* %28, i64 0, i32 1
  %29 = load i8*, i8** %lnk.i346, align 8, !tbaa !35
  %tobool5.i347 = icmp eq i8* %29, null
  br i1 %tobool5.i347, label %for.body.if.end_crit_edge.i349, label %if.then.i352

for.body.if.end_crit_edge.i349:                   ; preds = %for.body.i348
  %30 = bitcast %struct._info* %28 to i8*
  br label %if.end.i356

if.then.i352:                                     ; preds = %for.body.i348
  call void @free(i8* nonnull %29) #5
  %.phi.trans.insert.i350 = bitcast %struct._info** %arrayidx23.i344 to i8**
  %.pre.i351 = load i8*, i8** %.phi.trans.insert.i350, align 8, !tbaa !5
  br label %if.end.i356

if.end.i356:                                      ; preds = %if.then.i352, %for.body.if.end_crit_edge.i349
  %31 = phi i8* [ %30, %for.body.if.end_crit_edge.i349 ], [ %.pre.i351, %if.then.i352 ]
  call void @free(i8* %31) #5
  %indvars.iv.next.i353 = add nuw i64 %indvars.iv.i343, 1
  %arrayidx.i354 = getelementptr inbounds %struct._info*, %struct._info** %call39396, i64 %indvars.iv.next.i353
  %32 = load %struct._info*, %struct._info** %arrayidx.i354, align 8, !tbaa !5
  %tobool.i355 = icmp eq %struct._info* %32, null
  br i1 %tobool.i355, label %free_dir.exit357, label %for.body.i348

free_dir.exit357:                                 ; preds = %if.end.i356, %xmalloc.exit340
  %33 = bitcast %struct._info** %call39396 to i8*
  call void @free(i8* %33) #5
  call void @free(i8* %call53) #5
  br label %cleanup

if.end64:                                         ; preds = %if.end52
  %34 = load i32 (...)*, i32 (...)** @cmpfunc, align 8, !tbaa !5
  %tobool65 = icmp eq i32 (...)* %34, null
  br i1 %tobool65, label %if.end68, label %if.then66

if.then66:                                        ; preds = %if.end64
  %35 = bitcast %struct._info** %call39396 to i8*
  %conv67 = sext i32 %12 to i64
  %36 = bitcast i32 (...)* %34 to i32 (i8*, i8*)*
  call void @qsort(i8* %35, i64 %conv67, i64 8, i32 (i8*, i8*)* %36) #5
  br label %if.end68

if.end68:                                         ; preds = %if.end64, %if.then66
  %37 = load i32, i32* @maxdirs, align 4, !tbaa !15
  %sub = add nsw i32 %37, -1
  %conv69 = sext i32 %sub to i64
  %cmp70 = icmp ugt i64 %conv69, %lev
  br i1 %cmp70, label %if.end76, label %if.then72

if.then72:                                        ; preds = %if.end68
  %38 = load i8*, i8** bitcast (i32** @dirs to i8**), align 8, !tbaa !5
  %add73 = add nsw i32 %37, 1024
  store i32 %add73, i32* @maxdirs, align 4, !tbaa !15
  %conv74 = sext i32 %add73 to i64
  %mul = shl nsw i64 %conv74, 2
  %call.i358 = call i8* @realloc(i8* %38, i64 %mul) #5
  %cmp.i359 = icmp eq i8* %call.i358, null
  br i1 %cmp.i359, label %if.then.i360, label %xrealloc.exit

if.then.i360:                                     ; preds = %if.then72
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %39) #14
  call void @exit(i32 1) #15
  unreachable

xrealloc.exit:                                    ; preds = %if.then72
  store i8* %call.i358, i8** bitcast (i32** @dirs to i8**), align 8, !tbaa !5
  br label %if.end76

if.end76:                                         ; preds = %if.end68, %xrealloc.exit
  %41 = load %struct._info*, %struct._info** %call39396, align 8, !tbaa !5
  %tobool77408412 = icmp eq %struct._info* %41, null
  br i1 %tobool77408412, label %while.end, label %while.body.lr.ph.lr.ph

while.body.lr.ph.lr.ph:                           ; preds = %if.end76
  %add172 = add i64 %lev, 1
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.end213
  %42 = phi %struct._info* [ %41, %while.body.lr.ph.lr.ph ], [ %102, %if.end213 ]
  %dir.0.ph415 = phi %struct._info** [ %call39396, %while.body.lr.ph.lr.ph ], [ %incdec.ptr214, %if.end213 ]
  %pathsize.0.ph414 = phi i64 [ 4096, %while.body.lr.ph.lr.ph ], [ %pathsize.5, %if.end213 ]
  %path.0.ph413 = phi i8* [ %call53, %while.body.lr.ph.lr.ph ], [ %path.5, %if.end213 ]
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end206
  %43 = phi %struct._info* [ %42, %while.body.lr.ph ], [ %97, %if.end206 ]
  %pathsize.0410 = phi i64 [ %pathsize.0.ph414, %while.body.lr.ph ], [ %pathsize.4, %if.end206 ]
  %path.0409 = phi i8* [ %path.0.ph413, %while.body.lr.ph ], [ %path.4, %if.end206 ]
  %isdir = getelementptr inbounds %struct._info, %struct._info* %43, i64 0, i32 2
  %44 = load i32, i32* %isdir, align 8, !tbaa !7
  %tobool78 = icmp eq i32 %44, 0
  br i1 %tobool78, label %if.end208, label %land.lhs.true79

land.lhs.true79:                                  ; preds = %while.body
  %45 = load i32, i32* @xdev, align 4, !tbaa !2
  %tobool80 = icmp eq i32 %45, 0
  br i1 %tobool80, label %if.then85, label %land.lhs.true81

land.lhs.true81:                                  ; preds = %land.lhs.true79
  %dev82 = getelementptr inbounds %struct._info, %struct._info* %43, i64 0, i32 15
  %46 = load i64, i64* %dev82, align 8, !tbaa !44
  %cmp83 = icmp eq i64 %dev.addr.0, %46
  br i1 %cmp83, label %if.then85, label %if.end208

if.then85:                                        ; preds = %land.lhs.true81, %land.lhs.true79
  %lnk = getelementptr inbounds %struct._info, %struct._info* %43, i64 0, i32 1
  %47 = load i8*, i8** %lnk, align 8, !tbaa !35
  %tobool86 = icmp eq i8* %47, null
  br i1 %tobool86, label %if.else143, label %if.then87

if.then87:                                        ; preds = %if.then85
  %48 = load i32, i32* @lflag, align 4, !tbaa !2
  %tobool88 = icmp eq i32 %48, 0
  br i1 %tobool88, label %if.end177, label %if.then89

if.then89:                                        ; preds = %if.then87
  %inode = getelementptr inbounds %struct._info, %struct._info* %43, i64 0, i32 16
  %49 = load i64, i64* %inode, align 8, !tbaa !45
  %dev90 = getelementptr inbounds %struct._info, %struct._info* %43, i64 0, i32 15
  %50 = load i64, i64* %dev90, align 8, !tbaa !44
  %call91 = call i32 @findino(i64 %49, i64 %50) #5
  %tobool92 = icmp eq i32 %call91, 0
  br i1 %tobool92, label %if.else, label %if.then93

if.then93:                                        ; preds = %if.then89
  %call.i362 = call noalias i8* @malloc(i64 24) #5
  %cmp.i363 = icmp eq i8* %call.i362, null
  br i1 %cmp.i363, label %if.then.i364, label %xmalloc.exit366

if.then.i364:                                     ; preds = %if.then93
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %52 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %51) #14
  call void @exit(i32 1) #15
  unreachable

xmalloc.exit366:                                  ; preds = %if.then93
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %call.i362, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.108, i64 0, i64 0), i64 24, i32 1, i1 false)
  %53 = load %struct._info*, %struct._info** %dir.0.ph415, align 8, !tbaa !5
  %err96 = getelementptr inbounds %struct._info, %struct._info* %53, i64 0, i32 17
  store i8* %call.i362, i8** %err96, align 8, !tbaa !37
  br label %if.end177

if.else:                                          ; preds = %if.then89
  %54 = load %struct._info*, %struct._info** %dir.0.ph415, align 8, !tbaa !5
  %inode97 = getelementptr inbounds %struct._info, %struct._info* %54, i64 0, i32 16
  %55 = load i64, i64* %inode97, align 8, !tbaa !45
  %dev98 = getelementptr inbounds %struct._info, %struct._info* %54, i64 0, i32 15
  %56 = load i64, i64* %dev98, align 8, !tbaa !44
  call void @saveino(i64 %55, i64 %56) #5
  %57 = load %struct._info*, %struct._info** %dir.0.ph415, align 8, !tbaa !5
  %lnk99 = getelementptr inbounds %struct._info, %struct._info* %57, i64 0, i32 1
  %58 = load i8*, i8** %lnk99, align 8, !tbaa !35
  %59 = load i8, i8* %58, align 1, !tbaa !2
  %cmp101 = icmp eq i8 %59, 47
  br i1 %cmp101, label %if.end140, label %if.else109

if.else109:                                       ; preds = %if.else
  %call110 = call i64 @strlen(i8* %d) #13
  %call112 = call i64 @strlen(i8* %58) #13
  %add113 = add i64 %call110, 2
  %add114 = add i64 %add113, %call112
  %cmp115 = icmp ugt i64 %add114, %pathsize.0410
  br i1 %cmp115, label %if.then117, label %if.end123

if.then117:                                       ; preds = %if.else109
  %name = getelementptr inbounds %struct._info, %struct._info* %57, i64 0, i32 0
  %60 = load i8*, i8** %name, align 8, !tbaa !11
  %call119 = call i64 @strlen(i8* %60) #13
  %add120 = add i64 %call110, 1024
  %add121 = add i64 %add120, %call119
  %call.i384 = call i8* @realloc(i8* %path.0409, i64 %add121) #5
  %cmp.i385 = icmp eq i8* %call.i384, null
  br i1 %cmp.i385, label %if.then.i386, label %if.end123

if.then.i386:                                     ; preds = %if.then117
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %62 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %61) #14
  call void @exit(i32 1) #15
  unreachable

if.end123:                                        ; preds = %if.then117, %if.else109
  %path.1 = phi i8* [ %path.0409, %if.else109 ], [ %call.i384, %if.then117 ]
  %pathsize.1 = phi i64 [ %pathsize.0410, %if.else109 ], [ %add121, %if.then117 ]
  %63 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool124 = icmp eq i32 %63, 0
  br i1 %tobool124, label %if.else131, label %land.lhs.true125

land.lhs.true125:                                 ; preds = %if.end123
  %call126 = call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i64 0, i64 0)) #13
  %tobool127 = icmp eq i32 %call126, 0
  br i1 %tobool127, label %if.then128, label %if.else131

if.then128:                                       ; preds = %land.lhs.true125
  %64 = load %struct._info*, %struct._info** %dir.0.ph415, align 8, !tbaa !5
  %lnk129 = getelementptr inbounds %struct._info, %struct._info* %64, i64 0, i32 1
  %65 = load i8*, i8** %lnk129, align 8, !tbaa !35
  %call130 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i64 0, i64 0), i8* %d, i8* %65) #5
  br label %if.end134

if.else131:                                       ; preds = %land.lhs.true125, %if.end123
  %66 = load %struct._info*, %struct._info** %dir.0.ph415, align 8, !tbaa !5
  %lnk132 = getelementptr inbounds %struct._info, %struct._info* %66, i64 0, i32 1
  %67 = load i8*, i8** %lnk132, align 8, !tbaa !35
  %call133 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i64 0, i64 0), i8* %d, i8* %67) #5
  br label %if.end134

if.end134:                                        ; preds = %if.else131, %if.then128
  %68 = load %struct._info*, %struct._info** %dir.0.ph415, align 8, !tbaa !5
  br label %if.end140

if.end140:                                        ; preds = %if.else, %if.end134
  %.sink428 = phi %struct._info* [ %68, %if.end134 ], [ %57, %if.else ]
  %path.1.sink = phi i8* [ %path.1, %if.end134 ], [ %58, %if.else ]
  %path.2 = phi i8* [ %path.1, %if.end134 ], [ %path.0409, %if.else ]
  %pathsize.2 = phi i64 [ %pathsize.1, %if.end134 ], [ %pathsize.0410, %if.else ]
  %size136 = getelementptr inbounds %struct._info, %struct._info* %.sink428, i64 0, i32 11
  %err137 = getelementptr inbounds %struct._info, %struct._info* %.sink428, i64 0, i32 17
  %call138 = call %struct._info** @getfulltree(i8* %path.1.sink, i64 %add172, i64 %dev.addr.0, i64* %size136, i8** %err137)
  %69 = load %struct._info*, %struct._info** %dir.0.ph415, align 8, !tbaa !5
  %child139 = getelementptr inbounds %struct._info, %struct._info* %69, i64 0, i32 18
  store %struct._info** %call138, %struct._info*** %child139, align 8, !tbaa !38
  br label %if.end177

if.else143:                                       ; preds = %if.then85
  %call144 = call i64 @strlen(i8* %d) #13
  %name145 = getelementptr inbounds %struct._info, %struct._info* %43, i64 0, i32 0
  %70 = load i8*, i8** %name145, align 8, !tbaa !11
  %call146 = call i64 @strlen(i8* %70) #13
  %add147 = add i64 %call146, %call144
  %add148 = add i64 %add147, 2
  %cmp149 = icmp ugt i64 %add148, %pathsize.0410
  br i1 %cmp149, label %if.then151, label %if.end158

if.then151:                                       ; preds = %if.else143
  %add156 = add i64 %add147, 1024
  %call.i389 = call i8* @realloc(i8* %path.0409, i64 %add156) #5
  %cmp.i390 = icmp eq i8* %call.i389, null
  br i1 %cmp.i390, label %if.then.i391, label %if.end158

if.then.i391:                                     ; preds = %if.then151
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %72 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %71) #14
  call void @exit(i32 1) #15
  unreachable

if.end158:                                        ; preds = %if.then151, %if.else143
  %path.3 = phi i8* [ %path.0409, %if.else143 ], [ %call.i389, %if.then151 ]
  %pathsize.3 = phi i64 [ %pathsize.0410, %if.else143 ], [ %add156, %if.then151 ]
  %73 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool159 = icmp eq i32 %73, 0
  br i1 %tobool159, label %if.else166, label %land.lhs.true160

land.lhs.true160:                                 ; preds = %if.end158
  %call161 = call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i64 0, i64 0)) #13
  %tobool162 = icmp eq i32 %call161, 0
  br i1 %tobool162, label %if.then163, label %if.else166

if.then163:                                       ; preds = %land.lhs.true160
  %74 = load %struct._info*, %struct._info** %dir.0.ph415, align 8, !tbaa !5
  %name164 = getelementptr inbounds %struct._info, %struct._info* %74, i64 0, i32 0
  %75 = load i8*, i8** %name164, align 8, !tbaa !11
  %call165 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i64 0, i64 0), i8* %d, i8* %75) #5
  br label %if.end169

if.else166:                                       ; preds = %land.lhs.true160, %if.end158
  %76 = load %struct._info*, %struct._info** %dir.0.ph415, align 8, !tbaa !5
  %name167 = getelementptr inbounds %struct._info, %struct._info* %76, i64 0, i32 0
  %77 = load i8*, i8** %name167, align 8, !tbaa !11
  %call168 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i64 0, i64 0), i8* %d, i8* %77) #5
  br label %if.end169

if.end169:                                        ; preds = %if.else166, %if.then163
  %78 = load %struct._info*, %struct._info** %dir.0.ph415, align 8, !tbaa !5
  %inode170 = getelementptr inbounds %struct._info, %struct._info* %78, i64 0, i32 16
  %79 = load i64, i64* %inode170, align 8, !tbaa !45
  %dev171 = getelementptr inbounds %struct._info, %struct._info* %78, i64 0, i32 15
  %80 = load i64, i64* %dev171, align 8, !tbaa !44
  call void @saveino(i64 %79, i64 %80) #5
  %81 = load %struct._info*, %struct._info** %dir.0.ph415, align 8, !tbaa !5
  %size173 = getelementptr inbounds %struct._info, %struct._info* %81, i64 0, i32 11
  %err174 = getelementptr inbounds %struct._info, %struct._info* %81, i64 0, i32 17
  %call175 = call %struct._info** @getfulltree(i8* %path.3, i64 %add172, i64 %dev.addr.0, i64* %size173, i8** %err174)
  %82 = load %struct._info*, %struct._info** %dir.0.ph415, align 8, !tbaa !5
  %child176 = getelementptr inbounds %struct._info, %struct._info* %82, i64 0, i32 18
  store %struct._info** %call175, %struct._info*** %child176, align 8, !tbaa !38
  br label %if.end177

if.end177:                                        ; preds = %if.then87, %if.end140, %xmalloc.exit366, %if.end169
  %path.4 = phi i8* [ %path.0409, %xmalloc.exit366 ], [ %path.2, %if.end140 ], [ %path.0409, %if.then87 ], [ %path.3, %if.end169 ]
  %pathsize.4 = phi i64 [ %pathsize.0410, %xmalloc.exit366 ], [ %pathsize.2, %if.end140 ], [ %pathsize.0410, %if.then87 ], [ %pathsize.3, %if.end169 ]
  %83 = load i32, i32* @pruneflag, align 4, !tbaa !2
  %tobool178 = icmp eq i32 %83, 0
  br i1 %tobool178, label %if.end208, label %land.lhs.true179

land.lhs.true179:                                 ; preds = %if.end177
  %84 = load %struct._info*, %struct._info** %dir.0.ph415, align 8, !tbaa !5
  %child180 = getelementptr inbounds %struct._info, %struct._info* %84, i64 0, i32 18
  %85 = load %struct._info**, %struct._info*** %child180, align 8, !tbaa !38
  %cmp181 = icmp eq %struct._info** %85, null
  br i1 %cmp181, label %land.lhs.true183, label %if.end208

land.lhs.true183:                                 ; preds = %land.lhs.true179
  %86 = load i32, i32* @matchdirs, align 4, !tbaa !2
  %tobool184 = icmp ne i32 %86, 0
  %87 = load i8*, i8** @pattern, align 8
  %tobool186 = icmp ne i8* %87, null
  %or.cond231 = and i1 %tobool184, %tobool186
  br i1 %or.cond231, label %land.lhs.true187, label %if.then192

land.lhs.true187:                                 ; preds = %land.lhs.true183
  %name188 = getelementptr inbounds %struct._info, %struct._info* %84, i64 0, i32 0
  %88 = load i8*, i8** %name188, align 8, !tbaa !11
  %call189 = call i32 @patmatch(i8* %88, i8* nonnull %87)
  %cmp190 = icmp eq i32 %call189, 1
  br i1 %cmp190, label %if.end208, label %land.lhs.true187.if.then192_crit_edge

land.lhs.true187.if.then192_crit_edge:            ; preds = %land.lhs.true187
  %.pre = load %struct._info*, %struct._info** %dir.0.ph415, align 8, !tbaa !5
  br label %if.then192

if.then192:                                       ; preds = %land.lhs.true187.if.then192_crit_edge, %land.lhs.true183
  %89 = phi %struct._info* [ %.pre, %land.lhs.true187.if.then192_crit_edge ], [ %84, %land.lhs.true183 ]
  %tobool194406 = icmp eq %struct._info* %89, null
  br i1 %tobool194406, label %for.end199, label %for.body195.preheader

for.body195.preheader:                            ; preds = %if.then192
  br label %for.body195

for.body195:                                      ; preds = %for.body195.preheader, %for.body195
  %p.0407 = phi %struct._info** [ %add.ptr196, %for.body195 ], [ %dir.0.ph415, %for.body195.preheader ]
  %add.ptr196 = getelementptr inbounds %struct._info*, %struct._info** %p.0407, i64 1
  %90 = bitcast %struct._info** %add.ptr196 to i64*
  %91 = load i64, i64* %90, align 8, !tbaa !5
  %92 = bitcast %struct._info** %p.0407 to i64*
  store i64 %91, i64* %92, align 8, !tbaa !5
  %tobool194 = icmp eq i64 %91, 0
  br i1 %tobool194, label %for.end199, label %for.body195

for.end199:                                       ; preds = %for.body195, %if.then192
  %93 = load i32, i32* %n, align 4, !tbaa !15
  %dec200 = add nsw i32 %93, -1
  store i32 %dec200, i32* %n, align 4, !tbaa !15
  %name201 = getelementptr inbounds %struct._info, %struct._info* %89, i64 0, i32 0
  %94 = load i8*, i8** %name201, align 8, !tbaa !11
  call void @free(i8* %94) #5
  %lnk202 = getelementptr inbounds %struct._info, %struct._info* %89, i64 0, i32 1
  %95 = load i8*, i8** %lnk202, align 8, !tbaa !35
  %tobool203 = icmp eq i8* %95, null
  br i1 %tobool203, label %if.end206, label %if.then204

if.then204:                                       ; preds = %for.end199
  call void @free(i8* nonnull %95) #5
  br label %if.end206

if.end206:                                        ; preds = %for.end199, %if.then204
  %96 = bitcast %struct._info* %89 to i8*
  call void @free(i8* %96) #5
  %97 = load %struct._info*, %struct._info** %dir.0.ph415, align 8, !tbaa !5
  %tobool77 = icmp eq %struct._info* %97, null
  br i1 %tobool77, label %while.end, label %while.body

if.end208:                                        ; preds = %land.lhs.true81, %if.end177, %while.body, %land.lhs.true179, %land.lhs.true187
  %path.5 = phi i8* [ %path.0409, %land.lhs.true81 ], [ %path.4, %land.lhs.true187 ], [ %path.4, %land.lhs.true179 ], [ %path.4, %if.end177 ], [ %path.0409, %while.body ]
  %pathsize.5 = phi i64 [ %pathsize.0410, %land.lhs.true81 ], [ %pathsize.4, %land.lhs.true187 ], [ %pathsize.4, %land.lhs.true179 ], [ %pathsize.4, %if.end177 ], [ %pathsize.0410, %while.body ]
  %98 = load i32, i32* @duflag, align 4, !tbaa !2
  %tobool209 = icmp eq i32 %98, 0
  br i1 %tobool209, label %if.end213, label %if.then210

if.then210:                                       ; preds = %if.end208
  %99 = load %struct._info*, %struct._info** %dir.0.ph415, align 8, !tbaa !5
  %size211 = getelementptr inbounds %struct._info, %struct._info* %99, i64 0, i32 11
  %100 = load i64, i64* %size211, align 8, !tbaa !12
  %101 = load i64, i64* %size, align 8, !tbaa !29
  %add212 = add nsw i64 %101, %100
  store i64 %add212, i64* %size, align 8, !tbaa !29
  br label %if.end213

if.end213:                                        ; preds = %if.end208, %if.then210
  %incdec.ptr214 = getelementptr inbounds %struct._info*, %struct._info** %dir.0.ph415, i64 1
  %102 = load %struct._info*, %struct._info** %incdec.ptr214, align 8, !tbaa !5
  %tobool77408 = icmp eq %struct._info* %102, null
  br i1 %tobool77408, label %while.end, label %while.body.lr.ph

while.end:                                        ; preds = %if.end213, %if.end206, %if.end76
  %path.0.lcssa = phi i8* [ %call53, %if.end76 ], [ %path.4, %if.end206 ], [ %path.5, %if.end213 ]
  call void @free(i8* %path.0.lcssa) #5
  %103 = load i32, i32* %n, align 4, !tbaa !15
  %cmp215 = icmp eq i32 %103, 0
  br i1 %cmp215, label %if.then217, label %cleanup

if.then217:                                       ; preds = %while.end
  %104 = load %struct._info*, %struct._info** %call39396, align 8, !tbaa !5
  %tobool21.i367 = icmp eq %struct._info* %104, null
  br i1 %tobool21.i367, label %free_dir.exit383, label %for.body.i374.preheader

for.body.i374.preheader:                          ; preds = %if.then217
  br label %for.body.i374

for.body.i374:                                    ; preds = %for.body.i374.preheader, %if.end.i382
  %indvars.iv.i369 = phi i64 [ %indvars.iv.next.i379, %if.end.i382 ], [ 0, %for.body.i374.preheader ]
  %105 = phi %struct._info* [ %111, %if.end.i382 ], [ %104, %for.body.i374.preheader ]
  %arrayidx23.i370 = phi %struct._info** [ %arrayidx.i380, %if.end.i382 ], [ %call39396, %for.body.i374.preheader ]
  %name.i371 = getelementptr inbounds %struct._info, %struct._info* %105, i64 0, i32 0
  %106 = load i8*, i8** %name.i371, align 8, !tbaa !11
  call void @free(i8* %106) #5
  %107 = load %struct._info*, %struct._info** %arrayidx23.i370, align 8, !tbaa !5
  %lnk.i372 = getelementptr inbounds %struct._info, %struct._info* %107, i64 0, i32 1
  %108 = load i8*, i8** %lnk.i372, align 8, !tbaa !35
  %tobool5.i373 = icmp eq i8* %108, null
  br i1 %tobool5.i373, label %for.body.if.end_crit_edge.i375, label %if.then.i378

for.body.if.end_crit_edge.i375:                   ; preds = %for.body.i374
  %109 = bitcast %struct._info* %107 to i8*
  br label %if.end.i382

if.then.i378:                                     ; preds = %for.body.i374
  call void @free(i8* nonnull %108) #5
  %.phi.trans.insert.i376 = bitcast %struct._info** %arrayidx23.i370 to i8**
  %.pre.i377 = load i8*, i8** %.phi.trans.insert.i376, align 8, !tbaa !5
  br label %if.end.i382

if.end.i382:                                      ; preds = %if.then.i378, %for.body.if.end_crit_edge.i375
  %110 = phi i8* [ %109, %for.body.if.end_crit_edge.i375 ], [ %.pre.i377, %if.then.i378 ]
  call void @free(i8* %110) #5
  %indvars.iv.next.i379 = add nuw i64 %indvars.iv.i369, 1
  %arrayidx.i380 = getelementptr inbounds %struct._info*, %struct._info** %call39396, i64 %indvars.iv.next.i379
  %111 = load %struct._info*, %struct._info** %arrayidx.i380, align 8, !tbaa !5
  %tobool.i381 = icmp eq %struct._info* %111, null
  br i1 %tobool.i381, label %free_dir.exit383, label %for.body.i374

free_dir.exit383:                                 ; preds = %if.end.i382, %if.then217
  %112 = bitcast %struct._info** %call39396 to i8*
  call void @free(i8* %112) #5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry, %free_dir.exit383, %free_dir.exit357, %free_dir.exit, %xmalloc.exit
  %retval.0 = phi %struct._info** [ null, %xmalloc.exit ], [ null, %free_dir.exit ], [ null, %free_dir.exit357 ], [ null, %free_dir.exit383 ], [ null, %entry ], [ %call39396, %while.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #5
  ret %struct._info** %retval.0
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define void @free_dir(%struct._info** nocapture %d) local_unnamed_addr #2 {
entry:
  %0 = load %struct._info*, %struct._info** %d, align 8, !tbaa !5
  %tobool21 = icmp eq %struct._info* %0, null
  br i1 %tobool21, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %for.body.preheader ]
  %1 = phi %struct._info* [ %7, %if.end ], [ %0, %for.body.preheader ]
  %arrayidx23 = phi %struct._info** [ %arrayidx, %if.end ], [ %d, %for.body.preheader ]
  %name = getelementptr inbounds %struct._info, %struct._info* %1, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8, !tbaa !11
  tail call void @free(i8* %2) #5
  %3 = load %struct._info*, %struct._info** %arrayidx23, align 8, !tbaa !5
  %lnk = getelementptr inbounds %struct._info, %struct._info* %3, i64 0, i32 1
  %4 = load i8*, i8** %lnk, align 8, !tbaa !35
  %tobool5 = icmp eq i8* %4, null
  br i1 %tobool5, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  %5 = bitcast %struct._info* %3 to i8*
  br label %if.end

if.then:                                          ; preds = %for.body
  tail call void @free(i8* nonnull %4) #5
  %.phi.trans.insert = bitcast %struct._info** %arrayidx23 to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then
  %6 = phi i8* [ %5, %for.body.if.end_crit_edge ], [ %.pre, %if.then ]
  tail call void @free(i8* %6) #5
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds %struct._info*, %struct._info** %d, i64 %indvars.iv.next
  %7 = load %struct._info*, %struct._info** %arrayidx, align 8, !tbaa !5
  %tobool = icmp eq %struct._info* %7, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %entry
  %8 = bitcast %struct._info** %d to i8*
  tail call void @free(i8* %8) #5
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @sizecmp(i64 %a, i64 %b) local_unnamed_addr #10 {
entry:
  %cmp = icmp eq i64 %a, %b
  %cmp1 = icmp slt i64 %a, %b
  %cond = select i1 %cmp1, i32 1, i32 -1
  %cond2 = select i1 %cmp, i32 0, i32 %cond
  ret i32 %cond2
}

; Function Attrs: nounwind uwtable
define void @indent(i32 %maxlevel) local_unnamed_addr #2 {
entry:
  %0 = load i32, i32* @ansilines, align 4, !tbaa !2
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.else31, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** @dirs, align 8, !tbaa !5
  %2 = load i32, i32* %1, align 4, !tbaa !15
  %tobool1 = icmp eq i32 %2, 0
  br i1 %tobool1, label %if.end68, label %if.end

if.end:                                           ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %3)
  %.pre = load i32*, i32** @dirs, align 8, !tbaa !5
  %.pre91 = load i32, i32* %.pre, align 4, !tbaa !15
  %tobool484 = icmp ne i32 %.pre91, 0
  %cmp85 = icmp sgt i32 %maxlevel, -1
  %.cmp86 = and i1 %cmp85, %tobool484
  br i1 %.cmp86, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %5 = sext i32 %maxlevel to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv89 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next90, %for.inc ]
  %6 = phi i32 [ %.pre91, %for.body.lr.ph ], [ %15, %for.inc ]
  %7 = phi i32* [ %.pre, %for.body.lr.ph ], [ %14, %for.inc ]
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %arrayidx6 = getelementptr inbounds i32, i32* %7, i64 %indvars.iv.next90
  %8 = load i32, i32* %arrayidx6, align 4, !tbaa !15
  %tobool7 = icmp eq i32 %8, 0
  %cmp11 = icmp eq i32 %6, 1
  br i1 %tobool7, label %if.else16, label %if.then8

if.then8:                                         ; preds = %for.body
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %9)
  br label %for.inc

if.else:                                          ; preds = %if.then8
  %call14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i64 0, i64 0))
  br label %for.inc

if.else16:                                        ; preds = %for.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  br i1 %cmp11, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else16
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %11)
  br label %for.inc

if.else22:                                        ; preds = %if.else16
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %11)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then12, %if.else22, %if.then20
  %14 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds i32, i32* %14, i64 %indvars.iv.next90
  %15 = load i32, i32* %arrayidx3, align 4, !tbaa !15
  %tobool4 = icmp ne i32 %15, 0
  %cmp = icmp slt i64 %indvars.iv89, %5
  %.cmp = and i1 %cmp, %tobool4
  br i1 %.cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc
  %.pre92 = load i32, i32* %14, align 4, !tbaa !15
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end
  %16 = phi i32 [ %.pre91, %if.end ], [ %.pre92, %for.end.loopexit ]
  %tobool27 = icmp eq i32 %16, 0
  br i1 %tobool27, label %if.end68, label %if.then28

if.then28:                                        ; preds = %for.end
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %17)
  br label %if.end68

if.else31:                                        ; preds = %entry
  %19 = load i32, i32* @Hflag, align 4, !tbaa !2
  %tobool32 = icmp eq i32 %19, 0
  br i1 %tobool32, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.else31
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %fputc = tail call i32 @fputc(i32 9, %struct._IO_FILE* %20)
  br label %if.end35

if.end35:                                         ; preds = %if.else31, %if.then33
  %21 = load i32*, i32** @dirs, align 8, !tbaa !5
  %22 = load i32, i32* %21, align 4, !tbaa !15
  %tobool3980 = icmp eq i32 %22, 0
  %cmp4181 = icmp slt i32 %maxlevel, 0
  %or.cond82 = or i1 %cmp4181, %tobool3980
  br i1 %or.cond82, label %if.end68, label %for.body43.lr.ph

for.body43.lr.ph:                                 ; preds = %if.end35
  %23 = sext i32 %maxlevel to i64
  br label %for.body43

for.body43:                                       ; preds = %for.body43.lr.ph, %cond.end62
  %indvars.iv = phi i64 [ 0, %for.body43.lr.ph ], [ %indvars.iv.next, %cond.end62 ]
  %24 = phi i32 [ %22, %for.body43.lr.ph ], [ %34, %cond.end62 ]
  %25 = phi i32* [ %21, %for.body43.lr.ph ], [ %33, %cond.end62 ]
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx46 = getelementptr inbounds i32, i32* %25, i64 %indvars.iv.next
  %27 = load i32, i32* %arrayidx46, align 4, !tbaa !15
  %tobool47 = icmp eq i32 %27, 0
  %cmp50 = icmp eq i32 %24, 1
  br i1 %tobool47, label %cond.false54, label %cond.true

cond.true:                                        ; preds = %for.body43
  br i1 %cmp50, label %cond.true51, label %cond.false

cond.true51:                                      ; preds = %cond.true
  %28 = load %struct.linedraw*, %struct.linedraw** @linedraw, align 8, !tbaa !5
  %vert = getelementptr inbounds %struct.linedraw, %struct.linedraw* %28, i64 0, i32 1
  %29 = load i8*, i8** %vert, align 8, !tbaa !46
  br label %cond.end62

cond.false:                                       ; preds = %cond.true
  %30 = load i32, i32* @Hflag, align 4, !tbaa !2
  %tobool52 = icmp eq i32 %30, 0
  %cond = select i1 %tobool52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.119, i64 0, i64 0)
  br label %cond.end62

cond.false54:                                     ; preds = %for.body43
  %31 = load %struct.linedraw*, %struct.linedraw** @linedraw, align 8, !tbaa !5
  %corner = getelementptr inbounds %struct.linedraw, %struct.linedraw* %31, i64 0, i32 3
  %vert_left = getelementptr inbounds %struct.linedraw, %struct.linedraw* %31, i64 0, i32 2
  %corner.sink = select i1 %cmp50, i8** %vert_left, i8** %corner
  %32 = load i8*, i8** %corner.sink, align 8, !tbaa !5
  br label %cond.end62

cond.end62:                                       ; preds = %cond.true51, %cond.false, %cond.false54
  %cond63 = phi i8* [ %32, %cond.false54 ], [ %29, %cond.true51 ], [ %cond, %cond.false ]
  %call64 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0), i8* %cond63)
  %33 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx38 = getelementptr inbounds i32, i32* %33, i64 %indvars.iv.next
  %34 = load i32, i32* %arrayidx38, align 4, !tbaa !15
  %tobool39 = icmp eq i32 %34, 0
  %cmp41 = icmp sge i64 %indvars.iv, %23
  %or.cond = or i1 %cmp41, %tobool39
  br i1 %or.cond, label %if.end68, label %for.body43

if.end68:                                         ; preds = %cond.end62, %if.then, %if.end35, %for.end, %if.then28
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define i8* @prot(i32 %m) local_unnamed_addr #11 {
entry:
  %and = and i32 %m, 61440
  %0 = add nsw i32 %and, -4096
  %1 = lshr exact i32 %0, 12
  %trunc = trunc i32 %1 to i20
  %2 = icmp ult i20 %trunc, 12
  br i1 %2, label %switch.lookup, label %for.end

switch.lookup:                                    ; preds = %entry
  %3 = sext i20 %trunc to i64
  %switch.gep = getelementptr inbounds [12 x i64], [12 x i64]* @switch.table.prot, i64 0, i64 %3
  %switch.load = load i64, i64* %switch.gep, align 8
  br label %for.end

for.end:                                          ; preds = %entry, %switch.lookup
  %idxprom.lcssa = phi i64 [ %switch.load, %switch.lookup ], [ 7, %entry ]
  %arrayidx4 = getelementptr inbounds [9 x i8], [9 x i8]* @fmt, i64 0, i64 %idxprom.lcssa
  %4 = load i8, i8* %arrayidx4, align 1, !tbaa !2
  store i8 %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @prot.buf, i64 0, i64 0), align 1, !tbaa !2
  %and8 = and i32 %m, 256
  %tobool9 = icmp eq i32 %and8, 0
  %. = select i1 %tobool9, i8 45, i8 114
  store i8 %., i8* getelementptr inbounds ([11 x i8], [11 x i8]* @prot.buf, i64 0, i64 1), align 1, !tbaa !2
  %5 = trunc i32 %m to i8
  %6 = ashr i8 %5, 7
  %7 = and i8 %6, 74
  %8 = add nuw nsw i8 %7, 45
  store i8 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @prot.buf, i64 0, i64 2), align 1, !tbaa !2
  %and8.2 = and i32 %m, 64
  %tobool9.2 = icmp eq i32 %and8.2, 0
  %.60 = select i1 %tobool9.2, i8 45, i8 120
  store i8 %.60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @prot.buf, i64 0, i64 3), align 1, !tbaa !2
  %and8.3 = and i32 %m, 32
  %tobool9.3 = icmp eq i32 %and8.3, 0
  %cond.3 = select i1 %tobool9.3, i8 45, i8 114
  store i8 %cond.3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @prot.buf, i64 0, i64 4), align 1, !tbaa !2
  %and8.4 = and i32 %m, 16
  %tobool9.4 = icmp eq i32 %and8.4, 0
  %.61 = select i1 %tobool9.4, i8 45, i8 119
  store i8 %.61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @prot.buf, i64 0, i64 5), align 1, !tbaa !2
  %and8.5 = and i32 %m, 8
  %tobool9.5 = icmp eq i32 %and8.5, 0
  %9 = select i1 %tobool9.5, i8 45, i8 120
  store i8 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @prot.buf, i64 0, i64 6), align 1, !tbaa !2
  %and8.6 = and i32 %m, 4
  %tobool9.6 = icmp eq i32 %and8.6, 0
  %.62 = select i1 %tobool9.6, i8 45, i8 114
  store i8 %.62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @prot.buf, i64 0, i64 7), align 1, !tbaa !2
  %and8.7 = and i32 %m, 2
  %tobool9.7 = icmp eq i32 %and8.7, 0
  %cond.7 = select i1 %tobool9.7, i8 45, i8 119
  store i8 %cond.7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @prot.buf, i64 0, i64 8), align 1, !tbaa !2
  %and8.8 = and i32 %m, 1
  %tobool9.8 = icmp eq i32 %and8.8, 0
  %.63 = select i1 %tobool9.8, i8 45, i8 120
  store i8 %.63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @prot.buf, i64 0, i64 9), align 1, !tbaa !2
  %and18 = and i32 %m, 2048
  %tobool19 = icmp eq i32 %and18, 0
  br i1 %tobool19, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %10 = trunc i32 %and8.2 to i8
  %11 = lshr exact i8 %10, 1
  %12 = or i8 %11, 83
  store i8 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @prot.buf, i64 0, i64 3), align 1, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %and25 = and i32 %m, 1024
  %tobool26 = icmp eq i32 %and25, 0
  br i1 %tobool26, label %if.end33, label %if.then27

if.then27:                                        ; preds = %if.end
  %13 = trunc i32 %and8.5 to i8
  %14 = shl nuw nsw i8 %13, 2
  %15 = or i8 %14, 83
  store i8 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @prot.buf, i64 0, i64 6), align 1, !tbaa !2
  br label %if.end33

if.end33:                                         ; preds = %if.end, %if.then27
  %and34 = and i32 %m, 512
  %tobool35 = icmp eq i32 %and34, 0
  br i1 %tobool35, label %if.end42, label %if.then36

if.then36:                                        ; preds = %if.end33
  %16 = trunc i32 %and8.8 to i8
  %17 = shl nuw nsw i8 %16, 5
  %18 = or i8 %17, 84
  store i8 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @prot.buf, i64 0, i64 9), align 1, !tbaa !2
  br label %if.end42

if.end42:                                         ; preds = %if.end33, %if.then36
  store i8 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @prot.buf, i64 0, i64 10), align 1, !tbaa !2
  ret i8* getelementptr inbounds ([11 x i8], [11 x i8]* @prot.buf, i64 0, i64 0)
}

; Function Attrs: nounwind uwtable
define i8* @do_date(i64 %t) local_unnamed_addr #2 {
entry:
  %t.addr = alloca i64, align 8
  store i64 %t, i64* %t.addr, align 8, !tbaa !29
  %call = call %struct.tm* @localtime(i64* nonnull %t.addr) #5
  %0 = load i8*, i8** @timefmt, align 8, !tbaa !5
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @strftime(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @do_date.buf, i64 0, i64 0), i64 255, i8* nonnull %0, %struct.tm* %call) #5
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @do_date.buf, i64 0, i64 255), align 1, !tbaa !2
  br label %cleanup13

if.else:                                          ; preds = %entry
  %call2 = call i64 @time(i64* null) #5
  %1 = load i64, i64* %t.addr, align 8, !tbaa !29
  %cmp = icmp sgt i64 %1, %call2
  br i1 %cmp, label %cleanup13, label %if.end

if.end:                                           ; preds = %if.else
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %call, i64 0, i32 4
  %2 = load i32, i32* %tm_mon, align 8, !tbaa !47
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [12 x i8*], [12 x i8*]* @month, i64 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !5
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %call, i64 0, i32 3
  %4 = load i32, i32* %tm_mday, align 4, !tbaa !49
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @do_date.buf, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.122, i64 0, i64 0), i8* %3, i32 %4) #5
  %5 = load i64, i64* %t.addr, align 8, !tbaa !29
  %add = add nsw i64 %5, 16070400
  %cmp5 = icmp slt i64 %add, %call2
  br i1 %cmp5, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.end
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %call, i64 0, i32 5
  %6 = load i32, i32* %tm_year, align 4, !tbaa !50
  %add7 = add nsw i32 %6, 1900
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @do_date.buf, i64 0, i64 6), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i64 0, i64 0), i32 %add7) #5
  br label %cleanup13

if.else9:                                         ; preds = %if.end
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %call, i64 0, i32 2
  %7 = load i32, i32* %tm_hour, align 8, !tbaa !51
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %call, i64 0, i32 1
  %8 = load i32, i32* %tm_min, align 4, !tbaa !52
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @do_date.buf, i64 0, i64 6), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.124, i64 0, i64 0), i32 %7, i32 %8) #5
  br label %cleanup13

cleanup13:                                        ; preds = %if.else, %if.then, %if.then6, %if.else9
  %retval.1 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @do_date.buf, i64 0, i64 0), %if.else9 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @do_date.buf, i64 0, i64 0), %if.then6 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @do_date.buf, i64 0, i64 0), %if.then ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.121, i64 0, i64 0), %if.else ]
  ret i8* %retval.1
}

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #4

; Function Attrs: norecurse nounwind readonly uwtable
define signext i8 @Ftype(i32 %mode) local_unnamed_addr #12 {
entry:
  %and = and i32 %mode, 61440
  %0 = load i32, i32* @dflag, align 4, !tbaa !2
  %tobool = icmp eq i32 %0, 0
  %cmp = icmp eq i32 %and, 16384
  %or.cond = and i1 %cmp, %tobool
  br i1 %or.cond, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %trunc = trunc i32 %mode to i16
  %1 = lshr i16 %trunc, 12
  %2 = xor i16 %1, 8
  %trunc25 = trunc i16 %2 to i4
  switch i4 %trunc25, label %if.end18 [
    i4 4, label %cleanup
    i4 -7, label %if.then5
    i4 2, label %if.then8
    i4 0, label %land.lhs.true11
  ]

if.then5:                                         ; preds = %if.else
  br label %cleanup

if.then8:                                         ; preds = %if.else
  br label %cleanup

land.lhs.true11:                                  ; preds = %if.else
  %and12 = and i32 %mode, 73
  %tobool13 = icmp eq i32 %and12, 0
  br i1 %tobool13, label %if.end18, label %cleanup

if.end18:                                         ; preds = %if.else, %land.lhs.true11
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true11, %if.else, %entry, %if.end18, %if.then8, %if.then5
  %retval.0 = phi i8 [ 124, %if.then5 ], [ 64, %if.then8 ], [ 0, %if.end18 ], [ 47, %entry ], [ 61, %if.else ], [ 42, %land.lhs.true11 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind uwtable
define i8* @fillinfo(i8* returned %buf, %struct._info* nocapture readonly %ent) local_unnamed_addr #2 {
entry:
  store i8 0, i8* %buf, align 1, !tbaa !2
  %0 = load i32, i32* @inodeflag, align 4, !tbaa !2
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %inode = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 16
  %1 = load i64, i64* %inode, align 8, !tbaa !45
  %call = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %buf, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i64 0, i64 0), i64 %1) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %n.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  %2 = load i32, i32* @devflag, align 4, !tbaa !2
  %tobool1 = icmp eq i32 %2, 0
  br i1 %tobool1, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %idx.ext = sext i32 %n.0 to i64
  %add.ptr = getelementptr inbounds i8, i8* %buf, i64 %idx.ext
  %dev = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 15
  %3 = load i64, i64* %dev, align 8, !tbaa !44
  %conv = trunc i64 %3 to i32
  %call3 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i64 0, i64 0), i32 %conv) #5
  %add4 = add nsw i32 %call3, %n.0
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then2
  %n.1 = phi i32 [ %add4, %if.then2 ], [ %n.0, %if.end ]
  %4 = load i32, i32* @pflag, align 4, !tbaa !2
  %tobool6 = icmp eq i32 %4, 0
  br i1 %tobool6, label %if.end13, label %if.then7

if.then7:                                         ; preds = %if.end5
  %idx.ext8 = sext i32 %n.1 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %buf, i64 %idx.ext8
  %mode = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 7
  %5 = load i32, i32* %mode, align 4, !tbaa !30
  %call10 = tail call i8* @prot(i32 %5)
  %call11 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.137, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @prot.buf, i64 0, i64 0)) #5
  %add12 = add nsw i32 %call11, %n.1
  br label %if.end13

if.end13:                                         ; preds = %if.end5, %if.then7
  %n.2 = phi i32 [ %add12, %if.then7 ], [ %n.1, %if.end5 ]
  %6 = load i32, i32* @uflag, align 4, !tbaa !2
  %tobool14 = icmp eq i32 %6, 0
  br i1 %tobool14, label %if.end21, label %if.then15

if.then15:                                        ; preds = %if.end13
  %idx.ext16 = sext i32 %n.2 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %buf, i64 %idx.ext16
  %uid = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 9
  %7 = load i32, i32* %uid, align 4, !tbaa !32
  %call18 = tail call i8* @uidtoname(i32 %7) #5
  %call19 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.138, i64 0, i64 0), i8* %call18) #5
  %add20 = add nsw i32 %call19, %n.2
  br label %if.end21

if.end21:                                         ; preds = %if.end13, %if.then15
  %n.3 = phi i32 [ %add20, %if.then15 ], [ %n.2, %if.end13 ]
  %8 = load i32, i32* @gflag, align 4, !tbaa !2
  %tobool22 = icmp eq i32 %8, 0
  br i1 %tobool22, label %if.end29, label %if.then23

if.then23:                                        ; preds = %if.end21
  %idx.ext24 = sext i32 %n.3 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %buf, i64 %idx.ext24
  %gid = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 10
  %9 = load i32, i32* %gid, align 8, !tbaa !34
  %call26 = tail call i8* @gidtoname(i32 %9) #5
  %call27 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.138, i64 0, i64 0), i8* %call26) #5
  %add28 = add nsw i32 %call27, %n.3
  br label %if.end29

if.end29:                                         ; preds = %if.end21, %if.then23
  %n.4 = phi i32 [ %add28, %if.then23 ], [ %n.3, %if.end21 ]
  %10 = load i32, i32* @sflag, align 4, !tbaa !2
  %tobool30 = icmp eq i32 %10, 0
  br i1 %tobool30, label %if.end36, label %if.then31

if.then31:                                        ; preds = %if.end29
  %idx.ext32 = sext i32 %n.4 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %buf, i64 %idx.ext32
  %size = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 11
  %11 = load i64, i64* %size, align 8, !tbaa !12
  %call34 = tail call i32 @psize(i8* %add.ptr33, i64 %11)
  %add35 = add nsw i32 %call34, %n.4
  br label %if.end36

if.end36:                                         ; preds = %if.end29, %if.then31
  %n.5 = phi i32 [ %add35, %if.then31 ], [ %n.4, %if.end29 ]
  %12 = load i32, i32* @Dflag, align 4, !tbaa !2
  %tobool37 = icmp eq i32 %12, 0
  br i1 %tobool37, label %if.end45, label %if.then38

if.then38:                                        ; preds = %if.end36
  %idx.ext39 = sext i32 %n.5 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %buf, i64 %idx.ext39
  %13 = load i32, i32* @cflag, align 4, !tbaa !2
  %tobool41 = icmp eq i32 %13, 0
  %mtime = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 14
  %ctime = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 13
  %mtime.sink = select i1 %tobool41, i64* %mtime, i64* %ctime
  %14 = load i64, i64* %mtime.sink, align 8, !tbaa !29
  %call42 = tail call i8* @do_date(i64 %14)
  %call43 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.137, i64 0, i64 0), i8* %call42) #5
  br label %if.end45

if.end45:                                         ; preds = %if.end36, %if.then38
  ret i8* %buf
}

; Function Attrs: nounwind uwtable
define i64 @unix_listdir(i8* %d, i32* %dt, i32* %ft, i64 %lev, i64 %dev) #2 {
entry:
  %sb = alloca %struct.stat, align 8
  %n = alloca i32, align 4
  %0 = bitcast %struct.stat* %sb to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #5
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %2 = load i32, i32* @Level, align 4, !tbaa !15
  %cmp = icmp sgt i32 %2, -1
  %conv = sext i32 %2 to i64
  %cmp1 = icmp ult i64 %conv, %lev
  %or.cond409 = and i1 %cmp, %cmp1
  br i1 %or.cond409, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call = tail call i32 @fputc(i32 10, %struct._IO_FILE* %3)
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, i32* @xdev, align 4, !tbaa !2
  %tobool = icmp ne i32 %4, 0
  %cmp4 = icmp eq i64 %lev, 0
  %or.cond = and i1 %cmp4, %tobool
  br i1 %or.cond, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %call.i = call i32 @__xstat(i32 1, i8* nonnull %d, %struct.stat* nonnull %sb) #5
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %sb, i64 0, i32 0
  %5 = load i64, i64* %st_dev, align 8, !tbaa !22
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %dev.addr.0 = phi i64 [ %5, %if.then6 ], [ %dev, %if.end ]
  %call9 = call %struct._info** @read_dir(i8* %d, i32* nonnull %n) #5
  %tobool10 = icmp eq %struct._info** %call9, null
  %6 = load i32, i32* %n, align 4
  %tobool12 = icmp ne i32 %6, 0
  %or.cond288 = and i1 %tobool10, %tobool12
  br i1 %or.cond288, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %7)
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  br i1 %tobool12, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end15
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call18 = call i32 @fputc(i32 10, %struct._IO_FILE* %9)
  call void @free_dir(%struct._info** %call9) #5
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %10 = load i32, i32* @flimit, align 4, !tbaa !2
  %cmp20 = icmp ne i32 %10, 0
  %cmp23 = icmp ugt i32 %6, %10
  %or.cond410 = and i1 %cmp20, %cmp23
  br i1 %or.cond410, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end19
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1.56, i64 0, i64 0), i32 %6)
  call void @free_dir(%struct._info** %call9) #5
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %12 = load i32 (...)*, i32 (...)** @cmpfunc, align 8, !tbaa !5
  %tobool28 = icmp eq i32 (...)* %12, null
  br i1 %tobool28, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end27
  %13 = bitcast %struct._info** %call9 to i8*
  %conv30 = sext i32 %6 to i64
  %14 = bitcast i32 (...)* %12 to i32 (i8*, i8*)*
  call void @qsort(i8* %13, i64 %conv30, i64 8, i32 (i8*, i8*)* %14) #5
  br label %if.end31

if.end31:                                         ; preds = %if.end27, %if.then29
  %15 = load i32, i32* @maxdirs, align 4, !tbaa !15
  %sub = add nsw i32 %15, -1
  %conv32 = sext i32 %sub to i64
  %cmp33 = icmp ugt i64 %conv32, %lev
  br i1 %cmp33, label %if.end39, label %if.then35

if.then35:                                        ; preds = %if.end31
  %16 = load i8*, i8** bitcast (i32** @dirs to i8**), align 8, !tbaa !5
  %add = add nsw i32 %15, 1024
  store i32 %add, i32* @maxdirs, align 4, !tbaa !15
  %conv36 = sext i32 %add to i64
  %mul = shl nsw i64 %conv36, 2
  %call37 = call i8* @xrealloc(i8* %16, i64 %mul) #5
  %17 = bitcast i8* %call37 to i32*
  store i8* %call37, i8** bitcast (i32** @dirs to i8**), align 8, !tbaa !5
  %18 = load i32, i32* @maxdirs, align 4, !tbaa !15
  %sub38 = add nsw i32 %18, -1024
  %idx.ext = sext i32 %sub38 to i64
  %add.ptr = getelementptr inbounds i32, i32* %17, i64 %idx.ext
  %19 = bitcast i32* %add.ptr to i8*
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 4096, i32 4, i1 false)
  br label %if.end39

if.end39:                                         ; preds = %if.end31, %if.then35
  %20 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 %lev
  store i32 1, i32* %arrayidx, align 4, !tbaa !15
  %add.ptr40 = getelementptr inbounds %struct._info*, %struct._info** %call9, i64 1
  %21 = load %struct._info*, %struct._info** %add.ptr40, align 8, !tbaa !5
  %tobool41 = icmp eq %struct._info* %21, null
  %. = select i1 %tobool41, i32 2, i32 1
  store i32 %., i32* %arrayidx, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %22)
  %call46 = call noalias i8* @malloc(i64 4096) #5
  %23 = load %struct._info*, %struct._info** %call9, align 8, !tbaa !5
  %tobool47412 = icmp eq %struct._info* %23, null
  br i1 %tobool47412, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end39
  %conv50 = trunc i64 %lev to i32
  %add259 = add i64 %lev, 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end278
  %24 = phi %struct._info* [ %23, %while.body.lr.ph ], [ %106, %if.end278 ]
  %dir.0416 = phi %struct._info** [ %call9, %while.body.lr.ph ], [ %add.ptr266, %if.end278 ]
  %pathsize.0415 = phi i64 [ 4096, %while.body.lr.ph ], [ %pathsize.8, %if.end278 ]
  %colored.0414 = phi i32 [ 0, %while.body.lr.ph ], [ %colored.3, %if.end278 ]
  %path.0413 = phi i8* [ %call46, %while.body.lr.ph ], [ %path.8, %if.end278 ]
  %25 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool48 = icmp eq i32 %25, 0
  br i1 %tobool48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %while.body
  call void @indent(i32 %conv50) #5
  %.pre = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  br label %if.end51

if.end51:                                         ; preds = %while.body, %if.then49
  %26 = phi %struct._info* [ %24, %while.body ], [ %.pre, %if.then49 ]
  %call52 = call i8* @fillinfo(i8* %path.0413, %struct._info* %26) #5
  %27 = load i8, i8* %path.0413, align 1, !tbaa !2
  %cmp55 = icmp eq i8 %27, 32
  br i1 %cmp55, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end51
  store i8 91, i8* %path.0413, align 1, !tbaa !2
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.57, i64 0, i64 0), i8* nonnull %path.0413)
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end51
  %29 = load i32, i32* @colorize, align 4, !tbaa !2
  %tobool61 = icmp eq i32 %29, 0
  br i1 %tobool61, label %if.end74, label %if.then62

if.then62:                                        ; preds = %if.end60
  %30 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %lnk = getelementptr inbounds %struct._info, %struct._info* %30, i64 0, i32 1
  %31 = load i8*, i8** %lnk, align 8, !tbaa !35
  %tobool63 = icmp ne i8* %31, null
  %32 = load i32, i32* @linktargetcolor, align 4
  %tobool65 = icmp ne i32 %32, 0
  %or.cond289 = and i1 %tobool63, %tobool65
  %lnkmode = getelementptr inbounds %struct._info, %struct._info* %30, i64 0, i32 8
  %mode = getelementptr inbounds %struct._info, %struct._info* %30, i64 0, i32 7
  %.sink.in = select i1 %or.cond289, i32* %lnkmode, i32* %mode
  %.sink = load i32, i32* %.sink.in, align 4, !tbaa !15
  %conv67 = trunc i32 %.sink to i16
  %name = getelementptr inbounds %struct._info, %struct._info* %30, i64 0, i32 0
  %33 = load i8*, i8** %name, align 8, !tbaa !11
  %orphan = getelementptr inbounds %struct._info, %struct._info* %30, i64 0, i32 6
  %34 = load i32, i32* %orphan, align 8, !tbaa !36
  %call68 = call i32 @color(i16 zeroext %conv67, i8* %33, i32 %34, i32 0) #5
  br label %if.end74

if.end74:                                         ; preds = %if.then62, %if.end60
  %colored.1 = phi i32 [ %colored.0414, %if.end60 ], [ %call68, %if.then62 ]
  %35 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool75 = icmp eq i32 %35, 0
  br i1 %tobool75, label %if.else103, label %if.then76

if.then76:                                        ; preds = %if.end74
  %call77 = call i64 @strlen(i8* %d) #13
  %36 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %name78 = getelementptr inbounds %struct._info, %struct._info* %36, i64 0, i32 0
  %37 = load i8*, i8** %name78, align 8, !tbaa !11
  %call79 = call i64 @strlen(i8* %37) #13
  %add80 = add i64 %call79, %call77
  %add81 = add i64 %add80, 2
  %cmp83 = icmp ugt i64 %add81, %pathsize.0415
  br i1 %cmp83, label %if.then85, label %if.end93

if.then85:                                        ; preds = %if.then76
  %add90 = add i64 %add80, 1024
  %call92 = call i8* @xrealloc(i8* nonnull %path.0413, i64 %add90) #5
  %.pre420 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %name100.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre420, i64 0, i32 0
  %.pre421 = load i8*, i8** %name100.phi.trans.insert, align 8, !tbaa !11
  br label %if.end93

if.end93:                                         ; preds = %if.then85, %if.then76
  %38 = phi i8* [ %.pre421, %if.then85 ], [ %37, %if.then76 ]
  %path.1 = phi i8* [ %call92, %if.then85 ], [ %path.0413, %if.then76 ]
  %pathsize.1 = phi i64 [ %add90, %if.then85 ], [ %pathsize.0415, %if.then76 ]
  %call94 = call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.58, i64 0, i64 0)) #13
  %tobool95 = icmp eq i32 %call94, 0
  br i1 %tobool95, label %if.then96, label %if.else99

if.then96:                                        ; preds = %if.end93
  %call98 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.59, i64 0, i64 0), i8* %d, i8* %38) #5
  br label %if.end119

if.else99:                                        ; preds = %if.end93
  %call101 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6.60, i64 0, i64 0), i8* %d, i8* %38) #5
  br label %if.end119

if.else103:                                       ; preds = %if.end74
  %39 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %name104 = getelementptr inbounds %struct._info, %struct._info* %39, i64 0, i32 0
  %40 = load i8*, i8** %name104, align 8, !tbaa !11
  %call105 = call i64 @strlen(i8* %40) #13
  %add106 = add i64 %call105, 1
  %cmp108 = icmp ugt i64 %add106, %pathsize.0415
  br i1 %cmp108, label %if.then110, label %if.end116

if.then110:                                       ; preds = %if.else103
  %add113 = add i64 %call105, 1024
  %call115 = call i8* @xrealloc(i8* nonnull %path.0413, i64 %add113) #5
  %.pre422 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %name117.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre422, i64 0, i32 0
  %.pre423 = load i8*, i8** %name117.phi.trans.insert, align 8, !tbaa !11
  br label %if.end116

if.end116:                                        ; preds = %if.then110, %if.else103
  %41 = phi i8* [ %.pre423, %if.then110 ], [ %40, %if.else103 ]
  %path.2 = phi i8* [ %call115, %if.then110 ], [ %path.0413, %if.else103 ]
  %pathsize.2 = phi i64 [ %add113, %if.then110 ], [ %pathsize.0415, %if.else103 ]
  %strlen = call i64 @strlen(i8* %41)
  %leninc = add i64 %strlen, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %path.2, i8* %41, i64 %leninc, i32 1, i1 false)
  br label %if.end119

if.end119:                                        ; preds = %if.then96, %if.else99, %if.end116
  %path.3 = phi i8* [ %path.1, %if.else99 ], [ %path.1, %if.then96 ], [ %path.2, %if.end116 ]
  %pathsize.3 = phi i64 [ %pathsize.1, %if.else99 ], [ %pathsize.1, %if.then96 ], [ %pathsize.2, %if.end116 ]
  call void @printit(i8* %path.3) #5
  %tobool120 = icmp eq i32 %colored.1, 0
  br i1 %tobool120, label %if.end123, label %if.then121

if.then121:                                       ; preds = %if.end119
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %43 = load i8*, i8** @endcode, align 8, !tbaa !5
  %fputs405 = call i32 @fputs(i8* %43, %struct._IO_FILE* %42)
  br label %if.end123

if.end123:                                        ; preds = %if.end119, %if.then121
  %44 = load i32, i32* @Fflag, align 4, !tbaa !2
  %tobool124 = icmp eq i32 %44, 0
  br i1 %tobool124, label %if.end136, label %land.lhs.true125

land.lhs.true125:                                 ; preds = %if.end123
  %45 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %lnk126 = getelementptr inbounds %struct._info, %struct._info* %45, i64 0, i32 1
  %46 = load i8*, i8** %lnk126, align 8, !tbaa !35
  %tobool127 = icmp eq i8* %46, null
  br i1 %tobool127, label %if.then128, label %if.end136

if.then128:                                       ; preds = %land.lhs.true125
  %mode129 = getelementptr inbounds %struct._info, %struct._info* %45, i64 0, i32 7
  %47 = load i32, i32* %mode129, align 4, !tbaa !30
  %call130 = call signext i8 @Ftype(i32 %47) #5
  %tobool132 = icmp eq i8 %call130, 0
  br i1 %tobool132, label %if.end136, label %if.then133

if.then133:                                       ; preds = %if.then128
  %conv131 = sext i8 %call130 to i32
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call134 = call i32 @fputc(i32 %conv131, %struct._IO_FILE* %48)
  br label %if.end136

if.end136:                                        ; preds = %if.then128, %land.lhs.true125, %if.end123, %if.then133
  %49 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %lnk137 = getelementptr inbounds %struct._info, %struct._info* %49, i64 0, i32 1
  %50 = load i8*, i8** %lnk137, align 8, !tbaa !35
  %tobool138 = icmp eq i8* %50, null
  br i1 %tobool138, label %if.end164, label %if.then139

if.then139:                                       ; preds = %if.end136
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %52 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.61, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %51)
  %53 = load i32, i32* @colorize, align 4, !tbaa !2
  %tobool141 = icmp eq i32 %53, 0
  br i1 %tobool141, label %if.end148, label %if.then142

if.then142:                                       ; preds = %if.then139
  %54 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %lnkmode143 = getelementptr inbounds %struct._info, %struct._info* %54, i64 0, i32 8
  %55 = load i32, i32* %lnkmode143, align 8, !tbaa !43
  %conv144 = trunc i32 %55 to i16
  %lnk145 = getelementptr inbounds %struct._info, %struct._info* %54, i64 0, i32 1
  %56 = load i8*, i8** %lnk145, align 8, !tbaa !35
  %orphan146 = getelementptr inbounds %struct._info, %struct._info* %54, i64 0, i32 6
  %57 = load i32, i32* %orphan146, align 8, !tbaa !36
  %call147 = call i32 @color(i16 zeroext %conv144, i8* %56, i32 %57, i32 1) #5
  br label %if.end148

if.end148:                                        ; preds = %if.then139, %if.then142
  %colored.2 = phi i32 [ %call147, %if.then142 ], [ %colored.1, %if.then139 ]
  %58 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %lnk149 = getelementptr inbounds %struct._info, %struct._info* %58, i64 0, i32 1
  %59 = load i8*, i8** %lnk149, align 8, !tbaa !35
  call void @printit(i8* %59) #5
  %tobool150 = icmp eq i32 %colored.2, 0
  br i1 %tobool150, label %if.end153, label %if.then151

if.then151:                                       ; preds = %if.end148
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %61 = load i8*, i8** @endcode, align 8, !tbaa !5
  %fputs = call i32 @fputs(i8* %61, %struct._IO_FILE* %60)
  br label %if.end153

if.end153:                                        ; preds = %if.end148, %if.then151
  %62 = load i32, i32* @Fflag, align 4, !tbaa !2
  %tobool154 = icmp eq i32 %62, 0
  br i1 %tobool154, label %if.end164, label %if.then155

if.then155:                                       ; preds = %if.end153
  %63 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %lnkmode156 = getelementptr inbounds %struct._info, %struct._info* %63, i64 0, i32 8
  %64 = load i32, i32* %lnkmode156, align 8, !tbaa !43
  %call157 = call signext i8 @Ftype(i32 %64) #5
  %tobool159 = icmp eq i8 %call157, 0
  br i1 %tobool159, label %if.end164, label %if.then160

if.then160:                                       ; preds = %if.then155
  %conv158 = sext i8 %call157 to i32
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call161 = call i32 @fputc(i32 %conv158, %struct._IO_FILE* %65)
  br label %if.end164

if.end164:                                        ; preds = %if.then155, %if.end153, %if.end136, %if.then160
  %colored.3 = phi i32 [ %colored.2, %if.then160 ], [ %colored.2, %if.then155 ], [ %colored.2, %if.end153 ], [ %colored.1, %if.end136 ]
  %66 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %isdir = getelementptr inbounds %struct._info, %struct._info* %66, i64 0, i32 2
  %67 = load i32, i32* %isdir, align 8, !tbaa !7
  %tobool165 = icmp eq i32 %67, 0
  br i1 %tobool165, label %if.end265, label %if.then166

if.then166:                                       ; preds = %if.end164
  %lnk167 = getelementptr inbounds %struct._info, %struct._info* %66, i64 0, i32 1
  %68 = load i8*, i8** %lnk167, align 8, !tbaa !35
  %tobool168 = icmp eq i8* %68, null
  br i1 %tobool168, label %if.else224, label %if.then169

if.then169:                                       ; preds = %if.then166
  %69 = load i32, i32* @lflag, align 4, !tbaa !2
  %tobool170 = icmp eq i32 %69, 0
  br i1 %tobool170, label %if.end265, label %land.lhs.true171

land.lhs.true171:                                 ; preds = %if.then169
  %70 = load i32, i32* @xdev, align 4, !tbaa !2
  %tobool172 = icmp eq i32 %70, 0
  %dev178.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %66, i64 0, i32 15
  %.pre424 = load i64, i64* %dev178.phi.trans.insert, align 8, !tbaa !44
  br i1 %tobool172, label %if.then177, label %land.lhs.true173

land.lhs.true173:                                 ; preds = %land.lhs.true171
  %cmp175 = icmp eq i64 %dev.addr.0, %.pre424
  br i1 %cmp175, label %if.then177, label %if.end265

if.then177:                                       ; preds = %land.lhs.true171, %land.lhs.true173
  %71 = phi i64 [ %dev.addr.0, %land.lhs.true173 ], [ %.pre424, %land.lhs.true171 ]
  %inode = getelementptr inbounds %struct._info, %struct._info* %66, i64 0, i32 16
  %72 = load i64, i64* %inode, align 8, !tbaa !45
  %call179 = call i32 @findino(i64 %72, i64 %71) #5
  %tobool180 = icmp eq i32 %call179, 0
  br i1 %tobool180, label %if.else183, label %if.then181

if.then181:                                       ; preds = %if.then177
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %74 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.62, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %73)
  br label %if.end265

if.else183:                                       ; preds = %if.then177
  %75 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %inode184 = getelementptr inbounds %struct._info, %struct._info* %75, i64 0, i32 16
  %76 = load i64, i64* %inode184, align 8, !tbaa !45
  %dev185 = getelementptr inbounds %struct._info, %struct._info* %75, i64 0, i32 15
  %77 = load i64, i64* %dev185, align 8, !tbaa !44
  call void @saveino(i64 %76, i64 %77) #5
  %78 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %lnk186 = getelementptr inbounds %struct._info, %struct._info* %78, i64 0, i32 1
  %79 = load i8*, i8** %lnk186, align 8, !tbaa !35
  %80 = load i8, i8* %79, align 1, !tbaa !2
  %cmp188 = icmp eq i8 %80, 47
  br i1 %cmp188, label %if.then190, label %if.else193

if.then190:                                       ; preds = %if.else183
  %81 = load void (i8*, i32*, i32*, i64, i64)*, void (i8*, i32*, i32*, i64, i64)** bitcast (i64 (i8*, i32*, i32*, i64, i64)** @listdir to void (i8*, i32*, i32*, i64, i64)**), align 8, !tbaa !5
  call void %81(i8* %79, i32* %dt, i32* %ft, i64 %add259, i64 %dev.addr.0) #5
  br label %if.end265

if.else193:                                       ; preds = %if.else183
  %call194 = call i64 @strlen(i8* %d) #13
  %call196 = call i64 @strlen(i8* %79) #13
  %add197 = add i64 %call194, 2
  %add198 = add i64 %add197, %call196
  %cmp199 = icmp ugt i64 %add198, %pathsize.3
  br i1 %cmp199, label %if.then201, label %if.end208

if.then201:                                       ; preds = %if.else193
  %name203 = getelementptr inbounds %struct._info, %struct._info* %78, i64 0, i32 0
  %82 = load i8*, i8** %name203, align 8, !tbaa !11
  %call204 = call i64 @strlen(i8* %82) #13
  %add205 = add i64 %call194, 1024
  %add206 = add i64 %add205, %call204
  %call207 = call i8* @xrealloc(i8* %path.3, i64 %add206) #5
  br label %if.end208

if.end208:                                        ; preds = %if.then201, %if.else193
  %path.4 = phi i8* [ %call207, %if.then201 ], [ %path.3, %if.else193 ]
  %pathsize.4 = phi i64 [ %add206, %if.then201 ], [ %pathsize.3, %if.else193 ]
  %83 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool209 = icmp eq i32 %83, 0
  br i1 %tobool209, label %if.else216, label %land.lhs.true210

land.lhs.true210:                                 ; preds = %if.end208
  %call211 = call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.58, i64 0, i64 0)) #13
  %tobool212 = icmp eq i32 %call211, 0
  br i1 %tobool212, label %if.then213, label %if.else216

if.then213:                                       ; preds = %land.lhs.true210
  %84 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %lnk214 = getelementptr inbounds %struct._info, %struct._info* %84, i64 0, i32 1
  %85 = load i8*, i8** %lnk214, align 8, !tbaa !35
  %call215 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.59, i64 0, i64 0), i8* %d, i8* %85) #5
  br label %if.end219

if.else216:                                       ; preds = %land.lhs.true210, %if.end208
  %86 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %lnk217 = getelementptr inbounds %struct._info, %struct._info* %86, i64 0, i32 1
  %87 = load i8*, i8** %lnk217, align 8, !tbaa !35
  %call218 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6.60, i64 0, i64 0), i8* %d, i8* %87) #5
  br label %if.end219

if.end219:                                        ; preds = %if.else216, %if.then213
  %88 = load void (i8*, i32*, i32*, i64, i64)*, void (i8*, i32*, i32*, i64, i64)** bitcast (i64 (i8*, i32*, i32*, i64, i64)** @listdir to void (i8*, i32*, i32*, i64, i64)**), align 8, !tbaa !5
  call void %88(i8* %path.4, i32* %dt, i32* %ft, i64 %add259, i64 %dev.addr.0) #5
  br label %if.end265

if.else224:                                       ; preds = %if.then166
  %89 = load i32, i32* @xdev, align 4, !tbaa !2
  %tobool225 = icmp eq i32 %89, 0
  br i1 %tobool225, label %if.then230, label %land.lhs.true226

land.lhs.true226:                                 ; preds = %if.else224
  %dev227 = getelementptr inbounds %struct._info, %struct._info* %66, i64 0, i32 15
  %90 = load i64, i64* %dev227, align 8, !tbaa !44
  %cmp228 = icmp eq i64 %dev.addr.0, %90
  br i1 %cmp228, label %if.then230, label %if.end265

if.then230:                                       ; preds = %land.lhs.true226, %if.else224
  %call231 = call i64 @strlen(i8* %d) #13
  %name232 = getelementptr inbounds %struct._info, %struct._info* %66, i64 0, i32 0
  %91 = load i8*, i8** %name232, align 8, !tbaa !11
  %call233 = call i64 @strlen(i8* %91) #13
  %add234 = add i64 %call233, %call231
  %add235 = add i64 %add234, 2
  %cmp236 = icmp ugt i64 %add235, %pathsize.3
  br i1 %cmp236, label %if.then238, label %if.end245

if.then238:                                       ; preds = %if.then230
  %add243 = add i64 %add234, 1024
  %call244 = call i8* @xrealloc(i8* %path.3, i64 %add243) #5
  br label %if.end245

if.end245:                                        ; preds = %if.then238, %if.then230
  %path.6 = phi i8* [ %call244, %if.then238 ], [ %path.3, %if.then230 ]
  %pathsize.6 = phi i64 [ %add243, %if.then238 ], [ %pathsize.3, %if.then230 ]
  %92 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool246 = icmp eq i32 %92, 0
  br i1 %tobool246, label %if.else253, label %land.lhs.true247

land.lhs.true247:                                 ; preds = %if.end245
  %call248 = call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.58, i64 0, i64 0)) #13
  %tobool249 = icmp eq i32 %call248, 0
  br i1 %tobool249, label %if.then250, label %if.else253

if.then250:                                       ; preds = %land.lhs.true247
  %93 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %name251 = getelementptr inbounds %struct._info, %struct._info* %93, i64 0, i32 0
  %94 = load i8*, i8** %name251, align 8, !tbaa !11
  %call252 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.59, i64 0, i64 0), i8* %d, i8* %94) #5
  br label %if.end256

if.else253:                                       ; preds = %land.lhs.true247, %if.end245
  %95 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %name254 = getelementptr inbounds %struct._info, %struct._info* %95, i64 0, i32 0
  %96 = load i8*, i8** %name254, align 8, !tbaa !11
  %call255 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6.60, i64 0, i64 0), i8* %d, i8* %96) #5
  br label %if.end256

if.end256:                                        ; preds = %if.else253, %if.then250
  %97 = load %struct._info*, %struct._info** %dir.0416, align 8, !tbaa !5
  %inode257 = getelementptr inbounds %struct._info, %struct._info* %97, i64 0, i32 16
  %98 = load i64, i64* %inode257, align 8, !tbaa !45
  %dev258 = getelementptr inbounds %struct._info, %struct._info* %97, i64 0, i32 15
  %99 = load i64, i64* %dev258, align 8, !tbaa !44
  call void @saveino(i64 %98, i64 %99) #5
  %100 = load void (i8*, i32*, i32*, i64, i64)*, void (i8*, i32*, i32*, i64, i64)** bitcast (i64 (i8*, i32*, i32*, i64, i64)** @listdir to void (i8*, i32*, i32*, i64, i64)**), align 8, !tbaa !5
  call void %100(i8* %path.6, i32* %dt, i32* %ft, i64 %add259, i64 %dev.addr.0) #5
  br label %if.end265

if.end265:                                        ; preds = %if.end164, %if.then181, %if.end256, %land.lhs.true226, %if.then169, %land.lhs.true173, %if.end219, %if.then190
  %path.8 = phi i8* [ %path.3, %land.lhs.true173 ], [ %path.3, %if.then181 ], [ %path.3, %if.then169 ], [ %path.3, %land.lhs.true226 ], [ %path.6, %if.end256 ], [ %path.3, %if.then190 ], [ %path.4, %if.end219 ], [ %path.3, %if.end164 ]
  %nlf.2 = phi i32 [ 0, %land.lhs.true173 ], [ 0, %if.then181 ], [ 0, %if.then169 ], [ 0, %land.lhs.true226 ], [ 1, %if.end256 ], [ 1, %if.then190 ], [ 1, %if.end219 ], [ 0, %if.end164 ]
  %pathsize.8 = phi i64 [ %pathsize.3, %land.lhs.true173 ], [ %pathsize.3, %if.then181 ], [ %pathsize.3, %if.then169 ], [ %pathsize.3, %land.lhs.true226 ], [ %pathsize.6, %if.end256 ], [ %pathsize.3, %if.then190 ], [ %pathsize.4, %if.end219 ], [ %pathsize.3, %if.end164 ]
  %.sink291 = phi i32* [ %dt, %land.lhs.true173 ], [ %dt, %if.then181 ], [ %dt, %if.then169 ], [ %dt, %land.lhs.true226 ], [ %dt, %if.end256 ], [ %dt, %if.then190 ], [ %dt, %if.end219 ], [ %ft, %if.end164 ]
  %101 = load i32, i32* %.sink291, align 4, !tbaa !15
  %add264 = add nsw i32 %101, 1
  store i32 %add264, i32* %.sink291, align 4, !tbaa !15
  %add.ptr266 = getelementptr inbounds %struct._info*, %struct._info** %dir.0416, i64 1
  %102 = load %struct._info*, %struct._info** %add.ptr266, align 8, !tbaa !5
  %tobool267 = icmp eq %struct._info* %102, null
  br i1 %tobool267, label %if.end273, label %land.lhs.true268

land.lhs.true268:                                 ; preds = %if.end265
  %add.ptr269 = getelementptr inbounds %struct._info*, %struct._info** %dir.0416, i64 2
  %103 = load %struct._info*, %struct._info** %add.ptr269, align 8, !tbaa !5
  %tobool270 = icmp eq %struct._info* %103, null
  br i1 %tobool270, label %if.then271, label %if.end273

if.then271:                                       ; preds = %land.lhs.true268
  %104 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx272 = getelementptr inbounds i32, i32* %104, i64 %lev
  store i32 2, i32* %arrayidx272, align 4, !tbaa !15
  br label %if.end273

if.end273:                                        ; preds = %land.lhs.true268, %if.end265, %if.then271
  %tobool274 = icmp eq i32 %nlf.2, 0
  br i1 %tobool274, label %if.else276, label %if.end278

if.else276:                                       ; preds = %if.end273
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %fputc408 = call i32 @fputc(i32 10, %struct._IO_FILE* %105)
  %.pre425 = load %struct._info*, %struct._info** %add.ptr266, align 8, !tbaa !5
  br label %if.end278

if.end278:                                        ; preds = %if.end273, %if.else276
  %106 = phi %struct._info* [ %102, %if.end273 ], [ %.pre425, %if.else276 ]
  %tobool47 = icmp eq %struct._info* %106, null
  br i1 %tobool47, label %while.end, label %while.body

while.end:                                        ; preds = %if.end278, %if.end39
  %path.0.lcssa = phi i8* [ %call46, %if.end39 ], [ %path.8, %if.end278 ]
  %107 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx279 = getelementptr inbounds i32, i32* %107, i64 %lev
  store i32 0, i32* %arrayidx279, align 4, !tbaa !15
  call void @free(i8* %path.0.lcssa) #5
  call void @free_dir(%struct._info** %call9) #5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then25, %if.then17, %if.then13, %if.then
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #5
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @unix_rlistdir(i8* %d, i32* nocapture %dt, i32* nocapture %ft, i64 %lev, i64 %dev) #2 {
entry:
  %size = alloca i64, align 8
  %err = alloca i8*, align 8
  %0 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i64 0, i64* %size, align 8, !tbaa !29
  %1 = bitcast i8** %err to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %call = call %struct._info** @getfulltree(i8* %d, i64 %lev, i64 %dev, i64* nonnull %size, i8** nonnull %err) #5
  %2 = load i8*, i8** bitcast (i32** @dirs to i8**), align 8, !tbaa !5
  %3 = load i32, i32* @maxdirs, align 4, !tbaa !15
  %conv = sext i32 %3 to i64
  %mul = shl nsw i64 %conv, 2
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %mul, i32 4, i1 false)
  call void @r_listdir(%struct._info** %call, i8* %d, i32* %dt, i32* %ft, i64 %lev)
  %4 = load i64, i64* %size, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define void @r_listdir(%struct._info** %dir, i8* %d, i32* nocapture %dt, i32* nocapture %ft, i64 %lev) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq %struct._info** %dir, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %lev
  store i32 1, i32* %arrayidx, align 4, !tbaa !15
  %add.ptr = getelementptr inbounds %struct._info*, %struct._info** %dir, i64 1
  %1 = load %struct._info*, %struct._info** %add.ptr, align 8, !tbaa !5
  %tobool = icmp eq %struct._info* %1, null
  %. = select i1 %tobool, i32 2, i32 1
  store i32 %., i32* %arrayidx, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %2)
  %call4 = tail call noalias i8* @malloc(i64 4096) #5
  %3 = load %struct._info*, %struct._info** %dir, align 8, !tbaa !5
  %tobool5268 = icmp eq %struct._info* %3, null
  br i1 %tobool5268, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %conv = trunc i64 %lev to i32
  %add157 = add i64 %lev, 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end179
  %4 = phi %struct._info* [ %3, %while.body.lr.ph ], [ %66, %if.end179 ]
  %colored.0273 = phi i32 [ 0, %while.body.lr.ph ], [ %colored.3, %if.end179 ]
  %dir.addr.0271 = phi %struct._info** [ %dir, %while.body.lr.ph ], [ %add.ptr167, %if.end179 ]
  %pathsize.0270 = phi i64 [ 4096, %while.body.lr.ph ], [ %pathsize.6, %if.end179 ]
  %path.0269 = phi i8* [ %call4, %while.body.lr.ph ], [ %path.6, %if.end179 ]
  %5 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool6 = icmp eq i32 %5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %while.body
  tail call void @indent(i32 %conv) #5
  %.pre = load %struct._info*, %struct._info** %dir.addr.0271, align 8, !tbaa !5
  br label %if.end8

if.end8:                                          ; preds = %while.body, %if.then7
  %6 = phi %struct._info* [ %4, %while.body ], [ %.pre, %if.then7 ]
  %call9 = tail call i8* @fillinfo(i8* %path.0269, %struct._info* %6) #5
  %7 = load i8, i8* %path.0269, align 1, !tbaa !2
  %cmp12 = icmp eq i8 %7, 32
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end8
  store i8 91, i8* %path.0269, align 1, !tbaa !2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.57, i64 0, i64 0), i8* nonnull %path.0269)
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end8
  %9 = load i32, i32* @colorize, align 4, !tbaa !2
  %tobool18 = icmp eq i32 %9, 0
  br i1 %tobool18, label %if.end30, label %if.then19

if.then19:                                        ; preds = %if.end17
  %10 = load %struct._info*, %struct._info** %dir.addr.0271, align 8, !tbaa !5
  %lnk = getelementptr inbounds %struct._info, %struct._info* %10, i64 0, i32 1
  %11 = load i8*, i8** %lnk, align 8, !tbaa !35
  %tobool20 = icmp ne i8* %11, null
  %12 = load i32, i32* @linktargetcolor, align 4
  %tobool21 = icmp ne i32 %12, 0
  %or.cond = and i1 %tobool20, %tobool21
  %lnkmode = getelementptr inbounds %struct._info, %struct._info* %10, i64 0, i32 8
  %mode = getelementptr inbounds %struct._info, %struct._info* %10, i64 0, i32 7
  %.sink.in = select i1 %or.cond, i32* %lnkmode, i32* %mode
  %.sink = load i32, i32* %.sink.in, align 4, !tbaa !15
  %conv23 = trunc i32 %.sink to i16
  %name = getelementptr inbounds %struct._info, %struct._info* %10, i64 0, i32 0
  %13 = load i8*, i8** %name, align 8, !tbaa !11
  %orphan = getelementptr inbounds %struct._info, %struct._info* %10, i64 0, i32 6
  %14 = load i32, i32* %orphan, align 8, !tbaa !36
  %call24 = tail call i32 @color(i16 zeroext %conv23, i8* %13, i32 %14, i32 0) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then19, %if.end17
  %colored.1 = phi i32 [ %colored.0273, %if.end17 ], [ %call24, %if.then19 ]
  %15 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool31 = icmp eq i32 %15, 0
  br i1 %tobool31, label %if.else57, label %if.then32

if.then32:                                        ; preds = %if.end30
  %call33 = tail call i64 @strlen(i8* %d) #13
  %16 = load %struct._info*, %struct._info** %dir.addr.0271, align 8, !tbaa !5
  %name34 = getelementptr inbounds %struct._info, %struct._info* %16, i64 0, i32 0
  %17 = load i8*, i8** %name34, align 8, !tbaa !11
  %call35 = tail call i64 @strlen(i8* %17) #13
  %add = add i64 %call35, %call33
  %add36 = add i64 %add, 2
  %cmp37 = icmp ugt i64 %add36, %pathsize.0270
  br i1 %cmp37, label %if.then39, label %if.end47

if.then39:                                        ; preds = %if.then32
  %add44 = add i64 %add, 1024
  %call46 = tail call i8* @xrealloc(i8* nonnull %path.0269, i64 %add44) #5
  %.pre274 = load %struct._info*, %struct._info** %dir.addr.0271, align 8, !tbaa !5
  %name54.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre274, i64 0, i32 0
  %.pre275 = load i8*, i8** %name54.phi.trans.insert, align 8, !tbaa !11
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %if.then32
  %18 = phi i8* [ %.pre275, %if.then39 ], [ %17, %if.then32 ]
  %path.1 = phi i8* [ %call46, %if.then39 ], [ %path.0269, %if.then32 ]
  %pathsize.1 = phi i64 [ %add44, %if.then39 ], [ %pathsize.0270, %if.then32 ]
  %call48 = tail call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.58, i64 0, i64 0)) #13
  %tobool49 = icmp eq i32 %call48, 0
  br i1 %tobool49, label %if.then50, label %if.else53

if.then50:                                        ; preds = %if.end47
  %call52 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.59, i64 0, i64 0), i8* %d, i8* %18) #5
  br label %if.end73

if.else53:                                        ; preds = %if.end47
  %call55 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6.60, i64 0, i64 0), i8* %d, i8* %18) #5
  br label %if.end73

if.else57:                                        ; preds = %if.end30
  %19 = load %struct._info*, %struct._info** %dir.addr.0271, align 8, !tbaa !5
  %name58 = getelementptr inbounds %struct._info, %struct._info* %19, i64 0, i32 0
  %20 = load i8*, i8** %name58, align 8, !tbaa !11
  %call59 = tail call i64 @strlen(i8* %20) #13
  %add60 = add i64 %call59, 1
  %cmp62 = icmp ugt i64 %add60, %pathsize.0270
  br i1 %cmp62, label %if.then64, label %if.end70

if.then64:                                        ; preds = %if.else57
  %add67 = add i64 %call59, 1024
  %call69 = tail call i8* @xrealloc(i8* nonnull %path.0269, i64 %add67) #5
  %.pre276 = load %struct._info*, %struct._info** %dir.addr.0271, align 8, !tbaa !5
  %name71.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre276, i64 0, i32 0
  %.pre277 = load i8*, i8** %name71.phi.trans.insert, align 8, !tbaa !11
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %if.else57
  %21 = phi i8* [ %.pre277, %if.then64 ], [ %20, %if.else57 ]
  %path.2 = phi i8* [ %call69, %if.then64 ], [ %path.0269, %if.else57 ]
  %pathsize.2 = phi i64 [ %add67, %if.then64 ], [ %pathsize.0270, %if.else57 ]
  %strlen = tail call i64 @strlen(i8* %21)
  %leninc = add i64 %strlen, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %path.2, i8* %21, i64 %leninc, i32 1, i1 false)
  br label %if.end73

if.end73:                                         ; preds = %if.then50, %if.else53, %if.end70
  %path.3 = phi i8* [ %path.1, %if.else53 ], [ %path.1, %if.then50 ], [ %path.2, %if.end70 ]
  %pathsize.3 = phi i64 [ %pathsize.1, %if.else53 ], [ %pathsize.1, %if.then50 ], [ %pathsize.2, %if.end70 ]
  tail call void @printit(i8* %path.3) #5
  %tobool74 = icmp eq i32 %colored.1, 0
  br i1 %tobool74, label %if.end77, label %if.then75

if.then75:                                        ; preds = %if.end73
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %23 = load i8*, i8** @endcode, align 8, !tbaa !5
  %fputs263 = tail call i32 @fputs(i8* %23, %struct._IO_FILE* %22)
  br label %if.end77

if.end77:                                         ; preds = %if.end73, %if.then75
  %24 = load i32, i32* @Fflag, align 4, !tbaa !2
  %tobool78 = icmp eq i32 %24, 0
  br i1 %tobool78, label %if.end90, label %land.lhs.true79

land.lhs.true79:                                  ; preds = %if.end77
  %25 = load %struct._info*, %struct._info** %dir.addr.0271, align 8, !tbaa !5
  %lnk80 = getelementptr inbounds %struct._info, %struct._info* %25, i64 0, i32 1
  %26 = load i8*, i8** %lnk80, align 8, !tbaa !35
  %tobool81 = icmp eq i8* %26, null
  br i1 %tobool81, label %if.then82, label %if.end90

if.then82:                                        ; preds = %land.lhs.true79
  %mode83 = getelementptr inbounds %struct._info, %struct._info* %25, i64 0, i32 7
  %27 = load i32, i32* %mode83, align 4, !tbaa !30
  %call84 = tail call signext i8 @Ftype(i32 %27) #5
  %tobool86 = icmp eq i8 %call84, 0
  br i1 %tobool86, label %if.end90, label %if.then87

if.then87:                                        ; preds = %if.then82
  %conv85 = sext i8 %call84 to i32
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call88 = tail call i32 @fputc(i32 %conv85, %struct._IO_FILE* %28)
  br label %if.end90

if.end90:                                         ; preds = %if.then82, %land.lhs.true79, %if.end77, %if.then87
  %29 = load %struct._info*, %struct._info** %dir.addr.0271, align 8, !tbaa !5
  %lnk91 = getelementptr inbounds %struct._info, %struct._info* %29, i64 0, i32 1
  %30 = load i8*, i8** %lnk91, align 8, !tbaa !35
  %tobool92 = icmp eq i8* %30, null
  br i1 %tobool92, label %if.end118, label %if.then93

if.then93:                                        ; preds = %if.end90
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.61, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %31)
  %33 = load i32, i32* @colorize, align 4, !tbaa !2
  %tobool95 = icmp eq i32 %33, 0
  br i1 %tobool95, label %if.end102, label %if.then96

if.then96:                                        ; preds = %if.then93
  %34 = load %struct._info*, %struct._info** %dir.addr.0271, align 8, !tbaa !5
  %lnkmode97 = getelementptr inbounds %struct._info, %struct._info* %34, i64 0, i32 8
  %35 = load i32, i32* %lnkmode97, align 8, !tbaa !43
  %conv98 = trunc i32 %35 to i16
  %lnk99 = getelementptr inbounds %struct._info, %struct._info* %34, i64 0, i32 1
  %36 = load i8*, i8** %lnk99, align 8, !tbaa !35
  %orphan100 = getelementptr inbounds %struct._info, %struct._info* %34, i64 0, i32 6
  %37 = load i32, i32* %orphan100, align 8, !tbaa !36
  %call101 = tail call i32 @color(i16 zeroext %conv98, i8* %36, i32 %37, i32 1) #5
  br label %if.end102

if.end102:                                        ; preds = %if.then93, %if.then96
  %colored.2 = phi i32 [ %call101, %if.then96 ], [ %colored.1, %if.then93 ]
  %38 = load %struct._info*, %struct._info** %dir.addr.0271, align 8, !tbaa !5
  %lnk103 = getelementptr inbounds %struct._info, %struct._info* %38, i64 0, i32 1
  %39 = load i8*, i8** %lnk103, align 8, !tbaa !35
  tail call void @printit(i8* %39) #5
  %tobool104 = icmp eq i32 %colored.2, 0
  br i1 %tobool104, label %if.end107, label %if.then105

if.then105:                                       ; preds = %if.end102
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %41 = load i8*, i8** @endcode, align 8, !tbaa !5
  %fputs = tail call i32 @fputs(i8* %41, %struct._IO_FILE* %40)
  br label %if.end107

if.end107:                                        ; preds = %if.end102, %if.then105
  %42 = load i32, i32* @Fflag, align 4, !tbaa !2
  %tobool108 = icmp eq i32 %42, 0
  br i1 %tobool108, label %if.end118, label %if.then109

if.then109:                                       ; preds = %if.end107
  %43 = load %struct._info*, %struct._info** %dir.addr.0271, align 8, !tbaa !5
  %lnkmode110 = getelementptr inbounds %struct._info, %struct._info* %43, i64 0, i32 8
  %44 = load i32, i32* %lnkmode110, align 8, !tbaa !43
  %call111 = tail call signext i8 @Ftype(i32 %44) #5
  %tobool113 = icmp eq i8 %call111, 0
  br i1 %tobool113, label %if.end118, label %if.then114

if.then114:                                       ; preds = %if.then109
  %conv112 = sext i8 %call111 to i32
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call115 = tail call i32 @fputc(i32 %conv112, %struct._IO_FILE* %45)
  br label %if.end118

if.end118:                                        ; preds = %if.then109, %if.end107, %if.end90, %if.then114
  %colored.3 = phi i32 [ %colored.2, %if.then114 ], [ %colored.2, %if.then109 ], [ %colored.2, %if.end107 ], [ %colored.1, %if.end90 ]
  %46 = load %struct._info*, %struct._info** %dir.addr.0271, align 8, !tbaa !5
  %err = getelementptr inbounds %struct._info, %struct._info* %46, i64 0, i32 17
  %47 = load i8*, i8** %err, align 8, !tbaa !37
  %tobool119 = icmp eq i8* %47, null
  br i1 %tobool119, label %if.end125, label %if.then120

if.then120:                                       ; preds = %if.end118
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call122 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10.65, i64 0, i64 0), i8* nonnull %47)
  %49 = load %struct._info*, %struct._info** %dir.addr.0271, align 8, !tbaa !5
  %err123 = getelementptr inbounds %struct._info, %struct._info* %49, i64 0, i32 17
  %50 = load i8*, i8** %err123, align 8, !tbaa !37
  tail call void @free(i8* %50) #5
  %51 = load %struct._info*, %struct._info** %dir.addr.0271, align 8, !tbaa !5
  %err124 = getelementptr inbounds %struct._info, %struct._info* %51, i64 0, i32 17
  store i8* null, i8** %err124, align 8, !tbaa !37
  %.pre278 = load %struct._info*, %struct._info** %dir.addr.0271, align 8, !tbaa !5
  br label %if.end125

if.end125:                                        ; preds = %if.end118, %if.then120
  %52 = phi %struct._info* [ %46, %if.end118 ], [ %.pre278, %if.then120 ]
  %child = getelementptr inbounds %struct._info, %struct._info* %52, i64 0, i32 18
  %53 = load %struct._info**, %struct._info*** %child, align 8, !tbaa !38
  %tobool126 = icmp eq %struct._info** %53, null
  br i1 %tobool126, label %if.else159, label %if.then127

if.then127:                                       ; preds = %if.end125
  %54 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool128 = icmp eq i32 %54, 0
  br i1 %tobool128, label %if.end154, label %if.then129

if.then129:                                       ; preds = %if.then127
  %call130 = tail call i64 @strlen(i8* %d) #13
  %name131 = getelementptr inbounds %struct._info, %struct._info* %52, i64 0, i32 0
  %55 = load i8*, i8** %name131, align 8, !tbaa !11
  %call132 = tail call i64 @strlen(i8* %55) #13
  %add133 = add i64 %call132, %call130
  %add134 = add i64 %add133, 2
  %cmp135 = icmp ugt i64 %add134, %pathsize.3
  br i1 %cmp135, label %if.then137, label %if.end144

if.then137:                                       ; preds = %if.then129
  %add142 = add i64 %add133, 1024
  %call143 = tail call i8* @xrealloc(i8* %path.3, i64 %add142) #5
  %.pre279 = load %struct._info*, %struct._info** %dir.addr.0271, align 8, !tbaa !5
  %name151.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre279, i64 0, i32 0
  %.pre280 = load i8*, i8** %name151.phi.trans.insert, align 8, !tbaa !11
  br label %if.end144

if.end144:                                        ; preds = %if.then137, %if.then129
  %56 = phi i8* [ %.pre280, %if.then137 ], [ %55, %if.then129 ]
  %path.4 = phi i8* [ %call143, %if.then137 ], [ %path.3, %if.then129 ]
  %pathsize.4 = phi i64 [ %add142, %if.then137 ], [ %pathsize.3, %if.then129 ]
  %call145 = tail call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.58, i64 0, i64 0)) #13
  %tobool146 = icmp eq i32 %call145, 0
  br i1 %tobool146, label %if.then147, label %if.else150

if.then147:                                       ; preds = %if.end144
  %call149 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %path.4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.59, i64 0, i64 0), i8* %d, i8* %56) #5
  br label %if.end154

if.else150:                                       ; preds = %if.end144
  %call152 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %path.4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6.60, i64 0, i64 0), i8* %d, i8* %56) #5
  br label %if.end154

if.end154:                                        ; preds = %if.then127, %if.then147, %if.else150
  %path.5 = phi i8* [ %path.4, %if.else150 ], [ %path.4, %if.then147 ], [ %path.3, %if.then127 ]
  %pathsize.5 = phi i64 [ %pathsize.4, %if.else150 ], [ %pathsize.4, %if.then147 ], [ %pathsize.3, %if.then127 ]
  %57 = load %struct._info*, %struct._info** %dir.addr.0271, align 8, !tbaa !5
  %child155 = getelementptr inbounds %struct._info, %struct._info* %57, i64 0, i32 18
  %58 = load %struct._info**, %struct._info*** %child155, align 8, !tbaa !38
  %59 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool156 = icmp eq i32 %59, 0
  %cond = select i1 %tobool156, i8* null, i8* %path.5
  tail call void @r_listdir(%struct._info** %58, i8* %cond, i32* %dt, i32* %ft, i64 %add157)
  br label %if.end166

if.else159:                                       ; preds = %if.end125
  %isdir = getelementptr inbounds %struct._info, %struct._info* %52, i64 0, i32 2
  %60 = load i32, i32* %isdir, align 8, !tbaa !7
  %tobool160 = icmp eq i32 %60, 0
  %.sink187 = select i1 %tobool160, i32* %ft, i32* %dt
  br label %if.end166

if.end166:                                        ; preds = %if.else159, %if.end154
  %path.6 = phi i8* [ %path.5, %if.end154 ], [ %path.3, %if.else159 ]
  %pathsize.6 = phi i64 [ %pathsize.5, %if.end154 ], [ %pathsize.3, %if.else159 ]
  %nlf.1 = phi i32 [ 1, %if.end154 ], [ 0, %if.else159 ]
  %.sink187.sink188 = phi i32* [ %dt, %if.end154 ], [ %.sink187, %if.else159 ]
  %61 = load i32, i32* %.sink187.sink188, align 4, !tbaa !15
  %add164 = add nsw i32 %61, 1
  store i32 %add164, i32* %.sink187.sink188, align 4, !tbaa !15
  %add.ptr167 = getelementptr inbounds %struct._info*, %struct._info** %dir.addr.0271, i64 1
  %62 = load %struct._info*, %struct._info** %add.ptr167, align 8, !tbaa !5
  %tobool168 = icmp eq %struct._info* %62, null
  br i1 %tobool168, label %if.end174, label %land.lhs.true169

land.lhs.true169:                                 ; preds = %if.end166
  %add.ptr170 = getelementptr inbounds %struct._info*, %struct._info** %dir.addr.0271, i64 2
  %63 = load %struct._info*, %struct._info** %add.ptr170, align 8, !tbaa !5
  %tobool171 = icmp eq %struct._info* %63, null
  br i1 %tobool171, label %if.then172, label %if.end174

if.then172:                                       ; preds = %land.lhs.true169
  %64 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx173 = getelementptr inbounds i32, i32* %64, i64 %lev
  store i32 2, i32* %arrayidx173, align 4, !tbaa !15
  br label %if.end174

if.end174:                                        ; preds = %land.lhs.true169, %if.end166, %if.then172
  %tobool175 = icmp eq i32 %nlf.1, 0
  br i1 %tobool175, label %if.else177, label %if.end179

if.else177:                                       ; preds = %if.end174
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %fputc266 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %65)
  %.pre281 = load %struct._info*, %struct._info** %add.ptr167, align 8, !tbaa !5
  br label %if.end179

if.end179:                                        ; preds = %if.end174, %if.else177
  %66 = phi %struct._info* [ %62, %if.end174 ], [ %.pre281, %if.else177 ]
  %tobool5 = icmp eq %struct._info* %66, null
  br i1 %tobool5, label %while.end, label %while.body

while.end:                                        ; preds = %if.end179, %if.end
  %path.0.lcssa = phi i8* [ %call4, %if.end ], [ %path.6, %if.end179 ]
  %67 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx180 = getelementptr inbounds i32, i32* %67, i64 %lev
  store i32 0, i32* %arrayidx180, align 4, !tbaa !15
  tail call void @free(i8* %path.0.lcssa) #5
  tail call void @free_dir(%struct._info** nonnull %dir) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @emit_html_header(i8* %charset, i8* %title, i8* %version) local_unnamed_addr #2 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %tobool = icmp eq i8* %charset, null
  %cond = select i1 %tobool, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.68, i64 0, i64 0), i8* %charset
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([1690 x i8], [1690 x i8]* @.str.84, i64 0, i64 0), i8* %cond, i8* %version, i8* %title, i8* %title)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @html_listdir(i8* %d, i32* %dt, i32* %ft, i64 %lev, i64 %dev) #2 {
entry:
  %sb = alloca %struct.stat, align 8
  %n = alloca i32, align 4
  %hclr = alloca [20 x i8], align 16
  %0 = bitcast %struct.stat* %sb to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #5
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %hclr, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #5
  %3 = load i32, i32* @Level, align 4, !tbaa !15
  %cmp = icmp sgt i32 %3, -1
  %conv = sext i32 %3 to i64
  %cmp1 = icmp ult i64 %conv, %lev
  %or.cond583 = and i1 %cmp, %cmp1
  br i1 %or.cond583, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.87, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %4)
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i32, i32* @xdev, align 4, !tbaa !2
  %tobool = icmp ne i32 %6, 0
  %cmp4 = icmp eq i64 %lev, 0
  %or.cond = and i1 %cmp4, %tobool
  br i1 %or.cond, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %call.i = call i32 @__xstat(i32 1, i8* nonnull %d, %struct.stat* nonnull %sb) #5
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %sb, i64 0, i32 0
  %7 = load i64, i64* %st_dev, align 8, !tbaa !22
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %dev.addr.0 = phi i64 [ %7, %if.then6 ], [ %dev, %if.end ]
  %call9 = call %struct._info** @read_dir(i8* %d, i32* nonnull %n) #5
  %tobool10 = icmp eq %struct._info** %call9, null
  %8 = load i32, i32* %n, align 4
  %tobool12 = icmp ne i32 %8, 0
  %or.cond417 = and i1 %tobool10, %tobool12
  br i1 %or.cond417, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3.88, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %9)
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  br i1 %tobool12, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end15
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.87, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %11)
  call void @free_dir(%struct._info** %call9) #5
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %13 = load i32, i32* @flimit, align 4, !tbaa !2
  %cmp20 = icmp ne i32 %13, 0
  %cmp23 = icmp ugt i32 %8, %13
  %or.cond584 = and i1 %cmp20, %cmp23
  br i1 %or.cond584, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end19
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4.89, i64 0, i64 0), i32 %8)
  call void @free_dir(%struct._info** %call9) #5
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %15 = load i32 (...)*, i32 (...)** @cmpfunc, align 8, !tbaa !5
  %tobool28 = icmp eq i32 (...)* %15, null
  br i1 %tobool28, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end27
  %16 = bitcast %struct._info** %call9 to i8*
  %conv30 = sext i32 %8 to i64
  %17 = bitcast i32 (...)* %15 to i32 (i8*, i8*)*
  call void @qsort(i8* %16, i64 %conv30, i64 8, i32 (i8*, i8*)* %17) #5
  br label %if.end31

if.end31:                                         ; preds = %if.end27, %if.then29
  %18 = load i32, i32* @maxdirs, align 4, !tbaa !15
  %sub = add nsw i32 %18, -1
  %conv32 = sext i32 %sub to i64
  %cmp33 = icmp ugt i64 %conv32, %lev
  br i1 %cmp33, label %if.end39, label %if.then35

if.then35:                                        ; preds = %if.end31
  %19 = load i8*, i8** bitcast (i32** @dirs to i8**), align 8, !tbaa !5
  %add = add nsw i32 %18, 1024
  store i32 %add, i32* @maxdirs, align 4, !tbaa !15
  %conv36 = sext i32 %add to i64
  %mul = shl nsw i64 %conv36, 2
  %call37 = call i8* @xrealloc(i8* %19, i64 %mul) #5
  %20 = bitcast i8* %call37 to i32*
  store i8* %call37, i8** bitcast (i32** @dirs to i8**), align 8, !tbaa !5
  %21 = load i32, i32* @maxdirs, align 4, !tbaa !15
  %sub38 = add nsw i32 %21, -1024
  %idx.ext = sext i32 %sub38 to i64
  %add.ptr = getelementptr inbounds i32, i32* %20, i64 %idx.ext
  %22 = bitcast i32* %add.ptr to i8*
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 4096, i32 4, i1 false)
  br label %if.end39

if.end39:                                         ; preds = %if.end31, %if.then35
  %23 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, i32* %23, i64 %lev
  store i32 1, i32* %arrayidx, align 4, !tbaa !15
  %add.ptr40 = getelementptr inbounds %struct._info*, %struct._info** %call9, i64 1
  %24 = load %struct._info*, %struct._info** %add.ptr40, align 8, !tbaa !5
  %tobool41 = icmp eq %struct._info* %24, null
  %. = select i1 %tobool41, i32 2, i32 1
  store i32 %., i32* %arrayidx, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.87, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %25)
  %call46 = call noalias i8* @malloc(i64 4096) #5
  %27 = load %struct._info*, %struct._info** %call9, align 8, !tbaa !5
  %tobool47650 = icmp eq %struct._info* %27, null
  br i1 %tobool47650, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end39
  %conv50 = trunc i64 %lev to i32
  %add.ptr251 = getelementptr inbounds i8, i8* %d, i64 1
  %add384 = add i64 %lev, 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end403
  %28 = phi %struct._info* [ %27, %while.body.lr.ph ], [ %193, %if.end403 ]
  %path.0659 = phi i8* [ %call46, %while.body.lr.ph ], [ %path.10, %if.end403 ]
  %dir.0653 = phi %struct._info** [ %call9, %while.body.lr.ph ], [ %add.ptr391, %if.end403 ]
  %pathsize.0652 = phi i64 [ 4096, %while.body.lr.ph ], [ %pathsize.10, %if.end403 ]
  %colored.0651 = phi i32 [ 0, %while.body.lr.ph ], [ %colored.1, %if.end403 ]
  %29 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool48 = icmp eq i32 %29, 0
  br i1 %tobool48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %while.body
  call void @indent(i32 %conv50) #5
  %.pre = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  br label %if.end51

if.end51:                                         ; preds = %while.body, %if.then49
  %30 = phi %struct._info* [ %28, %while.body ], [ %.pre, %if.then49 ]
  %call52 = call i8* @fillinfo(i8* %path.0659, %struct._info* %30) #5
  %31 = load i8, i8* %path.0659, align 1, !tbaa !2
  %cmp55 = icmp eq i8 %31, 32
  br i1 %cmp55, label %for.body.lr.ph, label %if.end74

for.body.lr.ph:                                   ; preds = %if.end51
  store i8 91, i8* %path.0659, align 1, !tbaa !2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %32 = phi i8 [ 91, %for.body.lr.ph ], [ %35, %for.inc ]
  %cmp64 = icmp eq i8 %32, 32
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  br i1 %cmp64, label %if.then66, label %if.else

if.then66:                                        ; preds = %for.body
  %34 = load i8*, i8** @sp, align 8, !tbaa !5
  %fputs582 = call i32 @fputs(i8* %34, %struct._IO_FILE* %33)
  br label %for.inc

if.else:                                          ; preds = %for.body
  %conv63 = sext i8 %32 to i32
  %fputc = call i32 @fputc(i32 %conv63, %struct._IO_FILE* %33)
  br label %for.inc

for.inc:                                          ; preds = %if.then66, %if.else
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %arrayidx59 = getelementptr inbounds i8, i8* %path.0659, i64 %indvars.iv.next
  %35 = load i8, i8* %arrayidx59, align 1, !tbaa !2
  %tobool60 = icmp eq i8 %35, 0
  br i1 %tobool60, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %37 = load i8*, i8** @sp, align 8, !tbaa !5
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.90, i64 0, i64 0), i8* %37, i8* %37)
  br label %if.end74

if.end74:                                         ; preds = %for.end, %if.end51
  %38 = load i32, i32* @colorize, align 4, !tbaa !2
  %tobool75 = icmp eq i32 %38, 0
  br i1 %tobool75, label %if.end89, label %if.then76

if.then76:                                        ; preds = %if.end74
  %39 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %lnk = getelementptr inbounds %struct._info, %struct._info* %39, i64 0, i32 1
  %40 = load i8*, i8** %lnk, align 8, !tbaa !35
  %tobool77 = icmp ne i8* %40, null
  %41 = load i32, i32* @linktargetcolor, align 4
  %tobool79 = icmp ne i32 %41, 0
  %or.cond418 = and i1 %tobool77, %tobool79
  %lnkmode = getelementptr inbounds %struct._info, %struct._info* %39, i64 0, i32 8
  %mode = getelementptr inbounds %struct._info, %struct._info* %39, i64 0, i32 7
  %.sink.in = select i1 %or.cond418, i32* %lnkmode, i32* %mode
  %.sink = load i32, i32* %.sink.in, align 4, !tbaa !15
  %conv81 = trunc i32 %.sink to i16
  %name = getelementptr inbounds %struct._info, %struct._info* %39, i64 0, i32 0
  %42 = load i8*, i8** %name, align 8, !tbaa !11
  %orphan = getelementptr inbounds %struct._info, %struct._info* %39, i64 0, i32 6
  %43 = load i32, i32* %orphan, align 8, !tbaa !36
  %call82 = call i32 @color(i16 zeroext %conv81, i8* %42, i32 %43, i32 0) #5
  br label %if.end89

if.end89:                                         ; preds = %if.then76, %if.end74
  %colored.1 = phi i32 [ %colored.0651, %if.end74 ], [ %call82, %if.then76 ]
  %44 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool90 = icmp eq i32 %44, 0
  br i1 %tobool90, label %if.else118, label %if.then91

if.then91:                                        ; preds = %if.end89
  %call92 = call i64 @strlen(i8* %d) #13
  %45 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %name93 = getelementptr inbounds %struct._info, %struct._info* %45, i64 0, i32 0
  %46 = load i8*, i8** %name93, align 8, !tbaa !11
  %call94 = call i64 @strlen(i8* %46) #13
  %add95 = add i64 %call94, %call92
  %add96 = add i64 %add95, 2
  %cmp98 = icmp ugt i64 %add96, %pathsize.0652
  br i1 %cmp98, label %if.then100, label %if.end108

if.then100:                                       ; preds = %if.then91
  %add105 = add i64 %add95, 1024
  %call107 = call i8* @xrealloc(i8* nonnull %path.0659, i64 %add105) #5
  %.pre660 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %name115.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre660, i64 0, i32 0
  %.pre661 = load i8*, i8** %name115.phi.trans.insert, align 8, !tbaa !11
  br label %if.end108

if.end108:                                        ; preds = %if.then100, %if.then91
  %47 = phi i8* [ %.pre661, %if.then100 ], [ %46, %if.then91 ]
  %pathsize.1 = phi i64 [ %add105, %if.then100 ], [ %pathsize.0652, %if.then91 ]
  %path.1 = phi i8* [ %call107, %if.then100 ], [ %path.0659, %if.then91 ]
  %call109 = call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.91, i64 0, i64 0)) #13
  %tobool110 = icmp eq i32 %call109, 0
  br i1 %tobool110, label %if.then111, label %if.else114

if.then111:                                       ; preds = %if.end108
  %call113 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9.92, i64 0, i64 0), i8* %d, i8* %47) #5
  br label %if.end134

if.else114:                                       ; preds = %if.end108
  %call116 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10.93, i64 0, i64 0), i8* %d, i8* %47) #5
  br label %if.end134

if.else118:                                       ; preds = %if.end89
  %48 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %name119 = getelementptr inbounds %struct._info, %struct._info* %48, i64 0, i32 0
  %49 = load i8*, i8** %name119, align 8, !tbaa !11
  %call120 = call i64 @strlen(i8* %49) #13
  %add121 = add i64 %call120, 1
  %cmp123 = icmp ugt i64 %add121, %pathsize.0652
  br i1 %cmp123, label %if.then125, label %if.end131

if.then125:                                       ; preds = %if.else118
  %add128 = add i64 %call120, 1024
  %call130 = call i8* @xrealloc(i8* nonnull %path.0659, i64 %add128) #5
  %.pre662 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %name132.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre662, i64 0, i32 0
  %.pre663 = load i8*, i8** %name132.phi.trans.insert, align 8, !tbaa !11
  br label %if.end131

if.end131:                                        ; preds = %if.then125, %if.else118
  %50 = phi i8* [ %.pre663, %if.then125 ], [ %49, %if.else118 ]
  %pathsize.2 = phi i64 [ %add128, %if.then125 ], [ %pathsize.0652, %if.else118 ]
  %path.2 = phi i8* [ %call130, %if.then125 ], [ %path.0659, %if.else118 ]
  %strlen = call i64 @strlen(i8* %50)
  %leninc = add i64 %strlen, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %path.2, i8* %50, i64 %leninc, i32 1, i1 false)
  br label %if.end134

if.end134:                                        ; preds = %if.then111, %if.else114, %if.end131
  %pathsize.3 = phi i64 [ %pathsize.1, %if.else114 ], [ %pathsize.1, %if.then111 ], [ %pathsize.2, %if.end131 ]
  %path.3 = phi i8* [ %path.1, %if.else114 ], [ %path.1, %if.then111 ], [ %path.2, %if.end131 ]
  %51 = load i32, i32* @Rflag, align 4, !tbaa !2
  %tobool135 = icmp eq i32 %51, 0
  br i1 %tobool135, label %if.else200, label %land.lhs.true136

land.lhs.true136:                                 ; preds = %if.end134
  %52 = load i32, i32* @Level, align 4, !tbaa !15
  %conv137 = sext i32 %52 to i64
  %cmp138 = icmp eq i64 %conv137, %lev
  br i1 %cmp138, label %land.lhs.true140, label %if.else200

land.lhs.true140:                                 ; preds = %land.lhs.true136
  %53 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %isdir = getelementptr inbounds %struct._info, %struct._info* %53, i64 0, i32 2
  %54 = load i32, i32* %isdir, align 8, !tbaa !7
  %tobool141 = icmp eq i32 %54, 0
  br i1 %tobool141, label %if.else200, label %if.then142

if.then142:                                       ; preds = %land.lhs.true140
  %55 = load i32, i32* @nolinks, align 4, !tbaa !2
  %tobool143 = icmp eq i32 %55, 0
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  br i1 %tobool143, label %if.else147, label %if.then144

if.then144:                                       ; preds = %if.then142
  %name145 = getelementptr inbounds %struct._info, %struct._info* %53, i64 0, i32 0
  %57 = load i8*, i8** %name145, align 8, !tbaa !11
  %fputs581 = call i32 @fputs(i8* %57, %struct._IO_FILE* %56)
  br label %if.end155

if.else147:                                       ; preds = %if.then142
  %58 = load i8*, i8** @host, align 8, !tbaa !5
  %call148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11.94, i64 0, i64 0), i8* %58)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %60 = load i8, i8* %add.ptr251, align 1, !tbaa !2
  %tobool17.i = icmp eq i8 %60, 0
  br i1 %tobool17.i, label %url_encode.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.else147
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %61 = phi i8 [ %66, %for.inc.i ], [ %60, %for.body.i.preheader ]
  %s.addr.018.i = phi i8* [ %incdec.ptr.i, %for.inc.i ], [ %add.ptr251, %for.body.i.preheader ]
  %conv.i = sext i8 %61 to i32
  switch i32 %conv.i, label %sw.default.i [
    i32 32, label %sw.bb.i
    i32 34, label %sw.bb.i
    i32 35, label %sw.bb.i
    i32 37, label %sw.bb.i
    i32 60, label %sw.bb.i
    i32 62, label %sw.bb.i
    i32 91, label %sw.bb.i
    i32 93, label %sw.bb.i
    i32 94, label %sw.bb.i
    i32 92, label %sw.bb.i
    i32 63, label %sw.bb.i
    i32 43, label %sw.bb.i
    i32 38, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i
  %call.i586 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i32 %conv.i) #5
  br label %for.inc.i

sw.bb2.i:                                         ; preds = %for.body.i
  %62 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30.96, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %59) #5
  br label %for.inc.i

sw.default.i:                                     ; preds = %for.body.i
  %call4.i = tail call i16** @__ctype_b_loc() #17
  %63 = load i16*, i16** %call4.i, align 8, !tbaa !5
  %idxprom.i = sext i8 %61 to i64
  %arrayidx.i = getelementptr inbounds i16, i16* %63, i64 %idxprom.i
  %64 = load i16, i16* %arrayidx.i, align 2, !tbaa !27
  %65 = and i16 %64, 16384
  %tobool7.i = icmp eq i16 %65, 0
  %cond.i = select i1 %tobool7.i, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.97, i64 0, i64 0)
  %conv8.i = zext i8 %61 to i32
  %call9.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* %cond.i, i32 %conv8.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.default.i, %sw.bb2.i, %sw.bb.i
  %incdec.ptr.i = getelementptr inbounds i8, i8* %s.addr.018.i, i64 1
  %66 = load i8, i8* %incdec.ptr.i, align 1, !tbaa !2
  %tobool.i = icmp eq i8 %66, 0
  br i1 %tobool.i, label %url_encode.exit.loopexit, label %for.body.i

url_encode.exit.loopexit:                         ; preds = %for.inc.i
  %.pre664 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  br label %url_encode.exit

url_encode.exit:                                  ; preds = %url_encode.exit.loopexit, %if.else147
  %67 = phi %struct._IO_FILE* [ %.pre664, %url_encode.exit.loopexit ], [ %59, %if.else147 ]
  %call150 = call i32 @_IO_putc(i32 47, %struct._IO_FILE* %67)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %69 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %name151 = getelementptr inbounds %struct._info, %struct._info* %69, i64 0, i32 0
  %70 = load i8*, i8** %name151, align 8, !tbaa !11
  %71 = load i8, i8* %70, align 1, !tbaa !2
  %tobool17.i587 = icmp eq i8 %71, 0
  br i1 %tobool17.i587, label %url_encode.exit606, label %for.body.i591.preheader

for.body.i591.preheader:                          ; preds = %url_encode.exit
  br label %for.body.i591

for.body.i591:                                    ; preds = %for.body.i591.preheader, %for.inc.i605
  %72 = phi i8 [ %77, %for.inc.i605 ], [ %71, %for.body.i591.preheader ]
  %s.addr.018.i589 = phi i8* [ %incdec.ptr.i603, %for.inc.i605 ], [ %70, %for.body.i591.preheader ]
  %conv.i590 = sext i8 %72 to i32
  switch i32 %conv.i590, label %sw.default.i602 [
    i32 32, label %sw.bb.i593
    i32 34, label %sw.bb.i593
    i32 35, label %sw.bb.i593
    i32 37, label %sw.bb.i593
    i32 60, label %sw.bb.i593
    i32 62, label %sw.bb.i593
    i32 91, label %sw.bb.i593
    i32 93, label %sw.bb.i593
    i32 94, label %sw.bb.i593
    i32 92, label %sw.bb.i593
    i32 63, label %sw.bb.i593
    i32 43, label %sw.bb.i593
    i32 38, label %sw.bb2.i594
  ]

sw.bb.i593:                                       ; preds = %for.body.i591, %for.body.i591, %for.body.i591, %for.body.i591, %for.body.i591, %for.body.i591, %for.body.i591, %for.body.i591, %for.body.i591, %for.body.i591, %for.body.i591, %for.body.i591
  %call.i592 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i32 %conv.i590) #5
  br label %for.inc.i605

sw.bb2.i594:                                      ; preds = %for.body.i591
  %73 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30.96, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %68) #5
  br label %for.inc.i605

sw.default.i602:                                  ; preds = %for.body.i591
  %call4.i595 = tail call i16** @__ctype_b_loc() #17
  %74 = load i16*, i16** %call4.i595, align 8, !tbaa !5
  %idxprom.i596 = sext i8 %72 to i64
  %arrayidx.i597 = getelementptr inbounds i16, i16* %74, i64 %idxprom.i596
  %75 = load i16, i16* %arrayidx.i597, align 2, !tbaa !27
  %76 = and i16 %75, 16384
  %tobool7.i598 = icmp eq i16 %76, 0
  %cond.i599 = select i1 %tobool7.i598, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.97, i64 0, i64 0)
  %conv8.i600 = zext i8 %72 to i32
  %call9.i601 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* %cond.i599, i32 %conv8.i600) #5
  br label %for.inc.i605

for.inc.i605:                                     ; preds = %sw.default.i602, %sw.bb2.i594, %sw.bb.i593
  %incdec.ptr.i603 = getelementptr inbounds i8, i8* %s.addr.018.i589, i64 1
  %77 = load i8, i8* %incdec.ptr.i603, align 1, !tbaa !2
  %tobool.i604 = icmp eq i8 %77, 0
  br i1 %tobool.i604, label %url_encode.exit606.loopexit, label %for.body.i591

url_encode.exit606.loopexit:                      ; preds = %for.inc.i605
  %.pre665 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  br label %url_encode.exit606

url_encode.exit606:                               ; preds = %url_encode.exit606.loopexit, %url_encode.exit
  %78 = phi %struct._IO_FILE* [ %.pre665, %url_encode.exit606.loopexit ], [ %68, %url_encode.exit ]
  %79 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12.98, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %78)
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %81 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %name153 = getelementptr inbounds %struct._info, %struct._info* %81, i64 0, i32 0
  %82 = load i8*, i8** %name153, align 8, !tbaa !11
  call void @html_encode(%struct._IO_FILE* %80, i8* %82)
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %84 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13.99, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %83)
  br label %if.end155

if.end155:                                        ; preds = %url_encode.exit606, %if.then144
  %call156 = call i8* (...) bitcast (i8* ()* @gnu_getcwd to i8* (...)*)() #5
  %call157 = call i64 @strlen(i8* %call156) #13
  %call158 = call i64 @strlen(i8* %d) #13
  %add159 = add i64 %call158, %call157
  %85 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %name160 = getelementptr inbounds %struct._info, %struct._info* %85, i64 0, i32 0
  %86 = load i8*, i8** %name160, align 8, !tbaa !11
  %call161 = call i64 @strlen(i8* %86) #13
  %add162 = add i64 %add159, %call161
  %add163 = add i64 %add162, 2
  %cmp165 = icmp ugt i64 %add163, %pathsize.3
  br i1 %cmp165, label %if.then167, label %if.end177

if.then167:                                       ; preds = %if.end155
  %add174 = add i64 %add162, 1024
  %call176 = call i8* @xrealloc(i8* %path.3, i64 %add174) #5
  %.pre666 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %name179.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre666, i64 0, i32 0
  %.pre667 = load i8*, i8** %name179.phi.trans.insert, align 8, !tbaa !11
  br label %if.end177

if.end177:                                        ; preds = %if.then167, %if.end155
  %87 = phi i8* [ %.pre667, %if.then167 ], [ %86, %if.end155 ]
  %pathsize.4 = phi i64 [ %add174, %if.then167 ], [ %pathsize.3, %if.end155 ]
  %path.4 = phi i8* [ %call176, %if.then167 ], [ %path.3, %if.end155 ]
  %call180 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14.100, i64 0, i64 0), i8* %call156, i8* %add.ptr251, i8* %87) #5
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15.101, i64 0, i64 0), i8* %path.4) #16
  %89 = load i8*, i8** @host, align 8, !tbaa !5
  %call182 = call i64 @strlen(i8* %89) #13
  %call184 = call i64 @strlen(i8* %d) #13
  %90 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %name186 = getelementptr inbounds %struct._info, %struct._info* %90, i64 0, i32 0
  %91 = load i8*, i8** %name186, align 8, !tbaa !11
  %call187 = call i64 @strlen(i8* %91) #13
  %call191 = call i64 @strlen(i8* %path.4) #13
  %mul192 = shl i64 %call191, 1
  %add185 = add i64 %call182, 59
  %add188 = add i64 %add185, %call184
  %add190 = add i64 %add188, %call187
  %add193 = add i64 %add190, %mul192
  %call194 = call i8* @xmalloc(i64 %add193) #5
  %92 = load i8*, i8** @host, align 8, !tbaa !5
  %93 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %name196 = getelementptr inbounds %struct._info, %struct._info* %93, i64 0, i32 0
  %94 = load i8*, i8** %name196, align 8, !tbaa !11
  %95 = load i32, i32* @Level, align 4, !tbaa !15
  %add197 = add nsw i32 %95, 1
  %call198 = call i32 (i8*, i8*, ...) @sprintf(i8* %call194, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16.102, i64 0, i64 0), i8* %92, i8* %add.ptr251, i8* %94, i32 %add197, i8* %path.4, i8* %path.4) #5
  %call199 = call i32 @system(i8* %call194) #5
  call void @free(i8* %call156) #5
  call void @free(i8* %call194) #5
  br label %if.end271

if.else200:                                       ; preds = %land.lhs.true140, %if.end134, %land.lhs.true136
  %96 = load i32, i32* @nolinks, align 4, !tbaa !2
  %tobool201 = icmp eq i32 %96, 0
  %97 = load i32, i32* @force_color, align 4, !tbaa !2
  %tobool203 = icmp ne i32 %97, 0
  br i1 %tobool201, label %if.else225, label %if.then202

if.then202:                                       ; preds = %if.else200
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %99 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  br i1 %tobool203, label %if.then204, label %if.else221

if.then204:                                       ; preds = %if.then202
  %isdir205 = getelementptr inbounds %struct._info, %struct._info* %99, i64 0, i32 2
  %100 = load i32, i32* %isdir205, align 8, !tbaa !7
  %tobool206 = icmp eq i32 %100, 0
  br i1 %tobool206, label %cond.false, label %cond.end217

cond.false:                                       ; preds = %if.then204
  %isexe = getelementptr inbounds %struct._info, %struct._info* %99, i64 0, i32 5
  %101 = load i32, i32* %isexe, align 4, !tbaa !53
  %tobool207 = icmp eq i32 %101, 0
  br i1 %tobool207, label %cond.false209, label %cond.end217

cond.false209:                                    ; preds = %cond.false
  %isfifo = getelementptr inbounds %struct._info, %struct._info* %99, i64 0, i32 4
  %102 = load i32, i32* %isfifo, align 8, !tbaa !54
  %tobool210 = icmp eq i32 %102, 0
  br i1 %tobool210, label %cond.false212, label %cond.end217

cond.false212:                                    ; preds = %cond.false209
  %issok = getelementptr inbounds %struct._info, %struct._info* %99, i64 0, i32 3
  %103 = load i32, i32* %issok, align 4, !tbaa !55
  %tobool213 = icmp eq i32 %103, 0
  %cond = select i1 %tobool213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22.103, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21.104, i64 0, i64 0)
  br label %cond.end217

cond.end217:                                      ; preds = %cond.false209, %cond.false, %if.then204, %cond.false212
  %cond218 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18.105, i64 0, i64 0), %if.then204 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19.106, i64 0, i64 0), %cond.false ], [ %cond, %cond.false212 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20.107, i64 0, i64 0), %cond.false209 ]
  %name219 = getelementptr inbounds %struct._info, %struct._info* %99, i64 0, i32 0
  %104 = load i8*, i8** %name219, align 8, !tbaa !11
  %call220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17.108, i64 0, i64 0), i8* %cond218, i8* %104)
  br label %if.end271

if.else221:                                       ; preds = %if.then202
  %name222 = getelementptr inbounds %struct._info, %struct._info* %99, i64 0, i32 0
  %105 = load i8*, i8** %name222, align 8, !tbaa !11
  %fputs580 = call i32 @fputs(i8* %105, %struct._IO_FILE* %98)
  br label %if.end271

if.else225:                                       ; preds = %if.else200
  br i1 %tobool203, label %if.then227, label %if.else258

if.then227:                                       ; preds = %if.else225
  %106 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %isdir228 = getelementptr inbounds %struct._info, %struct._info* %106, i64 0, i32 2
  %107 = load i32, i32* %isdir228, align 8, !tbaa !7
  %tobool229 = icmp eq i32 %107, 0
  br i1 %tobool229, label %cond.false231, label %cond.end247

cond.false231:                                    ; preds = %if.then227
  %isexe232 = getelementptr inbounds %struct._info, %struct._info* %106, i64 0, i32 5
  %108 = load i32, i32* %isexe232, align 4, !tbaa !53
  %tobool233 = icmp eq i32 %108, 0
  br i1 %tobool233, label %cond.false235, label %cond.end247

cond.false235:                                    ; preds = %cond.false231
  %isfifo236 = getelementptr inbounds %struct._info, %struct._info* %106, i64 0, i32 4
  %109 = load i32, i32* %isfifo236, align 8, !tbaa !54
  %tobool237 = icmp eq i32 %109, 0
  br i1 %tobool237, label %cond.false239, label %cond.end247

cond.false239:                                    ; preds = %cond.false235
  %issok240 = getelementptr inbounds %struct._info, %struct._info* %106, i64 0, i32 3
  %110 = load i32, i32* %issok240, align 4, !tbaa !55
  %tobool241 = icmp eq i32 %110, 0
  %cond242 = select i1 %tobool241, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22.103, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21.104, i64 0, i64 0)
  br label %cond.end247

cond.end247:                                      ; preds = %cond.false235, %cond.false231, %if.then227, %cond.false239
  %cond248 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18.105, i64 0, i64 0), %if.then227 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19.106, i64 0, i64 0), %cond.false231 ], [ %cond242, %cond.false239 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20.107, i64 0, i64 0), %cond.false235 ]
  %strlen578 = call i64 @strlen(i8* %cond248)
  %leninc579 = add i64 %strlen578, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %2, i8* %cond248, i64 %leninc579, i32 1, i1 false)
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %112 = load i8*, i8** @host, align 8, !tbaa !5
  %113 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %name252 = getelementptr inbounds %struct._info, %struct._info* %113, i64 0, i32 0
  %114 = load i8*, i8** %name252, align 8, !tbaa !11
  %isdir253 = getelementptr inbounds %struct._info, %struct._info* %113, i64 0, i32 2
  %115 = load i32, i32* %isdir253, align 8, !tbaa !7
  %tobool254 = icmp eq i32 %115, 0
  %cond255 = select i1 %tobool254, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24.109, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.91, i64 0, i64 0)
  %call257 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23.110, i64 0, i64 0), i8* nonnull %2, i8* %112, i8* %add.ptr251, i8* %114, i8* %cond255, i8* %114)
  br label %if.end271

if.else258:                                       ; preds = %if.else225
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %117 = load i8*, i8** @host, align 8, !tbaa !5
  %call259 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11.94, i64 0, i64 0), i8* %117)
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %119 = load i8, i8* %add.ptr251, align 1, !tbaa !2
  %tobool17.i607 = icmp eq i8 %119, 0
  br i1 %tobool17.i607, label %url_encode.exit626, label %for.body.i611.preheader

for.body.i611.preheader:                          ; preds = %if.else258
  br label %for.body.i611

for.body.i611:                                    ; preds = %for.body.i611.preheader, %for.inc.i625
  %120 = phi i8 [ %125, %for.inc.i625 ], [ %119, %for.body.i611.preheader ]
  %s.addr.018.i609 = phi i8* [ %incdec.ptr.i623, %for.inc.i625 ], [ %add.ptr251, %for.body.i611.preheader ]
  %conv.i610 = sext i8 %120 to i32
  switch i32 %conv.i610, label %sw.default.i622 [
    i32 32, label %sw.bb.i613
    i32 34, label %sw.bb.i613
    i32 35, label %sw.bb.i613
    i32 37, label %sw.bb.i613
    i32 60, label %sw.bb.i613
    i32 62, label %sw.bb.i613
    i32 91, label %sw.bb.i613
    i32 93, label %sw.bb.i613
    i32 94, label %sw.bb.i613
    i32 92, label %sw.bb.i613
    i32 63, label %sw.bb.i613
    i32 43, label %sw.bb.i613
    i32 38, label %sw.bb2.i614
  ]

sw.bb.i613:                                       ; preds = %for.body.i611, %for.body.i611, %for.body.i611, %for.body.i611, %for.body.i611, %for.body.i611, %for.body.i611, %for.body.i611, %for.body.i611, %for.body.i611, %for.body.i611, %for.body.i611
  %call.i612 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i32 %conv.i610) #5
  br label %for.inc.i625

sw.bb2.i614:                                      ; preds = %for.body.i611
  %121 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30.96, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %118) #5
  br label %for.inc.i625

sw.default.i622:                                  ; preds = %for.body.i611
  %call4.i615 = tail call i16** @__ctype_b_loc() #17
  %122 = load i16*, i16** %call4.i615, align 8, !tbaa !5
  %idxprom.i616 = sext i8 %120 to i64
  %arrayidx.i617 = getelementptr inbounds i16, i16* %122, i64 %idxprom.i616
  %123 = load i16, i16* %arrayidx.i617, align 2, !tbaa !27
  %124 = and i16 %123, 16384
  %tobool7.i618 = icmp eq i16 %124, 0
  %cond.i619 = select i1 %tobool7.i618, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.97, i64 0, i64 0)
  %conv8.i620 = zext i8 %120 to i32
  %call9.i621 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* %cond.i619, i32 %conv8.i620) #5
  br label %for.inc.i625

for.inc.i625:                                     ; preds = %sw.default.i622, %sw.bb2.i614, %sw.bb.i613
  %incdec.ptr.i623 = getelementptr inbounds i8, i8* %s.addr.018.i609, i64 1
  %125 = load i8, i8* %incdec.ptr.i623, align 1, !tbaa !2
  %tobool.i624 = icmp eq i8 %125, 0
  br i1 %tobool.i624, label %url_encode.exit626.loopexit, label %for.body.i611

url_encode.exit626.loopexit:                      ; preds = %for.inc.i625
  %.pre668 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  br label %url_encode.exit626

url_encode.exit626:                               ; preds = %url_encode.exit626.loopexit, %if.else258
  %126 = phi %struct._IO_FILE* [ %.pre668, %url_encode.exit626.loopexit ], [ %118, %if.else258 ]
  %call261 = call i32 @_IO_putc(i32 47, %struct._IO_FILE* %126)
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %128 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %name262 = getelementptr inbounds %struct._info, %struct._info* %128, i64 0, i32 0
  %129 = load i8*, i8** %name262, align 8, !tbaa !11
  %130 = load i8, i8* %129, align 1, !tbaa !2
  %tobool17.i627 = icmp eq i8 %130, 0
  br i1 %tobool17.i627, label %url_encode.exit646, label %for.body.i631.preheader

for.body.i631.preheader:                          ; preds = %url_encode.exit626
  br label %for.body.i631

for.body.i631:                                    ; preds = %for.body.i631.preheader, %for.inc.i645
  %131 = phi i8 [ %136, %for.inc.i645 ], [ %130, %for.body.i631.preheader ]
  %s.addr.018.i629 = phi i8* [ %incdec.ptr.i643, %for.inc.i645 ], [ %129, %for.body.i631.preheader ]
  %conv.i630 = sext i8 %131 to i32
  switch i32 %conv.i630, label %sw.default.i642 [
    i32 32, label %sw.bb.i633
    i32 34, label %sw.bb.i633
    i32 35, label %sw.bb.i633
    i32 37, label %sw.bb.i633
    i32 60, label %sw.bb.i633
    i32 62, label %sw.bb.i633
    i32 91, label %sw.bb.i633
    i32 93, label %sw.bb.i633
    i32 94, label %sw.bb.i633
    i32 92, label %sw.bb.i633
    i32 63, label %sw.bb.i633
    i32 43, label %sw.bb.i633
    i32 38, label %sw.bb2.i634
  ]

sw.bb.i633:                                       ; preds = %for.body.i631, %for.body.i631, %for.body.i631, %for.body.i631, %for.body.i631, %for.body.i631, %for.body.i631, %for.body.i631, %for.body.i631, %for.body.i631, %for.body.i631, %for.body.i631
  %call.i632 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i32 %conv.i630) #5
  br label %for.inc.i645

sw.bb2.i634:                                      ; preds = %for.body.i631
  %132 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30.96, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %127) #5
  br label %for.inc.i645

sw.default.i642:                                  ; preds = %for.body.i631
  %call4.i635 = tail call i16** @__ctype_b_loc() #17
  %133 = load i16*, i16** %call4.i635, align 8, !tbaa !5
  %idxprom.i636 = sext i8 %131 to i64
  %arrayidx.i637 = getelementptr inbounds i16, i16* %133, i64 %idxprom.i636
  %134 = load i16, i16* %arrayidx.i637, align 2, !tbaa !27
  %135 = and i16 %134, 16384
  %tobool7.i638 = icmp eq i16 %135, 0
  %cond.i639 = select i1 %tobool7.i638, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.97, i64 0, i64 0)
  %conv8.i640 = zext i8 %131 to i32
  %call9.i641 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* %cond.i639, i32 %conv8.i640) #5
  br label %for.inc.i645

for.inc.i645:                                     ; preds = %sw.default.i642, %sw.bb2.i634, %sw.bb.i633
  %incdec.ptr.i643 = getelementptr inbounds i8, i8* %s.addr.018.i629, i64 1
  %136 = load i8, i8* %incdec.ptr.i643, align 1, !tbaa !2
  %tobool.i644 = icmp eq i8 %136, 0
  br i1 %tobool.i644, label %url_encode.exit646.loopexit, label %for.body.i631

url_encode.exit646.loopexit:                      ; preds = %for.inc.i645
  %.pre669 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %.pre670 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  br label %url_encode.exit646

url_encode.exit646:                               ; preds = %url_encode.exit646.loopexit, %url_encode.exit626
  %137 = phi %struct._info* [ %.pre670, %url_encode.exit646.loopexit ], [ %128, %url_encode.exit626 ]
  %138 = phi %struct._IO_FILE* [ %.pre669, %url_encode.exit646.loopexit ], [ %127, %url_encode.exit626 ]
  %isdir263 = getelementptr inbounds %struct._info, %struct._info* %137, i64 0, i32 2
  %139 = load i32, i32* %isdir263, align 8, !tbaa !7
  %tobool264 = icmp eq i32 %139, 0
  %cond265 = select i1 %tobool264, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24.109, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.91, i64 0, i64 0)
  %call266 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25.111, i64 0, i64 0), i8* %cond265)
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %141 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %name267 = getelementptr inbounds %struct._info, %struct._info* %141, i64 0, i32 0
  %142 = load i8*, i8** %name267, align 8, !tbaa !11
  call void @html_encode(%struct._IO_FILE* %140, i8* %142)
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %144 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26.112, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %143)
  br label %if.end271

if.end271:                                        ; preds = %if.else221, %cond.end217, %url_encode.exit646, %cond.end247, %if.end177
  %pathsize.5 = phi i64 [ %pathsize.4, %if.end177 ], [ %pathsize.3, %cond.end217 ], [ %pathsize.3, %if.else221 ], [ %pathsize.3, %cond.end247 ], [ %pathsize.3, %url_encode.exit646 ]
  %path.5 = phi i8* [ %path.4, %if.end177 ], [ %path.3, %cond.end217 ], [ %path.3, %if.else221 ], [ %path.3, %cond.end247 ], [ %path.3, %url_encode.exit646 ]
  %tobool272 = icmp eq i32 %colored.1, 0
  br i1 %tobool272, label %if.end275, label %if.then273

if.then273:                                       ; preds = %if.end271
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %146 = load i8*, i8** @endcode, align 8, !tbaa !5
  %fputs = call i32 @fputs(i8* %146, %struct._IO_FILE* %145)
  br label %if.end275

if.end275:                                        ; preds = %if.end271, %if.then273
  %147 = load i32, i32* @Fflag, align 4, !tbaa !2
  %tobool276 = icmp eq i32 %147, 0
  br i1 %tobool276, label %if.end288, label %land.lhs.true277

land.lhs.true277:                                 ; preds = %if.end275
  %148 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %lnk278 = getelementptr inbounds %struct._info, %struct._info* %148, i64 0, i32 1
  %149 = load i8*, i8** %lnk278, align 8, !tbaa !35
  %tobool279 = icmp eq i8* %149, null
  br i1 %tobool279, label %if.then280, label %if.end288

if.then280:                                       ; preds = %land.lhs.true277
  %mode281 = getelementptr inbounds %struct._info, %struct._info* %148, i64 0, i32 7
  %150 = load i32, i32* %mode281, align 4, !tbaa !30
  %call282 = call signext i8 @Ftype(i32 %150) #5
  %tobool284 = icmp eq i8 %call282, 0
  br i1 %tobool284, label %if.end288, label %if.then285

if.then285:                                       ; preds = %if.then280
  %conv283 = sext i8 %call282 to i32
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call286 = call i32 @fputc(i32 %conv283, %struct._IO_FILE* %151)
  br label %if.end288

if.end288:                                        ; preds = %if.then280, %land.lhs.true277, %if.end275, %if.then285
  %152 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %isdir289 = getelementptr inbounds %struct._info, %struct._info* %152, i64 0, i32 2
  %153 = load i32, i32* %isdir289, align 8, !tbaa !7
  %tobool290 = icmp eq i32 %153, 0
  br i1 %tobool290, label %if.end390, label %if.then291

if.then291:                                       ; preds = %if.end288
  %lnk292 = getelementptr inbounds %struct._info, %struct._info* %152, i64 0, i32 1
  %154 = load i8*, i8** %lnk292, align 8, !tbaa !35
  %tobool293 = icmp eq i8* %154, null
  br i1 %tobool293, label %if.else349, label %if.then294

if.then294:                                       ; preds = %if.then291
  %155 = load i32, i32* @lflag, align 4, !tbaa !2
  %tobool295 = icmp eq i32 %155, 0
  br i1 %tobool295, label %if.end390, label %land.lhs.true296

land.lhs.true296:                                 ; preds = %if.then294
  %156 = load i32, i32* @xdev, align 4, !tbaa !2
  %tobool297 = icmp eq i32 %156, 0
  %dev303.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %152, i64 0, i32 15
  %.pre671 = load i64, i64* %dev303.phi.trans.insert, align 8, !tbaa !44
  br i1 %tobool297, label %if.then302, label %land.lhs.true298

land.lhs.true298:                                 ; preds = %land.lhs.true296
  %cmp300 = icmp eq i64 %dev.addr.0, %.pre671
  br i1 %cmp300, label %if.then302, label %if.end390

if.then302:                                       ; preds = %land.lhs.true296, %land.lhs.true298
  %157 = phi i64 [ %dev.addr.0, %land.lhs.true298 ], [ %.pre671, %land.lhs.true296 ]
  %inode = getelementptr inbounds %struct._info, %struct._info* %152, i64 0, i32 16
  %158 = load i64, i64* %inode, align 8, !tbaa !45
  %call304 = call i32 @findino(i64 %158, i64 %157) #5
  %tobool305 = icmp eq i32 %call304, 0
  br i1 %tobool305, label %if.else308, label %if.then306

if.then306:                                       ; preds = %if.then302
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %160 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27.113, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %159)
  br label %if.end390

if.else308:                                       ; preds = %if.then302
  %161 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %inode309 = getelementptr inbounds %struct._info, %struct._info* %161, i64 0, i32 16
  %162 = load i64, i64* %inode309, align 8, !tbaa !45
  %dev310 = getelementptr inbounds %struct._info, %struct._info* %161, i64 0, i32 15
  %163 = load i64, i64* %dev310, align 8, !tbaa !44
  call void @saveino(i64 %162, i64 %163) #5
  %164 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %lnk311 = getelementptr inbounds %struct._info, %struct._info* %164, i64 0, i32 1
  %165 = load i8*, i8** %lnk311, align 8, !tbaa !35
  %166 = load i8, i8* %165, align 1, !tbaa !2
  %cmp313 = icmp eq i8 %166, 47
  br i1 %cmp313, label %if.then315, label %if.else318

if.then315:                                       ; preds = %if.else308
  %167 = load void (i8*, i32*, i32*, i64, i64)*, void (i8*, i32*, i32*, i64, i64)** bitcast (i64 (i8*, i32*, i32*, i64, i64)** @listdir to void (i8*, i32*, i32*, i64, i64)**), align 8, !tbaa !5
  call void %167(i8* %165, i32* %dt, i32* %ft, i64 %add384, i64 %dev.addr.0) #5
  br label %if.end390

if.else318:                                       ; preds = %if.else308
  %call319 = call i64 @strlen(i8* %d) #13
  %call321 = call i64 @strlen(i8* %165) #13
  %add322 = add i64 %call319, 2
  %add323 = add i64 %add322, %call321
  %cmp324 = icmp ugt i64 %add323, %pathsize.5
  br i1 %cmp324, label %if.then326, label %if.end333

if.then326:                                       ; preds = %if.else318
  %name328 = getelementptr inbounds %struct._info, %struct._info* %164, i64 0, i32 0
  %168 = load i8*, i8** %name328, align 8, !tbaa !11
  %call329 = call i64 @strlen(i8* %168) #13
  %add330 = add i64 %call319, 1024
  %add331 = add i64 %add330, %call329
  %call332 = call i8* @xrealloc(i8* %path.5, i64 %add331) #5
  br label %if.end333

if.end333:                                        ; preds = %if.then326, %if.else318
  %pathsize.6 = phi i64 [ %add331, %if.then326 ], [ %pathsize.5, %if.else318 ]
  %path.6 = phi i8* [ %call332, %if.then326 ], [ %path.5, %if.else318 ]
  %169 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool334 = icmp eq i32 %169, 0
  br i1 %tobool334, label %if.else341, label %land.lhs.true335

land.lhs.true335:                                 ; preds = %if.end333
  %call336 = call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.91, i64 0, i64 0)) #13
  %tobool337 = icmp eq i32 %call336, 0
  br i1 %tobool337, label %if.then338, label %if.else341

if.then338:                                       ; preds = %land.lhs.true335
  %170 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %lnk339 = getelementptr inbounds %struct._info, %struct._info* %170, i64 0, i32 1
  %171 = load i8*, i8** %lnk339, align 8, !tbaa !35
  %call340 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9.92, i64 0, i64 0), i8* %d, i8* %171) #5
  br label %if.end344

if.else341:                                       ; preds = %land.lhs.true335, %if.end333
  %172 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %lnk342 = getelementptr inbounds %struct._info, %struct._info* %172, i64 0, i32 1
  %173 = load i8*, i8** %lnk342, align 8, !tbaa !35
  %call343 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10.93, i64 0, i64 0), i8* %d, i8* %173) #5
  br label %if.end344

if.end344:                                        ; preds = %if.else341, %if.then338
  %174 = load void (i8*, i32*, i32*, i64, i64)*, void (i8*, i32*, i32*, i64, i64)** bitcast (i64 (i8*, i32*, i32*, i64, i64)** @listdir to void (i8*, i32*, i32*, i64, i64)**), align 8, !tbaa !5
  call void %174(i8* %path.6, i32* %dt, i32* %ft, i64 %add384, i64 %dev.addr.0) #5
  br label %if.end390

if.else349:                                       ; preds = %if.then291
  %175 = load i32, i32* @xdev, align 4, !tbaa !2
  %tobool350 = icmp eq i32 %175, 0
  br i1 %tobool350, label %if.then355, label %land.lhs.true351

land.lhs.true351:                                 ; preds = %if.else349
  %dev352 = getelementptr inbounds %struct._info, %struct._info* %152, i64 0, i32 15
  %176 = load i64, i64* %dev352, align 8, !tbaa !44
  %cmp353 = icmp eq i64 %dev.addr.0, %176
  br i1 %cmp353, label %if.then355, label %if.end390

if.then355:                                       ; preds = %land.lhs.true351, %if.else349
  %call356 = call i64 @strlen(i8* %d) #13
  %name357 = getelementptr inbounds %struct._info, %struct._info* %152, i64 0, i32 0
  %177 = load i8*, i8** %name357, align 8, !tbaa !11
  %call358 = call i64 @strlen(i8* %177) #13
  %add359 = add i64 %call358, %call356
  %add360 = add i64 %add359, 2
  %cmp361 = icmp ugt i64 %add360, %pathsize.5
  br i1 %cmp361, label %if.then363, label %if.end370

if.then363:                                       ; preds = %if.then355
  %add368 = add i64 %add359, 1024
  %call369 = call i8* @xrealloc(i8* %path.5, i64 %add368) #5
  br label %if.end370

if.end370:                                        ; preds = %if.then363, %if.then355
  %pathsize.8 = phi i64 [ %add368, %if.then363 ], [ %pathsize.5, %if.then355 ]
  %path.8 = phi i8* [ %call369, %if.then363 ], [ %path.5, %if.then355 ]
  %178 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool371 = icmp eq i32 %178, 0
  br i1 %tobool371, label %if.else378, label %land.lhs.true372

land.lhs.true372:                                 ; preds = %if.end370
  %call373 = call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.91, i64 0, i64 0)) #13
  %tobool374 = icmp eq i32 %call373, 0
  br i1 %tobool374, label %if.then375, label %if.else378

if.then375:                                       ; preds = %land.lhs.true372
  %179 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %name376 = getelementptr inbounds %struct._info, %struct._info* %179, i64 0, i32 0
  %180 = load i8*, i8** %name376, align 8, !tbaa !11
  %call377 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9.92, i64 0, i64 0), i8* %d, i8* %180) #5
  br label %if.end381

if.else378:                                       ; preds = %land.lhs.true372, %if.end370
  %181 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %name379 = getelementptr inbounds %struct._info, %struct._info* %181, i64 0, i32 0
  %182 = load i8*, i8** %name379, align 8, !tbaa !11
  %call380 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10.93, i64 0, i64 0), i8* %d, i8* %182) #5
  br label %if.end381

if.end381:                                        ; preds = %if.else378, %if.then375
  %183 = load %struct._info*, %struct._info** %dir.0653, align 8, !tbaa !5
  %inode382 = getelementptr inbounds %struct._info, %struct._info* %183, i64 0, i32 16
  %184 = load i64, i64* %inode382, align 8, !tbaa !45
  %dev383 = getelementptr inbounds %struct._info, %struct._info* %183, i64 0, i32 15
  %185 = load i64, i64* %dev383, align 8, !tbaa !44
  call void @saveino(i64 %184, i64 %185) #5
  %186 = load void (i8*, i32*, i32*, i64, i64)*, void (i8*, i32*, i32*, i64, i64)** bitcast (i64 (i8*, i32*, i32*, i64, i64)** @listdir to void (i8*, i32*, i32*, i64, i64)**), align 8, !tbaa !5
  call void %186(i8* %path.8, i32* %dt, i32* %ft, i64 %add384, i64 %dev.addr.0) #5
  br label %if.end390

if.end390:                                        ; preds = %if.end288, %if.then306, %if.end381, %land.lhs.true351, %if.then294, %land.lhs.true298, %if.end344, %if.then315
  %pathsize.10 = phi i64 [ %pathsize.5, %land.lhs.true298 ], [ %pathsize.5, %if.then306 ], [ %pathsize.5, %if.then294 ], [ %pathsize.5, %land.lhs.true351 ], [ %pathsize.8, %if.end381 ], [ %pathsize.5, %if.then315 ], [ %pathsize.6, %if.end344 ], [ %pathsize.5, %if.end288 ]
  %nlf.2 = phi i32 [ 0, %land.lhs.true298 ], [ 0, %if.then306 ], [ 0, %if.then294 ], [ 0, %land.lhs.true351 ], [ 1, %if.end381 ], [ 1, %if.then315 ], [ 1, %if.end344 ], [ 0, %if.end288 ]
  %path.10 = phi i8* [ %path.5, %land.lhs.true298 ], [ %path.5, %if.then306 ], [ %path.5, %if.then294 ], [ %path.5, %land.lhs.true351 ], [ %path.8, %if.end381 ], [ %path.5, %if.then315 ], [ %path.6, %if.end344 ], [ %path.5, %if.end288 ]
  %.sink420 = phi i32* [ %dt, %land.lhs.true298 ], [ %dt, %if.then306 ], [ %dt, %if.then294 ], [ %dt, %land.lhs.true351 ], [ %dt, %if.end381 ], [ %dt, %if.then315 ], [ %dt, %if.end344 ], [ %ft, %if.end288 ]
  %187 = load i32, i32* %.sink420, align 4, !tbaa !15
  %add389 = add nsw i32 %187, 1
  store i32 %add389, i32* %.sink420, align 4, !tbaa !15
  %add.ptr391 = getelementptr inbounds %struct._info*, %struct._info** %dir.0653, i64 1
  %188 = load %struct._info*, %struct._info** %add.ptr391, align 8, !tbaa !5
  %tobool392 = icmp eq %struct._info* %188, null
  br i1 %tobool392, label %if.end398, label %land.lhs.true393

land.lhs.true393:                                 ; preds = %if.end390
  %add.ptr394 = getelementptr inbounds %struct._info*, %struct._info** %dir.0653, i64 2
  %189 = load %struct._info*, %struct._info** %add.ptr394, align 8, !tbaa !5
  %tobool395 = icmp eq %struct._info* %189, null
  br i1 %tobool395, label %if.then396, label %if.end398

if.then396:                                       ; preds = %land.lhs.true393
  %190 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx397 = getelementptr inbounds i32, i32* %190, i64 %lev
  store i32 2, i32* %arrayidx397, align 4, !tbaa !15
  br label %if.end398

if.end398:                                        ; preds = %land.lhs.true393, %if.end390, %if.then396
  %tobool399 = icmp eq i32 %nlf.2, 0
  br i1 %tobool399, label %if.else401, label %if.end403

if.else401:                                       ; preds = %if.end398
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %192 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.87, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %191)
  %.pre672 = load %struct._info*, %struct._info** %add.ptr391, align 8, !tbaa !5
  br label %if.end403

if.end403:                                        ; preds = %if.end398, %if.else401
  %193 = phi %struct._info* [ %188, %if.end398 ], [ %.pre672, %if.else401 ]
  %tobool47 = icmp eq %struct._info* %193, null
  br i1 %tobool47, label %while.end, label %while.body

while.end:                                        ; preds = %if.end403, %if.end39
  %path.0.lcssa = phi i8* [ %call46, %if.end39 ], [ %path.10, %if.end403 ]
  %194 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx404 = getelementptr inbounds i32, i32* %194, i64 %lev
  store i32 0, i32* %arrayidx404, align 4, !tbaa !15
  call void @free(i8* %path.0.lcssa) #5
  call void @free_dir(%struct._info** %call9) #5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then25, %if.then17, %if.then13, %if.then
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #5
  ret i64 0
}

; Function Attrs: nounwind uwtable
define void @html_encode(%struct._IO_FILE* nocapture %fd, i8* nocapture readonly %s) local_unnamed_addr #2 {
entry:
  %0 = load i8, i8* %s, align 1, !tbaa !2
  %tobool16 = icmp eq i8 %0, 0
  br i1 %tobool16, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %1 = phi i8 [ %6, %for.inc ], [ %0, %for.body.preheader ]
  %s.addr.017 = phi i8* [ %incdec.ptr, %for.inc ], [ %s, %for.body.preheader ]
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 60, label %sw.bb
    i32 62, label %sw.bb1
    i32 38, label %sw.bb3
    i32 34, label %sw.bb5
  ]

sw.bb:                                            ; preds = %for.body
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28.114, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %fd)
  br label %for.inc

sw.bb1:                                           ; preds = %for.body
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29.115, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %fd)
  br label %for.inc

sw.bb3:                                           ; preds = %for.body
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30.96, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %fd)
  br label %for.inc

sw.bb5:                                           ; preds = %for.body
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31.116, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %fd)
  br label %for.inc

sw.default:                                       ; preds = %for.body
  %call8 = tail call i32 @fputc(i32 %conv, %struct._IO_FILE* %fd)
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %sw.bb1, %sw.bb3, %sw.bb5, %sw.default
  %incdec.ptr = getelementptr inbounds i8, i8* %s.addr.017, i64 1
  %6 = load i8, i8* %incdec.ptr, align 1, !tbaa !2
  %tobool = icmp eq i8 %6, 0
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

declare i32 @system(i8* nocapture readonly) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define void @url_encode(%struct._IO_FILE* nocapture %fd, i8* nocapture readonly %s) local_unnamed_addr #2 {
entry:
  %0 = load i8, i8* %s, align 1, !tbaa !2
  %tobool17 = icmp eq i8 %0, 0
  br i1 %tobool17, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %1 = phi i8 [ %6, %for.inc ], [ %0, %for.body.preheader ]
  %s.addr.018 = phi i8* [ %incdec.ptr, %for.inc ], [ %s, %for.body.preheader ]
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 32, label %sw.bb
    i32 34, label %sw.bb
    i32 35, label %sw.bb
    i32 37, label %sw.bb
    i32 60, label %sw.bb
    i32 62, label %sw.bb
    i32 91, label %sw.bb
    i32 93, label %sw.bb
    i32 94, label %sw.bb
    i32 92, label %sw.bb
    i32 63, label %sw.bb
    i32 43, label %sw.bb
    i32 38, label %sw.bb2
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fd, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i32 %conv)
  br label %for.inc

sw.bb2:                                           ; preds = %for.body
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30.96, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %fd)
  br label %for.inc

sw.default:                                       ; preds = %for.body
  %call4 = tail call i16** @__ctype_b_loc() #17
  %3 = load i16*, i16** %call4, align 8, !tbaa !5
  %idxprom = sext i8 %1 to i64
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !27
  %5 = and i16 %4, 16384
  %tobool7 = icmp eq i16 %5, 0
  %cond = select i1 %tobool7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.97, i64 0, i64 0)
  %conv8 = zext i8 %1 to i32
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fd, i8* %cond, i32 %conv8)
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %sw.bb2, %sw.default
  %incdec.ptr = getelementptr inbounds i8, i8* %s.addr.018, i64 1
  %6 = load i8, i8* %incdec.ptr, align 1, !tbaa !2
  %tobool = icmp eq i8 %6, 0
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @html_rlistdir(i8* %d, i32* nocapture %dt, i32* nocapture %ft, i64 %lev, i64 %dev) #2 {
entry:
  %size = alloca i64, align 8
  %err = alloca i8*, align 8
  %0 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i64 0, i64* %size, align 8, !tbaa !29
  %1 = bitcast i8** %err to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %call = call %struct._info** @getfulltree(i8* %d, i64 %lev, i64 %dev, i64* nonnull %size, i8** nonnull %err) #5
  %2 = load i8*, i8** bitcast (i32** @dirs to i8**), align 8, !tbaa !5
  %3 = load i32, i32* @maxdirs, align 4, !tbaa !15
  %conv = sext i32 %3 to i64
  %mul = shl nsw i64 %conv, 2
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %mul, i32 4, i1 false)
  call void @htmlr_listdir(%struct._info** %call, i8* %d, i32* %dt, i32* %ft, i64 %lev)
  %4 = load i64, i64* %size, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define void @htmlr_listdir(%struct._info** %dir, i8* %d, i32* nocapture %dt, i32* nocapture %ft, i64 %lev) local_unnamed_addr #2 {
entry:
  %hclr = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %hclr, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #5
  %cmp = icmp eq %struct._info** %dir, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %lev
  store i32 1, i32* %arrayidx, align 4, !tbaa !15
  %add.ptr = getelementptr inbounds %struct._info*, %struct._info** %dir, i64 1
  %2 = load %struct._info*, %struct._info** %add.ptr, align 8, !tbaa !5
  %tobool = icmp eq %struct._info* %2, null
  %. = select i1 %tobool, i32 2, i32 1
  store i32 %., i32* %arrayidx, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.87, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %3)
  %call4 = tail call noalias i8* @malloc(i64 4096) #5
  %5 = load %struct._info*, %struct._info** %dir, align 8, !tbaa !5
  %tobool5490 = icmp eq %struct._info* %5, null
  br i1 %tobool5490, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %conv = trunc i64 %lev to i32
  %add.ptr205 = getelementptr inbounds i8, i8* %d, i64 1
  %add270 = add i64 %lev, 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end293
  %6 = phi %struct._info* [ %5, %while.body.lr.ph ], [ %143, %if.end293 ]
  %dir.addr.0494 = phi %struct._info** [ %dir, %while.body.lr.ph ], [ %add.ptr281, %if.end293 ]
  %path.0493 = phi i8* [ %call4, %while.body.lr.ph ], [ %path.7, %if.end293 ]
  %pathsize.0492 = phi i64 [ 4096, %while.body.lr.ph ], [ %pathsize.7, %if.end293 ]
  %colored.0491 = phi i32 [ 0, %while.body.lr.ph ], [ %colored.1, %if.end293 ]
  %7 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool6 = icmp eq i32 %7, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %while.body
  call void @indent(i32 %conv) #5
  %.pre = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  br label %if.end8

if.end8:                                          ; preds = %while.body, %if.then7
  %8 = phi %struct._info* [ %6, %while.body ], [ %.pre, %if.then7 ]
  %call9 = call i8* @fillinfo(i8* %path.0493, %struct._info* %8) #5
  %9 = load i8, i8* %path.0493, align 1, !tbaa !2
  %cmp12 = icmp eq i8 %9, 32
  br i1 %cmp12, label %for.body.lr.ph, label %if.end31

for.body.lr.ph:                                   ; preds = %if.end8
  store i8 91, i8* %path.0493, align 1, !tbaa !2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %10 = phi i8 [ 91, %for.body.lr.ph ], [ %13, %for.inc ]
  %cmp21 = icmp eq i8 %10, 32
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %for.body
  %12 = load i8*, i8** @sp, align 8, !tbaa !5
  %fputs425 = call i32 @fputs(i8* %12, %struct._IO_FILE* %11)
  br label %for.inc

if.else:                                          ; preds = %for.body
  %conv20 = sext i8 %10 to i32
  %fputc = call i32 @fputc(i32 %conv20, %struct._IO_FILE* %11)
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %if.else
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %arrayidx16 = getelementptr inbounds i8, i8* %path.0493, i64 %indvars.iv.next
  %13 = load i8, i8* %arrayidx16, align 1, !tbaa !2
  %tobool17 = icmp eq i8 %13, 0
  br i1 %tobool17, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %15 = load i8*, i8** @sp, align 8, !tbaa !5
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.90, i64 0, i64 0), i8* %15, i8* %15)
  br label %if.end31

if.end31:                                         ; preds = %for.end, %if.end8
  %16 = load i32, i32* @colorize, align 4, !tbaa !2
  %tobool32 = icmp eq i32 %16, 0
  br i1 %tobool32, label %if.end45, label %if.then33

if.then33:                                        ; preds = %if.end31
  %17 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %lnk = getelementptr inbounds %struct._info, %struct._info* %17, i64 0, i32 1
  %18 = load i8*, i8** %lnk, align 8, !tbaa !35
  %tobool34 = icmp ne i8* %18, null
  %19 = load i32, i32* @linktargetcolor, align 4
  %tobool35 = icmp ne i32 %19, 0
  %or.cond = and i1 %tobool34, %tobool35
  %lnkmode = getelementptr inbounds %struct._info, %struct._info* %17, i64 0, i32 8
  %mode = getelementptr inbounds %struct._info, %struct._info* %17, i64 0, i32 7
  %.sink.in = select i1 %or.cond, i32* %lnkmode, i32* %mode
  %.sink = load i32, i32* %.sink.in, align 4, !tbaa !15
  %conv37 = trunc i32 %.sink to i16
  %name = getelementptr inbounds %struct._info, %struct._info* %17, i64 0, i32 0
  %20 = load i8*, i8** %name, align 8, !tbaa !11
  %orphan = getelementptr inbounds %struct._info, %struct._info* %17, i64 0, i32 6
  %21 = load i32, i32* %orphan, align 8, !tbaa !36
  %call38 = call i32 @color(i16 zeroext %conv37, i8* %20, i32 %21, i32 0) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then33, %if.end31
  %colored.1 = phi i32 [ %colored.0491, %if.end31 ], [ %call38, %if.then33 ]
  %22 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool46 = icmp eq i32 %22, 0
  br i1 %tobool46, label %if.else72, label %if.then47

if.then47:                                        ; preds = %if.end45
  %call48 = call i64 @strlen(i8* %d) #13
  %23 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %name49 = getelementptr inbounds %struct._info, %struct._info* %23, i64 0, i32 0
  %24 = load i8*, i8** %name49, align 8, !tbaa !11
  %call50 = call i64 @strlen(i8* %24) #13
  %add = add i64 %call50, %call48
  %add51 = add i64 %add, 2
  %cmp52 = icmp ugt i64 %add51, %pathsize.0492
  br i1 %cmp52, label %if.then54, label %if.end62

if.then54:                                        ; preds = %if.then47
  %add59 = add i64 %add, 1024
  %call61 = call i8* @xrealloc(i8* nonnull %path.0493, i64 %add59) #5
  %.pre498 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %name69.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre498, i64 0, i32 0
  %.pre499 = load i8*, i8** %name69.phi.trans.insert, align 8, !tbaa !11
  br label %if.end62

if.end62:                                         ; preds = %if.then54, %if.then47
  %25 = phi i8* [ %.pre499, %if.then54 ], [ %24, %if.then47 ]
  %pathsize.1 = phi i64 [ %add59, %if.then54 ], [ %pathsize.0492, %if.then47 ]
  %path.1 = phi i8* [ %call61, %if.then54 ], [ %path.0493, %if.then47 ]
  %call63 = call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.91, i64 0, i64 0)) #13
  %tobool64 = icmp eq i32 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.else68

if.then65:                                        ; preds = %if.end62
  %call67 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9.92, i64 0, i64 0), i8* %d, i8* %25) #5
  br label %if.end88

if.else68:                                        ; preds = %if.end62
  %call70 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10.93, i64 0, i64 0), i8* %d, i8* %25) #5
  br label %if.end88

if.else72:                                        ; preds = %if.end45
  %26 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %name73 = getelementptr inbounds %struct._info, %struct._info* %26, i64 0, i32 0
  %27 = load i8*, i8** %name73, align 8, !tbaa !11
  %call74 = call i64 @strlen(i8* %27) #13
  %add75 = add i64 %call74, 1
  %cmp77 = icmp ugt i64 %add75, %pathsize.0492
  br i1 %cmp77, label %if.then79, label %if.end85

if.then79:                                        ; preds = %if.else72
  %add82 = add i64 %call74, 1024
  %call84 = call i8* @xrealloc(i8* nonnull %path.0493, i64 %add82) #5
  %.pre500 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %name86.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre500, i64 0, i32 0
  %.pre501 = load i8*, i8** %name86.phi.trans.insert, align 8, !tbaa !11
  br label %if.end85

if.end85:                                         ; preds = %if.then79, %if.else72
  %28 = phi i8* [ %.pre501, %if.then79 ], [ %27, %if.else72 ]
  %pathsize.2 = phi i64 [ %add82, %if.then79 ], [ %pathsize.0492, %if.else72 ]
  %path.2 = phi i8* [ %call84, %if.then79 ], [ %path.0493, %if.else72 ]
  %strlen = call i64 @strlen(i8* %28)
  %leninc = add i64 %strlen, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %path.2, i8* %28, i64 %leninc, i32 1, i1 false)
  br label %if.end88

if.end88:                                         ; preds = %if.then65, %if.else68, %if.end85
  %pathsize.3 = phi i64 [ %pathsize.1, %if.else68 ], [ %pathsize.1, %if.then65 ], [ %pathsize.2, %if.end85 ]
  %path.3 = phi i8* [ %path.1, %if.else68 ], [ %path.1, %if.then65 ], [ %path.2, %if.end85 ]
  %29 = load i32, i32* @Rflag, align 4, !tbaa !2
  %tobool89 = icmp eq i32 %29, 0
  br i1 %tobool89, label %if.else154, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %if.end88
  %30 = load i32, i32* @Level, align 4, !tbaa !15
  %conv91 = sext i32 %30 to i64
  %cmp92 = icmp eq i64 %conv91, %lev
  br i1 %cmp92, label %land.lhs.true94, label %if.else154

land.lhs.true94:                                  ; preds = %land.lhs.true90
  %31 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %isdir = getelementptr inbounds %struct._info, %struct._info* %31, i64 0, i32 2
  %32 = load i32, i32* %isdir, align 8, !tbaa !7
  %tobool95 = icmp eq i32 %32, 0
  br i1 %tobool95, label %if.else154, label %if.then96

if.then96:                                        ; preds = %land.lhs.true94
  %33 = load i32, i32* @nolinks, align 4, !tbaa !2
  %tobool97 = icmp eq i32 %33, 0
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  br i1 %tobool97, label %if.else101, label %if.then98

if.then98:                                        ; preds = %if.then96
  %name99 = getelementptr inbounds %struct._info, %struct._info* %31, i64 0, i32 0
  %35 = load i8*, i8** %name99, align 8, !tbaa !11
  %fputs424 = call i32 @fputs(i8* %35, %struct._IO_FILE* %34)
  br label %if.end109

if.else101:                                       ; preds = %if.then96
  %36 = load i8*, i8** @host, align 8, !tbaa !5
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11.94, i64 0, i64 0), i8* %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %38 = load i8, i8* %add.ptr205, align 1, !tbaa !2
  %tobool17.i = icmp eq i8 %38, 0
  br i1 %tobool17.i, label %url_encode.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.else101
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %39 = phi i8 [ %44, %for.inc.i ], [ %38, %for.body.i.preheader ]
  %s.addr.018.i = phi i8* [ %incdec.ptr.i, %for.inc.i ], [ %add.ptr205, %for.body.i.preheader ]
  %conv.i = sext i8 %39 to i32
  switch i32 %conv.i, label %sw.default.i [
    i32 32, label %sw.bb.i
    i32 34, label %sw.bb.i
    i32 35, label %sw.bb.i
    i32 37, label %sw.bb.i
    i32 60, label %sw.bb.i
    i32 62, label %sw.bb.i
    i32 91, label %sw.bb.i
    i32 93, label %sw.bb.i
    i32 94, label %sw.bb.i
    i32 92, label %sw.bb.i
    i32 63, label %sw.bb.i
    i32 43, label %sw.bb.i
    i32 38, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i, %for.body.i
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i32 %conv.i) #5
  br label %for.inc.i

sw.bb2.i:                                         ; preds = %for.body.i
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30.96, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %37) #5
  br label %for.inc.i

sw.default.i:                                     ; preds = %for.body.i
  %call4.i = tail call i16** @__ctype_b_loc() #17
  %41 = load i16*, i16** %call4.i, align 8, !tbaa !5
  %idxprom.i = sext i8 %39 to i64
  %arrayidx.i = getelementptr inbounds i16, i16* %41, i64 %idxprom.i
  %42 = load i16, i16* %arrayidx.i, align 2, !tbaa !27
  %43 = and i16 %42, 16384
  %tobool7.i = icmp eq i16 %43, 0
  %cond.i = select i1 %tobool7.i, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.97, i64 0, i64 0)
  %conv8.i = zext i8 %39 to i32
  %call9.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* %cond.i, i32 %conv8.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.default.i, %sw.bb2.i, %sw.bb.i
  %incdec.ptr.i = getelementptr inbounds i8, i8* %s.addr.018.i, i64 1
  %44 = load i8, i8* %incdec.ptr.i, align 1, !tbaa !2
  %tobool.i = icmp eq i8 %44, 0
  br i1 %tobool.i, label %url_encode.exit.loopexit, label %for.body.i

url_encode.exit.loopexit:                         ; preds = %for.inc.i
  %.pre502 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  br label %url_encode.exit

url_encode.exit:                                  ; preds = %url_encode.exit.loopexit, %if.else101
  %45 = phi %struct._IO_FILE* [ %.pre502, %url_encode.exit.loopexit ], [ %37, %if.else101 ]
  %call104 = call i32 @_IO_putc(i32 47, %struct._IO_FILE* %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %47 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %name105 = getelementptr inbounds %struct._info, %struct._info* %47, i64 0, i32 0
  %48 = load i8*, i8** %name105, align 8, !tbaa !11
  %49 = load i8, i8* %48, align 1, !tbaa !2
  %tobool17.i427 = icmp eq i8 %49, 0
  br i1 %tobool17.i427, label %url_encode.exit446, label %for.body.i431.preheader

for.body.i431.preheader:                          ; preds = %url_encode.exit
  br label %for.body.i431

for.body.i431:                                    ; preds = %for.body.i431.preheader, %for.inc.i445
  %50 = phi i8 [ %55, %for.inc.i445 ], [ %49, %for.body.i431.preheader ]
  %s.addr.018.i429 = phi i8* [ %incdec.ptr.i443, %for.inc.i445 ], [ %48, %for.body.i431.preheader ]
  %conv.i430 = sext i8 %50 to i32
  switch i32 %conv.i430, label %sw.default.i442 [
    i32 32, label %sw.bb.i433
    i32 34, label %sw.bb.i433
    i32 35, label %sw.bb.i433
    i32 37, label %sw.bb.i433
    i32 60, label %sw.bb.i433
    i32 62, label %sw.bb.i433
    i32 91, label %sw.bb.i433
    i32 93, label %sw.bb.i433
    i32 94, label %sw.bb.i433
    i32 92, label %sw.bb.i433
    i32 63, label %sw.bb.i433
    i32 43, label %sw.bb.i433
    i32 38, label %sw.bb2.i434
  ]

sw.bb.i433:                                       ; preds = %for.body.i431, %for.body.i431, %for.body.i431, %for.body.i431, %for.body.i431, %for.body.i431, %for.body.i431, %for.body.i431, %for.body.i431, %for.body.i431, %for.body.i431, %for.body.i431
  %call.i432 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i32 %conv.i430) #5
  br label %for.inc.i445

sw.bb2.i434:                                      ; preds = %for.body.i431
  %51 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30.96, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %46) #5
  br label %for.inc.i445

sw.default.i442:                                  ; preds = %for.body.i431
  %call4.i435 = tail call i16** @__ctype_b_loc() #17
  %52 = load i16*, i16** %call4.i435, align 8, !tbaa !5
  %idxprom.i436 = sext i8 %50 to i64
  %arrayidx.i437 = getelementptr inbounds i16, i16* %52, i64 %idxprom.i436
  %53 = load i16, i16* %arrayidx.i437, align 2, !tbaa !27
  %54 = and i16 %53, 16384
  %tobool7.i438 = icmp eq i16 %54, 0
  %cond.i439 = select i1 %tobool7.i438, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.97, i64 0, i64 0)
  %conv8.i440 = zext i8 %50 to i32
  %call9.i441 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* %cond.i439, i32 %conv8.i440) #5
  br label %for.inc.i445

for.inc.i445:                                     ; preds = %sw.default.i442, %sw.bb2.i434, %sw.bb.i433
  %incdec.ptr.i443 = getelementptr inbounds i8, i8* %s.addr.018.i429, i64 1
  %55 = load i8, i8* %incdec.ptr.i443, align 1, !tbaa !2
  %tobool.i444 = icmp eq i8 %55, 0
  br i1 %tobool.i444, label %url_encode.exit446.loopexit, label %for.body.i431

url_encode.exit446.loopexit:                      ; preds = %for.inc.i445
  %.pre503 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  br label %url_encode.exit446

url_encode.exit446:                               ; preds = %url_encode.exit446.loopexit, %url_encode.exit
  %56 = phi %struct._IO_FILE* [ %.pre503, %url_encode.exit446.loopexit ], [ %46, %url_encode.exit ]
  %57 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12.98, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %56)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %59 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %name107 = getelementptr inbounds %struct._info, %struct._info* %59, i64 0, i32 0
  %60 = load i8*, i8** %name107, align 8, !tbaa !11
  call void @html_encode(%struct._IO_FILE* %58, i8* %60)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %62 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13.99, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %61)
  br label %if.end109

if.end109:                                        ; preds = %url_encode.exit446, %if.then98
  %call110 = call i8* (...) bitcast (i8* ()* @gnu_getcwd to i8* (...)*)() #5
  %call111 = call i64 @strlen(i8* %call110) #13
  %call112 = call i64 @strlen(i8* %d) #13
  %add113 = add i64 %call112, %call111
  %63 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %name114 = getelementptr inbounds %struct._info, %struct._info* %63, i64 0, i32 0
  %64 = load i8*, i8** %name114, align 8, !tbaa !11
  %call115 = call i64 @strlen(i8* %64) #13
  %add116 = add i64 %add113, %call115
  %add117 = add i64 %add116, 2
  %cmp119 = icmp ugt i64 %add117, %pathsize.3
  br i1 %cmp119, label %if.then121, label %if.end131

if.then121:                                       ; preds = %if.end109
  %add128 = add i64 %add116, 1024
  %call130 = call i8* @xrealloc(i8* %path.3, i64 %add128) #5
  %.pre504 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %name133.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre504, i64 0, i32 0
  %.pre505 = load i8*, i8** %name133.phi.trans.insert, align 8, !tbaa !11
  br label %if.end131

if.end131:                                        ; preds = %if.then121, %if.end109
  %65 = phi i8* [ %.pre505, %if.then121 ], [ %64, %if.end109 ]
  %pathsize.4 = phi i64 [ %add128, %if.then121 ], [ %pathsize.3, %if.end109 ]
  %path.4 = phi i8* [ %call130, %if.then121 ], [ %path.3, %if.end109 ]
  %call134 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14.100, i64 0, i64 0), i8* %call110, i8* %add.ptr205, i8* %65) #5
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15.101, i64 0, i64 0), i8* %path.4) #16
  %67 = load i8*, i8** @host, align 8, !tbaa !5
  %call136 = call i64 @strlen(i8* %67) #13
  %call138 = call i64 @strlen(i8* %d) #13
  %68 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %name140 = getelementptr inbounds %struct._info, %struct._info* %68, i64 0, i32 0
  %69 = load i8*, i8** %name140, align 8, !tbaa !11
  %call141 = call i64 @strlen(i8* %69) #13
  %call145 = call i64 @strlen(i8* %path.4) #13
  %mul146 = shl i64 %call145, 1
  %add139 = add i64 %call136, 59
  %add142 = add i64 %add139, %call138
  %add144 = add i64 %add142, %call141
  %add147 = add i64 %add144, %mul146
  %call148 = call i8* @xmalloc(i64 %add147) #5
  %70 = load i8*, i8** @host, align 8, !tbaa !5
  %71 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %name150 = getelementptr inbounds %struct._info, %struct._info* %71, i64 0, i32 0
  %72 = load i8*, i8** %name150, align 8, !tbaa !11
  %73 = load i32, i32* @Level, align 4, !tbaa !15
  %add151 = add nsw i32 %73, 1
  %call152 = call i32 (i8*, i8*, ...) @sprintf(i8* %call148, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16.102, i64 0, i64 0), i8* %70, i8* %add.ptr205, i8* %72, i32 %add151, i8* %path.4, i8* %path.4) #5
  %call153 = call i32 @system(i8* %call148) #5
  call void @free(i8* %call110) #5
  call void @free(i8* %call148) #5
  br label %if.end225

if.else154:                                       ; preds = %land.lhs.true94, %if.end88, %land.lhs.true90
  %74 = load i32, i32* @nolinks, align 4, !tbaa !2
  %tobool155 = icmp eq i32 %74, 0
  %75 = load i32, i32* @force_color, align 4, !tbaa !2
  %tobool157 = icmp ne i32 %75, 0
  br i1 %tobool155, label %if.else179, label %if.then156

if.then156:                                       ; preds = %if.else154
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %77 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  br i1 %tobool157, label %if.then158, label %if.else175

if.then158:                                       ; preds = %if.then156
  %isdir159 = getelementptr inbounds %struct._info, %struct._info* %77, i64 0, i32 2
  %78 = load i32, i32* %isdir159, align 8, !tbaa !7
  %tobool160 = icmp eq i32 %78, 0
  br i1 %tobool160, label %cond.false, label %cond.end171

cond.false:                                       ; preds = %if.then158
  %isexe = getelementptr inbounds %struct._info, %struct._info* %77, i64 0, i32 5
  %79 = load i32, i32* %isexe, align 4, !tbaa !53
  %tobool161 = icmp eq i32 %79, 0
  br i1 %tobool161, label %cond.false163, label %cond.end171

cond.false163:                                    ; preds = %cond.false
  %isfifo = getelementptr inbounds %struct._info, %struct._info* %77, i64 0, i32 4
  %80 = load i32, i32* %isfifo, align 8, !tbaa !54
  %tobool164 = icmp eq i32 %80, 0
  br i1 %tobool164, label %cond.false166, label %cond.end171

cond.false166:                                    ; preds = %cond.false163
  %issok = getelementptr inbounds %struct._info, %struct._info* %77, i64 0, i32 3
  %81 = load i32, i32* %issok, align 4, !tbaa !55
  %tobool167 = icmp eq i32 %81, 0
  %cond = select i1 %tobool167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22.103, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21.104, i64 0, i64 0)
  br label %cond.end171

cond.end171:                                      ; preds = %cond.false163, %cond.false, %if.then158, %cond.false166
  %cond172 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18.105, i64 0, i64 0), %if.then158 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19.106, i64 0, i64 0), %cond.false ], [ %cond, %cond.false166 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20.107, i64 0, i64 0), %cond.false163 ]
  %name173 = getelementptr inbounds %struct._info, %struct._info* %77, i64 0, i32 0
  %82 = load i8*, i8** %name173, align 8, !tbaa !11
  %call174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17.108, i64 0, i64 0), i8* %cond172, i8* %82)
  br label %if.end225

if.else175:                                       ; preds = %if.then156
  %name176 = getelementptr inbounds %struct._info, %struct._info* %77, i64 0, i32 0
  %83 = load i8*, i8** %name176, align 8, !tbaa !11
  %fputs423 = call i32 @fputs(i8* %83, %struct._IO_FILE* %76)
  br label %if.end225

if.else179:                                       ; preds = %if.else154
  br i1 %tobool157, label %if.then181, label %if.else212

if.then181:                                       ; preds = %if.else179
  %84 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %isdir182 = getelementptr inbounds %struct._info, %struct._info* %84, i64 0, i32 2
  %85 = load i32, i32* %isdir182, align 8, !tbaa !7
  %tobool183 = icmp eq i32 %85, 0
  br i1 %tobool183, label %cond.false185, label %cond.end201

cond.false185:                                    ; preds = %if.then181
  %isexe186 = getelementptr inbounds %struct._info, %struct._info* %84, i64 0, i32 5
  %86 = load i32, i32* %isexe186, align 4, !tbaa !53
  %tobool187 = icmp eq i32 %86, 0
  br i1 %tobool187, label %cond.false189, label %cond.end201

cond.false189:                                    ; preds = %cond.false185
  %isfifo190 = getelementptr inbounds %struct._info, %struct._info* %84, i64 0, i32 4
  %87 = load i32, i32* %isfifo190, align 8, !tbaa !54
  %tobool191 = icmp eq i32 %87, 0
  br i1 %tobool191, label %cond.false193, label %cond.end201

cond.false193:                                    ; preds = %cond.false189
  %issok194 = getelementptr inbounds %struct._info, %struct._info* %84, i64 0, i32 3
  %88 = load i32, i32* %issok194, align 4, !tbaa !55
  %tobool195 = icmp eq i32 %88, 0
  %cond196 = select i1 %tobool195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22.103, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21.104, i64 0, i64 0)
  br label %cond.end201

cond.end201:                                      ; preds = %cond.false189, %cond.false185, %if.then181, %cond.false193
  %cond202 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18.105, i64 0, i64 0), %if.then181 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19.106, i64 0, i64 0), %cond.false185 ], [ %cond196, %cond.false193 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20.107, i64 0, i64 0), %cond.false189 ]
  %strlen421 = call i64 @strlen(i8* %cond202)
  %leninc422 = add i64 %strlen421, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %0, i8* %cond202, i64 %leninc422, i32 1, i1 false)
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %90 = load i8*, i8** @host, align 8, !tbaa !5
  %91 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %name206 = getelementptr inbounds %struct._info, %struct._info* %91, i64 0, i32 0
  %92 = load i8*, i8** %name206, align 8, !tbaa !11
  %isdir207 = getelementptr inbounds %struct._info, %struct._info* %91, i64 0, i32 2
  %93 = load i32, i32* %isdir207, align 8, !tbaa !7
  %tobool208 = icmp eq i32 %93, 0
  %cond209 = select i1 %tobool208, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24.109, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.91, i64 0, i64 0)
  %call211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23.110, i64 0, i64 0), i8* nonnull %0, i8* %90, i8* %add.ptr205, i8* %92, i8* %cond209, i8* %92)
  br label %if.end225

if.else212:                                       ; preds = %if.else179
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %95 = load i8*, i8** @host, align 8, !tbaa !5
  %call213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11.94, i64 0, i64 0), i8* %95)
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %97 = load i8, i8* %add.ptr205, align 1, !tbaa !2
  %tobool17.i447 = icmp eq i8 %97, 0
  br i1 %tobool17.i447, label %url_encode.exit466, label %for.body.i451.preheader

for.body.i451.preheader:                          ; preds = %if.else212
  br label %for.body.i451

for.body.i451:                                    ; preds = %for.body.i451.preheader, %for.inc.i465
  %98 = phi i8 [ %103, %for.inc.i465 ], [ %97, %for.body.i451.preheader ]
  %s.addr.018.i449 = phi i8* [ %incdec.ptr.i463, %for.inc.i465 ], [ %add.ptr205, %for.body.i451.preheader ]
  %conv.i450 = sext i8 %98 to i32
  switch i32 %conv.i450, label %sw.default.i462 [
    i32 32, label %sw.bb.i453
    i32 34, label %sw.bb.i453
    i32 35, label %sw.bb.i453
    i32 37, label %sw.bb.i453
    i32 60, label %sw.bb.i453
    i32 62, label %sw.bb.i453
    i32 91, label %sw.bb.i453
    i32 93, label %sw.bb.i453
    i32 94, label %sw.bb.i453
    i32 92, label %sw.bb.i453
    i32 63, label %sw.bb.i453
    i32 43, label %sw.bb.i453
    i32 38, label %sw.bb2.i454
  ]

sw.bb.i453:                                       ; preds = %for.body.i451, %for.body.i451, %for.body.i451, %for.body.i451, %for.body.i451, %for.body.i451, %for.body.i451, %for.body.i451, %for.body.i451, %for.body.i451, %for.body.i451, %for.body.i451
  %call.i452 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i32 %conv.i450) #5
  br label %for.inc.i465

sw.bb2.i454:                                      ; preds = %for.body.i451
  %99 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30.96, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %96) #5
  br label %for.inc.i465

sw.default.i462:                                  ; preds = %for.body.i451
  %call4.i455 = tail call i16** @__ctype_b_loc() #17
  %100 = load i16*, i16** %call4.i455, align 8, !tbaa !5
  %idxprom.i456 = sext i8 %98 to i64
  %arrayidx.i457 = getelementptr inbounds i16, i16* %100, i64 %idxprom.i456
  %101 = load i16, i16* %arrayidx.i457, align 2, !tbaa !27
  %102 = and i16 %101, 16384
  %tobool7.i458 = icmp eq i16 %102, 0
  %cond.i459 = select i1 %tobool7.i458, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.97, i64 0, i64 0)
  %conv8.i460 = zext i8 %98 to i32
  %call9.i461 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* %cond.i459, i32 %conv8.i460) #5
  br label %for.inc.i465

for.inc.i465:                                     ; preds = %sw.default.i462, %sw.bb2.i454, %sw.bb.i453
  %incdec.ptr.i463 = getelementptr inbounds i8, i8* %s.addr.018.i449, i64 1
  %103 = load i8, i8* %incdec.ptr.i463, align 1, !tbaa !2
  %tobool.i464 = icmp eq i8 %103, 0
  br i1 %tobool.i464, label %url_encode.exit466.loopexit, label %for.body.i451

url_encode.exit466.loopexit:                      ; preds = %for.inc.i465
  %.pre506 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  br label %url_encode.exit466

url_encode.exit466:                               ; preds = %url_encode.exit466.loopexit, %if.else212
  %104 = phi %struct._IO_FILE* [ %.pre506, %url_encode.exit466.loopexit ], [ %96, %if.else212 ]
  %call215 = call i32 @_IO_putc(i32 47, %struct._IO_FILE* %104)
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %106 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %name216 = getelementptr inbounds %struct._info, %struct._info* %106, i64 0, i32 0
  %107 = load i8*, i8** %name216, align 8, !tbaa !11
  %108 = load i8, i8* %107, align 1, !tbaa !2
  %tobool17.i467 = icmp eq i8 %108, 0
  br i1 %tobool17.i467, label %url_encode.exit486, label %for.body.i471.preheader

for.body.i471.preheader:                          ; preds = %url_encode.exit466
  br label %for.body.i471

for.body.i471:                                    ; preds = %for.body.i471.preheader, %for.inc.i485
  %109 = phi i8 [ %114, %for.inc.i485 ], [ %108, %for.body.i471.preheader ]
  %s.addr.018.i469 = phi i8* [ %incdec.ptr.i483, %for.inc.i485 ], [ %107, %for.body.i471.preheader ]
  %conv.i470 = sext i8 %109 to i32
  switch i32 %conv.i470, label %sw.default.i482 [
    i32 32, label %sw.bb.i473
    i32 34, label %sw.bb.i473
    i32 35, label %sw.bb.i473
    i32 37, label %sw.bb.i473
    i32 60, label %sw.bb.i473
    i32 62, label %sw.bb.i473
    i32 91, label %sw.bb.i473
    i32 93, label %sw.bb.i473
    i32 94, label %sw.bb.i473
    i32 92, label %sw.bb.i473
    i32 63, label %sw.bb.i473
    i32 43, label %sw.bb.i473
    i32 38, label %sw.bb2.i474
  ]

sw.bb.i473:                                       ; preds = %for.body.i471, %for.body.i471, %for.body.i471, %for.body.i471, %for.body.i471, %for.body.i471, %for.body.i471, %for.body.i471, %for.body.i471, %for.body.i471, %for.body.i471, %for.body.i471
  %call.i472 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i32 %conv.i470) #5
  br label %for.inc.i485

sw.bb2.i474:                                      ; preds = %for.body.i471
  %110 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30.96, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %105) #5
  br label %for.inc.i485

sw.default.i482:                                  ; preds = %for.body.i471
  %call4.i475 = tail call i16** @__ctype_b_loc() #17
  %111 = load i16*, i16** %call4.i475, align 8, !tbaa !5
  %idxprom.i476 = sext i8 %109 to i64
  %arrayidx.i477 = getelementptr inbounds i16, i16* %111, i64 %idxprom.i476
  %112 = load i16, i16* %arrayidx.i477, align 2, !tbaa !27
  %113 = and i16 %112, 16384
  %tobool7.i478 = icmp eq i16 %113, 0
  %cond.i479 = select i1 %tobool7.i478, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32.95, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.97, i64 0, i64 0)
  %conv8.i480 = zext i8 %109 to i32
  %call9.i481 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* %cond.i479, i32 %conv8.i480) #5
  br label %for.inc.i485

for.inc.i485:                                     ; preds = %sw.default.i482, %sw.bb2.i474, %sw.bb.i473
  %incdec.ptr.i483 = getelementptr inbounds i8, i8* %s.addr.018.i469, i64 1
  %114 = load i8, i8* %incdec.ptr.i483, align 1, !tbaa !2
  %tobool.i484 = icmp eq i8 %114, 0
  br i1 %tobool.i484, label %url_encode.exit486.loopexit, label %for.body.i471

url_encode.exit486.loopexit:                      ; preds = %for.inc.i485
  %.pre507 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %.pre508 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  br label %url_encode.exit486

url_encode.exit486:                               ; preds = %url_encode.exit486.loopexit, %url_encode.exit466
  %115 = phi %struct._info* [ %.pre508, %url_encode.exit486.loopexit ], [ %106, %url_encode.exit466 ]
  %116 = phi %struct._IO_FILE* [ %.pre507, %url_encode.exit486.loopexit ], [ %105, %url_encode.exit466 ]
  %isdir217 = getelementptr inbounds %struct._info, %struct._info* %115, i64 0, i32 2
  %117 = load i32, i32* %isdir217, align 8, !tbaa !7
  %tobool218 = icmp eq i32 %117, 0
  %cond219 = select i1 %tobool218, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24.109, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.91, i64 0, i64 0)
  %call220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25.111, i64 0, i64 0), i8* %cond219)
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %119 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %name221 = getelementptr inbounds %struct._info, %struct._info* %119, i64 0, i32 0
  %120 = load i8*, i8** %name221, align 8, !tbaa !11
  call void @html_encode(%struct._IO_FILE* %118, i8* %120)
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %122 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26.112, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %121)
  br label %if.end225

if.end225:                                        ; preds = %if.else175, %cond.end171, %url_encode.exit486, %cond.end201, %if.end131
  %pathsize.5 = phi i64 [ %pathsize.4, %if.end131 ], [ %pathsize.3, %cond.end171 ], [ %pathsize.3, %if.else175 ], [ %pathsize.3, %cond.end201 ], [ %pathsize.3, %url_encode.exit486 ]
  %path.5 = phi i8* [ %path.4, %if.end131 ], [ %path.3, %cond.end171 ], [ %path.3, %if.else175 ], [ %path.3, %cond.end201 ], [ %path.3, %url_encode.exit486 ]
  %tobool226 = icmp eq i32 %colored.1, 0
  br i1 %tobool226, label %if.end229, label %if.then227

if.then227:                                       ; preds = %if.end225
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %124 = load i8*, i8** @endcode, align 8, !tbaa !5
  %fputs = call i32 @fputs(i8* %124, %struct._IO_FILE* %123)
  br label %if.end229

if.end229:                                        ; preds = %if.end225, %if.then227
  %125 = load i32, i32* @Fflag, align 4, !tbaa !2
  %tobool230 = icmp eq i32 %125, 0
  br i1 %tobool230, label %if.end242, label %land.lhs.true231

land.lhs.true231:                                 ; preds = %if.end229
  %126 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %lnk232 = getelementptr inbounds %struct._info, %struct._info* %126, i64 0, i32 1
  %127 = load i8*, i8** %lnk232, align 8, !tbaa !35
  %tobool233 = icmp eq i8* %127, null
  br i1 %tobool233, label %if.then234, label %if.end242

if.then234:                                       ; preds = %land.lhs.true231
  %mode235 = getelementptr inbounds %struct._info, %struct._info* %126, i64 0, i32 7
  %128 = load i32, i32* %mode235, align 4, !tbaa !30
  %call236 = call signext i8 @Ftype(i32 %128) #5
  %tobool238 = icmp eq i8 %call236, 0
  br i1 %tobool238, label %if.end242, label %if.then239

if.then239:                                       ; preds = %if.then234
  %conv237 = sext i8 %call236 to i32
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call240 = call i32 @fputc(i32 %conv237, %struct._IO_FILE* %129)
  br label %if.end242

if.end242:                                        ; preds = %if.then234, %land.lhs.true231, %if.end229, %if.then239
  %130 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %child = getelementptr inbounds %struct._info, %struct._info* %130, i64 0, i32 18
  %131 = load %struct._info**, %struct._info*** %child, align 8, !tbaa !38
  %tobool243 = icmp eq %struct._info** %131, null
  br i1 %tobool243, label %if.else272, label %if.then244

if.then244:                                       ; preds = %if.end242
  %call245 = call i64 @strlen(i8* %d) #13
  %name246 = getelementptr inbounds %struct._info, %struct._info* %130, i64 0, i32 0
  %132 = load i8*, i8** %name246, align 8, !tbaa !11
  %call247 = call i64 @strlen(i8* %132) #13
  %add248 = add i64 %call247, %call245
  %add249 = add i64 %add248, 2
  %cmp250 = icmp ugt i64 %add249, %pathsize.5
  br i1 %cmp250, label %if.then252, label %if.end259

if.then252:                                       ; preds = %if.then244
  %add257 = add i64 %add248, 1024
  %call258 = call i8* @xrealloc(i8* %path.5, i64 %add257) #5
  %.pre509 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %name266.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre509, i64 0, i32 0
  %.pre510 = load i8*, i8** %name266.phi.trans.insert, align 8, !tbaa !11
  br label %if.end259

if.end259:                                        ; preds = %if.then252, %if.then244
  %133 = phi i8* [ %.pre510, %if.then252 ], [ %132, %if.then244 ]
  %pathsize.6 = phi i64 [ %add257, %if.then252 ], [ %pathsize.5, %if.then244 ]
  %path.6 = phi i8* [ %call258, %if.then252 ], [ %path.5, %if.then244 ]
  %call260 = call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.91, i64 0, i64 0)) #13
  %tobool261 = icmp eq i32 %call260, 0
  br i1 %tobool261, label %if.then262, label %if.else265

if.then262:                                       ; preds = %if.end259
  %call264 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9.92, i64 0, i64 0), i8* %d, i8* %133) #5
  br label %if.end268

if.else265:                                       ; preds = %if.end259
  %call267 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10.93, i64 0, i64 0), i8* %d, i8* %133) #5
  br label %if.end268

if.end268:                                        ; preds = %if.else265, %if.then262
  %134 = load %struct._info*, %struct._info** %dir.addr.0494, align 8, !tbaa !5
  %child269 = getelementptr inbounds %struct._info, %struct._info* %134, i64 0, i32 18
  %135 = load %struct._info**, %struct._info*** %child269, align 8, !tbaa !38
  call void @htmlr_listdir(%struct._info** %135, i8* %path.6, i32* %dt, i32* %ft, i64 %add270)
  br label %if.end280

if.else272:                                       ; preds = %if.end242
  %isdir273 = getelementptr inbounds %struct._info, %struct._info* %130, i64 0, i32 2
  %136 = load i32, i32* %isdir273, align 8, !tbaa !7
  %tobool274 = icmp eq i32 %136, 0
  %.sink305 = select i1 %tobool274, i32* %ft, i32* %dt
  br label %if.end280

if.end280:                                        ; preds = %if.else272, %if.end268
  %nlf.1 = phi i32 [ 1, %if.end268 ], [ 0, %if.else272 ]
  %pathsize.7 = phi i64 [ %pathsize.6, %if.end268 ], [ %pathsize.5, %if.else272 ]
  %path.7 = phi i8* [ %path.6, %if.end268 ], [ %path.5, %if.else272 ]
  %.sink305.sink306 = phi i32* [ %dt, %if.end268 ], [ %.sink305, %if.else272 ]
  %137 = load i32, i32* %.sink305.sink306, align 4, !tbaa !15
  %add278 = add nsw i32 %137, 1
  store i32 %add278, i32* %.sink305.sink306, align 4, !tbaa !15
  %add.ptr281 = getelementptr inbounds %struct._info*, %struct._info** %dir.addr.0494, i64 1
  %138 = load %struct._info*, %struct._info** %add.ptr281, align 8, !tbaa !5
  %tobool282 = icmp eq %struct._info* %138, null
  br i1 %tobool282, label %if.end288, label %land.lhs.true283

land.lhs.true283:                                 ; preds = %if.end280
  %add.ptr284 = getelementptr inbounds %struct._info*, %struct._info** %dir.addr.0494, i64 2
  %139 = load %struct._info*, %struct._info** %add.ptr284, align 8, !tbaa !5
  %tobool285 = icmp eq %struct._info* %139, null
  br i1 %tobool285, label %if.then286, label %if.end288

if.then286:                                       ; preds = %land.lhs.true283
  %140 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx287 = getelementptr inbounds i32, i32* %140, i64 %lev
  store i32 2, i32* %arrayidx287, align 4, !tbaa !15
  br label %if.end288

if.end288:                                        ; preds = %land.lhs.true283, %if.end280, %if.then286
  %tobool289 = icmp eq i32 %nlf.1, 0
  br i1 %tobool289, label %if.else291, label %if.end293

if.else291:                                       ; preds = %if.end288
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %142 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.87, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %141)
  %.pre511 = load %struct._info*, %struct._info** %add.ptr281, align 8, !tbaa !5
  br label %if.end293

if.end293:                                        ; preds = %if.end288, %if.else291
  %143 = phi %struct._info* [ %138, %if.end288 ], [ %.pre511, %if.else291 ]
  %tobool5 = icmp eq %struct._info* %143, null
  br i1 %tobool5, label %while.end, label %while.body

while.end:                                        ; preds = %if.end293, %if.end
  %path.0.lcssa = phi i8* [ %call4, %if.end ], [ %path.7, %if.end293 ]
  %144 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx294 = getelementptr inbounds i32, i32* %144, i64 %lev
  store i32 0, i32* %arrayidx294, align 4, !tbaa !15
  call void @free(i8* %path.0.lcssa) #5
  call void @free_dir(%struct._info** nonnull %dir) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @xml_listdir(i8* %d, i32* %dt, i32* %ft, i64 %lev, i64 %dev) #2 {
entry:
  %sb = alloca %struct.stat, align 8
  %n = alloca i32, align 4
  %0 = bitcast %struct.stat* %sb to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #5
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %2 = load i32, i32* @Level, align 4, !tbaa !15
  %cmp = icmp sgt i32 %2, -1
  %conv = sext i32 %2 to i64
  %cmp1 = icmp ult i64 %conv, %lev
  %or.cond366 = and i1 %cmp, %cmp1
  br i1 %or.cond366, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call = tail call i32 @fputc(i32 10, %struct._IO_FILE* %4)
  br label %cleanup

if.end4:                                          ; preds = %entry
  %5 = load i32, i32* @xdev, align 4, !tbaa !2
  %tobool5 = icmp ne i32 %5, 0
  %cmp7 = icmp eq i64 %lev, 0
  %or.cond = and i1 %cmp7, %tobool5
  br i1 %or.cond, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end4
  %call.i = call i32 @__xstat(i32 1, i8* nonnull %d, %struct.stat* nonnull %sb) #5
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %sb, i64 0, i32 0
  %6 = load i64, i64* %st_dev, align 8, !tbaa !22
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end4
  %dev.addr.0 = phi i64 [ %6, %if.then9 ], [ %dev, %if.end4 ]
  %call12 = call %struct._info** @read_dir(i8* %d, i32* nonnull %n) #5
  %tobool13 = icmp eq %struct._info** %call12, null
  %7 = load i32, i32* %n, align 4
  %tobool15 = icmp ne i32 %7, 0
  %or.cond262 = and i1 %tobool13, %tobool15
  br i1 %or.cond262, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end11
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.153, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %8)
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  br i1 %tobool15, label %if.end25, label %if.then20

if.then20:                                        ; preds = %if.end18
  %10 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool21 = icmp eq i32 %10, 0
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.then20
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call23 = call i32 @fputc(i32 10, %struct._IO_FILE* %11)
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.then22
  call void @free_dir(%struct._info** %call12) #5
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %12 = load i32, i32* @flimit, align 4, !tbaa !2
  %cmp26 = icmp ne i32 %12, 0
  %cmp29 = icmp ugt i32 %7, %12
  %or.cond367 = and i1 %cmp26, %cmp29
  br i1 %or.cond367, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end25
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %14 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool32 = icmp eq i32 %14, 0
  %cond = select i1 %tobool32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.154, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.155, i64 0, i64 0)
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1.156, i64 0, i64 0), i32 %7, i8* %cond)
  call void @free_dir(%struct._info** %call12) #5
  br label %cleanup

if.end34:                                         ; preds = %if.end25
  %15 = load i32 (...)*, i32 (...)** @cmpfunc, align 8, !tbaa !5
  %tobool35 = icmp eq i32 (...)* %15, null
  br i1 %tobool35, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end34
  %16 = bitcast %struct._info** %call12 to i8*
  %conv37 = sext i32 %7 to i64
  %17 = bitcast i32 (...)* %15 to i32 (i8*, i8*)*
  call void @qsort(i8* %16, i64 %conv37, i64 8, i32 (i8*, i8*)* %17) #5
  br label %if.end38

if.end38:                                         ; preds = %if.end34, %if.then36
  %18 = load i32, i32* @maxdirs, align 4, !tbaa !15
  %sub = add nsw i32 %18, -1
  %conv39 = sext i32 %sub to i64
  %cmp40 = icmp ugt i64 %conv39, %lev
  br i1 %cmp40, label %if.end46, label %if.then42

if.then42:                                        ; preds = %if.end38
  %19 = load i8*, i8** bitcast (i32** @dirs to i8**), align 8, !tbaa !5
  %add = add nsw i32 %18, 1024
  store i32 %add, i32* @maxdirs, align 4, !tbaa !15
  %conv43 = sext i32 %add to i64
  %mul = shl nsw i64 %conv43, 2
  %call44 = call i8* @xrealloc(i8* %19, i64 %mul) #5
  %20 = bitcast i8* %call44 to i32*
  store i8* %call44, i8** bitcast (i32** @dirs to i8**), align 8, !tbaa !5
  %21 = load i32, i32* @maxdirs, align 4, !tbaa !15
  %sub45 = add nsw i32 %21, -1024
  %idx.ext = sext i32 %sub45 to i64
  %add.ptr = getelementptr inbounds i32, i32* %20, i64 %idx.ext
  %22 = bitcast i32* %add.ptr to i8*
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 4096, i32 4, i1 false)
  br label %if.end46

if.end46:                                         ; preds = %if.end38, %if.then42
  %23 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, i32* %23, i64 %lev
  store i32 1, i32* %arrayidx, align 4, !tbaa !15
  %add.ptr47 = getelementptr inbounds %struct._info*, %struct._info** %call12, i64 1
  %24 = load %struct._info*, %struct._info** %add.ptr47, align 8, !tbaa !5
  %tobool48 = icmp eq %struct._info* %24, null
  %. = select i1 %tobool48, i32 2, i32 1
  store i32 %., i32* %arrayidx, align 4
  %25 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool52 = icmp eq i32 %25, 0
  br i1 %tobool52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end46
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %26)
  br label %if.end55

if.end55:                                         ; preds = %if.end46, %if.then53
  %call56 = call noalias i8* @malloc(i64 4096) #5
  %27 = load %struct._info*, %struct._info** %call12, align 8, !tbaa !5
  %tobool57377 = icmp eq %struct._info* %27, null
  br i1 %tobool57377, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end55
  %conv60 = trunc i64 %lev to i32
  %cmp4.i = icmp sgt i32 %conv60, 0
  %add226 = add i64 %lev, 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end247
  %dir.0380 = phi %struct._info** [ %call12, %while.body.lr.ph ], [ %add.ptr233, %if.end247 ]
  %pathsize.0379 = phi i64 [ 4096, %while.body.lr.ph ], [ %pathsize.8, %if.end247 ]
  %path.0378 = phi i8* [ %call56, %while.body.lr.ph ], [ %path.8, %if.end247 ]
  %28 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool58 = icmp eq i32 %28, 0
  br i1 %tobool58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %while.body
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %30 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16.157, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %29) #5
  br i1 %cmp4.i, label %for.body.i.preheader, label %if.end61

for.body.i.preheader:                             ; preds = %if.then59
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %i.05.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.body.i.preheader ]
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %32 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17.158, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %31) #5
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %conv60
  br i1 %exitcond.i, label %if.end61, label %for.body.i

if.end61:                                         ; preds = %for.body.i, %if.then59, %while.body
  %33 = load %struct._info*, %struct._info** %dir.0380, align 8, !tbaa !5
  %mode = getelementptr inbounds %struct._info, %struct._info* %33, i64 0, i32 7
  %34 = load i32, i32* %mode, align 4, !tbaa !30
  %and = and i32 %34, 61440
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.end61
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.end61 ]
  %arrayidx67 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([8 x i32]* @ifmt to [0 x i32]*), i64 0, i64 %indvars.iv
  %35 = load i32, i32* %arrayidx67, align 4, !tbaa !15
  %tobool68 = icmp eq i32 %35, 0
  %cmp71 = icmp eq i32 %35, %and
  %or.cond368 = or i1 %tobool68, %cmp71
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br i1 %or.cond368, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %arrayidx76 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([9 x i8*]* @ftype to [0 x i8*]*), i64 0, i64 %indvars.iv
  %37 = load i8*, i8** %arrayidx76, align 8, !tbaa !5
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.159, i64 0, i64 0), i8* %37)
  %38 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool78 = icmp eq i32 %38, 0
  br i1 %tobool78, label %if.else105, label %if.then79

if.then79:                                        ; preds = %for.end
  %call80 = call i64 @strlen(i8* %d) #13
  %39 = load %struct._info*, %struct._info** %dir.0380, align 8, !tbaa !5
  %name = getelementptr inbounds %struct._info, %struct._info* %39, i64 0, i32 0
  %40 = load i8*, i8** %name, align 8, !tbaa !11
  %call81 = call i64 @strlen(i8* %40) #13
  %add82 = add i64 %call81, %call80
  %add83 = add i64 %add82, 2
  %cmp85 = icmp ugt i64 %add83, %pathsize.0379
  br i1 %cmp85, label %if.then87, label %if.end95

if.then87:                                        ; preds = %if.then79
  %add92 = add i64 %add82, 1024
  %call94 = call i8* @xrealloc(i8* %path.0378, i64 %add92) #5
  %.pre = load %struct._info*, %struct._info** %dir.0380, align 8, !tbaa !5
  %name102.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre, i64 0, i32 0
  %.pre384 = load i8*, i8** %name102.phi.trans.insert, align 8, !tbaa !11
  br label %if.end95

if.end95:                                         ; preds = %if.then87, %if.then79
  %41 = phi i8* [ %.pre384, %if.then87 ], [ %40, %if.then79 ]
  %path.1 = phi i8* [ %call94, %if.then87 ], [ %path.0378, %if.then79 ]
  %pathsize.1 = phi i64 [ %add92, %if.then87 ], [ %pathsize.0379, %if.then79 ]
  %call96 = call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.160, i64 0, i64 0)) #13
  %tobool97 = icmp eq i32 %call96, 0
  br i1 %tobool97, label %if.then98, label %if.else101

if.then98:                                        ; preds = %if.end95
  %call100 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.161, i64 0, i64 0), i8* %d, i8* %41) #5
  br label %if.end121

if.else101:                                       ; preds = %if.end95
  %call103 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.162, i64 0, i64 0), i8* %d, i8* %41) #5
  br label %if.end121

if.else105:                                       ; preds = %for.end
  %42 = load %struct._info*, %struct._info** %dir.0380, align 8, !tbaa !5
  %name106 = getelementptr inbounds %struct._info, %struct._info* %42, i64 0, i32 0
  %43 = load i8*, i8** %name106, align 8, !tbaa !11
  %call107 = call i64 @strlen(i8* %43) #13
  %add108 = add i64 %call107, 1
  %cmp110 = icmp ugt i64 %add108, %pathsize.0379
  br i1 %cmp110, label %if.then112, label %if.end118

if.then112:                                       ; preds = %if.else105
  %add115 = add i64 %call107, 1024
  %call117 = call i8* @xrealloc(i8* %path.0378, i64 %add115) #5
  %.pre385 = load %struct._info*, %struct._info** %dir.0380, align 8, !tbaa !5
  %name119.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre385, i64 0, i32 0
  %.pre386 = load i8*, i8** %name119.phi.trans.insert, align 8, !tbaa !11
  br label %if.end118

if.end118:                                        ; preds = %if.then112, %if.else105
  %44 = phi i8* [ %.pre386, %if.then112 ], [ %43, %if.else105 ]
  %path.2 = phi i8* [ %call117, %if.then112 ], [ %path.0378, %if.else105 ]
  %pathsize.2 = phi i64 [ %add115, %if.then112 ], [ %pathsize.0379, %if.else105 ]
  %strlen = call i64 @strlen(i8* %44)
  %leninc = add i64 %strlen, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %path.2, i8* %44, i64 %leninc, i32 1, i1 false)
  br label %if.end121

if.end121:                                        ; preds = %if.then98, %if.else101, %if.end118
  %path.3 = phi i8* [ %path.1, %if.else101 ], [ %path.1, %if.then98 ], [ %path.2, %if.end118 ]
  %pathsize.3 = phi i64 [ %pathsize.1, %if.else101 ], [ %pathsize.1, %if.then98 ], [ %pathsize.2, %if.end118 ]
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %46 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.163, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %45)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  call void @html_encode(%struct._IO_FILE* %47, i8* %path.3) #5
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call123 = call i32 @fputc(i32 34, %struct._IO_FILE* %48)
  %49 = load %struct._info*, %struct._info** %dir.0380, align 8, !tbaa !5
  %lnk124 = getelementptr inbounds %struct._info, %struct._info* %49, i64 0, i32 1
  %50 = load i8*, i8** %lnk124, align 8, !tbaa !35
  %tobool125 = icmp eq i8* %50, null
  br i1 %tobool125, label %if.end130, label %if.then126

if.then126:                                       ; preds = %if.end121
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %52 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10.164, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %51)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %54 = load %struct._info*, %struct._info** %dir.0380, align 8, !tbaa !5
  %lnk128 = getelementptr inbounds %struct._info, %struct._info* %54, i64 0, i32 1
  %55 = load i8*, i8** %lnk128, align 8, !tbaa !35
  call void @html_encode(%struct._IO_FILE* %53, i8* %55) #5
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call129 = call i32 @fputc(i32 34, %struct._IO_FILE* %56)
  %.pre387 = load %struct._info*, %struct._info** %dir.0380, align 8, !tbaa !5
  br label %if.end130

if.end130:                                        ; preds = %if.end121, %if.then126
  %57 = phi %struct._info* [ %49, %if.end121 ], [ %.pre387, %if.then126 ]
  call void @xml_fillinfo(%struct._info* %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call131 = call i32 @fputc(i32 62, %struct._IO_FILE* %58)
  %59 = load %struct._info*, %struct._info** %dir.0380, align 8, !tbaa !5
  %isdir = getelementptr inbounds %struct._info, %struct._info* %59, i64 0, i32 2
  %60 = load i32, i32* %isdir, align 8, !tbaa !7
  %tobool132 = icmp eq i32 %60, 0
  br i1 %tobool132, label %if.end232, label %if.then133

if.then133:                                       ; preds = %if.end130
  %lnk134 = getelementptr inbounds %struct._info, %struct._info* %59, i64 0, i32 1
  %61 = load i8*, i8** %lnk134, align 8, !tbaa !35
  %tobool135 = icmp eq i8* %61, null
  br i1 %tobool135, label %if.else191, label %if.then136

if.then136:                                       ; preds = %if.then133
  %62 = load i32, i32* @lflag, align 4, !tbaa !2
  %tobool137 = icmp eq i32 %62, 0
  br i1 %tobool137, label %if.end232, label %land.lhs.true138

land.lhs.true138:                                 ; preds = %if.then136
  %63 = load i32, i32* @xdev, align 4, !tbaa !2
  %tobool139 = icmp eq i32 %63, 0
  %dev145.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %59, i64 0, i32 15
  %.pre388 = load i64, i64* %dev145.phi.trans.insert, align 8, !tbaa !44
  br i1 %tobool139, label %if.then144, label %land.lhs.true140

land.lhs.true140:                                 ; preds = %land.lhs.true138
  %cmp142 = icmp eq i64 %dev.addr.0, %.pre388
  br i1 %cmp142, label %if.then144, label %if.end232

if.then144:                                       ; preds = %land.lhs.true138, %land.lhs.true140
  %64 = phi i64 [ %dev.addr.0, %land.lhs.true140 ], [ %.pre388, %land.lhs.true138 ]
  %inode = getelementptr inbounds %struct._info, %struct._info* %59, i64 0, i32 16
  %65 = load i64, i64* %inode, align 8, !tbaa !45
  %call146 = call i32 @findino(i64 %65, i64 %64) #5
  %tobool147 = icmp eq i32 %call146, 0
  br i1 %tobool147, label %if.else150, label %if.then148

if.then148:                                       ; preds = %if.then144
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %67 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11.165, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %66)
  br label %if.end232

if.else150:                                       ; preds = %if.then144
  %68 = load %struct._info*, %struct._info** %dir.0380, align 8, !tbaa !5
  %inode151 = getelementptr inbounds %struct._info, %struct._info* %68, i64 0, i32 16
  %69 = load i64, i64* %inode151, align 8, !tbaa !45
  %dev152 = getelementptr inbounds %struct._info, %struct._info* %68, i64 0, i32 15
  %70 = load i64, i64* %dev152, align 8, !tbaa !44
  call void @saveino(i64 %69, i64 %70) #5
  %71 = load %struct._info*, %struct._info** %dir.0380, align 8, !tbaa !5
  %lnk153 = getelementptr inbounds %struct._info, %struct._info* %71, i64 0, i32 1
  %72 = load i8*, i8** %lnk153, align 8, !tbaa !35
  %73 = load i8, i8* %72, align 1, !tbaa !2
  %cmp155 = icmp eq i8 %73, 47
  br i1 %cmp155, label %if.then157, label %if.else160

if.then157:                                       ; preds = %if.else150
  %74 = load void (i8*, i32*, i32*, i64, i64)*, void (i8*, i32*, i32*, i64, i64)** bitcast (i64 (i8*, i32*, i32*, i64, i64)** @listdir to void (i8*, i32*, i32*, i64, i64)**), align 8, !tbaa !5
  call void %74(i8* %72, i32* %dt, i32* %ft, i64 %add226, i64 %dev.addr.0) #5
  br label %if.end232

if.else160:                                       ; preds = %if.else150
  %call161 = call i64 @strlen(i8* %d) #13
  %call163 = call i64 @strlen(i8* %72) #13
  %add164 = add i64 %call161, 2
  %add165 = add i64 %add164, %call163
  %cmp166 = icmp ugt i64 %add165, %pathsize.3
  br i1 %cmp166, label %if.then168, label %if.end175

if.then168:                                       ; preds = %if.else160
  %name170 = getelementptr inbounds %struct._info, %struct._info* %71, i64 0, i32 0
  %75 = load i8*, i8** %name170, align 8, !tbaa !11
  %call171 = call i64 @strlen(i8* %75) #13
  %add172 = add i64 %call161, 1024
  %add173 = add i64 %add172, %call171
  %call174 = call i8* @xrealloc(i8* %path.3, i64 %add173) #5
  br label %if.end175

if.end175:                                        ; preds = %if.then168, %if.else160
  %path.4 = phi i8* [ %call174, %if.then168 ], [ %path.3, %if.else160 ]
  %pathsize.4 = phi i64 [ %add173, %if.then168 ], [ %pathsize.3, %if.else160 ]
  %76 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool176 = icmp eq i32 %76, 0
  br i1 %tobool176, label %if.else183, label %land.lhs.true177

land.lhs.true177:                                 ; preds = %if.end175
  %call178 = call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.160, i64 0, i64 0)) #13
  %tobool179 = icmp eq i32 %call178, 0
  br i1 %tobool179, label %if.then180, label %if.else183

if.then180:                                       ; preds = %land.lhs.true177
  %77 = load %struct._info*, %struct._info** %dir.0380, align 8, !tbaa !5
  %lnk181 = getelementptr inbounds %struct._info, %struct._info* %77, i64 0, i32 1
  %78 = load i8*, i8** %lnk181, align 8, !tbaa !35
  %call182 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.161, i64 0, i64 0), i8* %d, i8* %78) #5
  br label %if.end186

if.else183:                                       ; preds = %land.lhs.true177, %if.end175
  %79 = load %struct._info*, %struct._info** %dir.0380, align 8, !tbaa !5
  %lnk184 = getelementptr inbounds %struct._info, %struct._info* %79, i64 0, i32 1
  %80 = load i8*, i8** %lnk184, align 8, !tbaa !35
  %call185 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.162, i64 0, i64 0), i8* %d, i8* %80) #5
  br label %if.end186

if.end186:                                        ; preds = %if.else183, %if.then180
  %81 = load void (i8*, i32*, i32*, i64, i64)*, void (i8*, i32*, i32*, i64, i64)** bitcast (i64 (i8*, i32*, i32*, i64, i64)** @listdir to void (i8*, i32*, i32*, i64, i64)**), align 8, !tbaa !5
  call void %81(i8* %path.4, i32* %dt, i32* %ft, i64 %add226, i64 %dev.addr.0) #5
  br label %if.end232

if.else191:                                       ; preds = %if.then133
  %82 = load i32, i32* @xdev, align 4, !tbaa !2
  %tobool192 = icmp eq i32 %82, 0
  br i1 %tobool192, label %if.then197, label %land.lhs.true193

land.lhs.true193:                                 ; preds = %if.else191
  %dev194 = getelementptr inbounds %struct._info, %struct._info* %59, i64 0, i32 15
  %83 = load i64, i64* %dev194, align 8, !tbaa !44
  %cmp195 = icmp eq i64 %dev.addr.0, %83
  br i1 %cmp195, label %if.then197, label %if.end232

if.then197:                                       ; preds = %land.lhs.true193, %if.else191
  %call198 = call i64 @strlen(i8* %d) #13
  %name199 = getelementptr inbounds %struct._info, %struct._info* %59, i64 0, i32 0
  %84 = load i8*, i8** %name199, align 8, !tbaa !11
  %call200 = call i64 @strlen(i8* %84) #13
  %add201 = add i64 %call200, %call198
  %add202 = add i64 %add201, 2
  %cmp203 = icmp ugt i64 %add202, %pathsize.3
  br i1 %cmp203, label %if.then205, label %if.end212

if.then205:                                       ; preds = %if.then197
  %add210 = add i64 %add201, 1024
  %call211 = call i8* @xrealloc(i8* %path.3, i64 %add210) #5
  br label %if.end212

if.end212:                                        ; preds = %if.then205, %if.then197
  %path.6 = phi i8* [ %call211, %if.then205 ], [ %path.3, %if.then197 ]
  %pathsize.6 = phi i64 [ %add210, %if.then205 ], [ %pathsize.3, %if.then197 ]
  %85 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool213 = icmp eq i32 %85, 0
  br i1 %tobool213, label %if.else220, label %land.lhs.true214

land.lhs.true214:                                 ; preds = %if.end212
  %call215 = call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.160, i64 0, i64 0)) #13
  %tobool216 = icmp eq i32 %call215, 0
  br i1 %tobool216, label %if.then217, label %if.else220

if.then217:                                       ; preds = %land.lhs.true214
  %86 = load %struct._info*, %struct._info** %dir.0380, align 8, !tbaa !5
  %name218 = getelementptr inbounds %struct._info, %struct._info* %86, i64 0, i32 0
  %87 = load i8*, i8** %name218, align 8, !tbaa !11
  %call219 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.161, i64 0, i64 0), i8* %d, i8* %87) #5
  br label %if.end223

if.else220:                                       ; preds = %land.lhs.true214, %if.end212
  %88 = load %struct._info*, %struct._info** %dir.0380, align 8, !tbaa !5
  %name221 = getelementptr inbounds %struct._info, %struct._info* %88, i64 0, i32 0
  %89 = load i8*, i8** %name221, align 8, !tbaa !11
  %call222 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.162, i64 0, i64 0), i8* %d, i8* %89) #5
  br label %if.end223

if.end223:                                        ; preds = %if.else220, %if.then217
  %90 = load %struct._info*, %struct._info** %dir.0380, align 8, !tbaa !5
  %inode224 = getelementptr inbounds %struct._info, %struct._info* %90, i64 0, i32 16
  %91 = load i64, i64* %inode224, align 8, !tbaa !45
  %dev225 = getelementptr inbounds %struct._info, %struct._info* %90, i64 0, i32 15
  %92 = load i64, i64* %dev225, align 8, !tbaa !44
  call void @saveino(i64 %91, i64 %92) #5
  %93 = load void (i8*, i32*, i32*, i64, i64)*, void (i8*, i32*, i32*, i64, i64)** bitcast (i64 (i8*, i32*, i32*, i64, i64)** @listdir to void (i8*, i32*, i32*, i64, i64)**), align 8, !tbaa !5
  call void %93(i8* %path.6, i32* %dt, i32* %ft, i64 %add226, i64 %dev.addr.0) #5
  br label %if.end232

if.end232:                                        ; preds = %if.end130, %if.then148, %if.end223, %land.lhs.true193, %if.then136, %land.lhs.true140, %if.end186, %if.then157
  %path.8 = phi i8* [ %path.3, %land.lhs.true140 ], [ %path.3, %if.then148 ], [ %path.3, %if.then136 ], [ %path.3, %land.lhs.true193 ], [ %path.6, %if.end223 ], [ %path.3, %if.then157 ], [ %path.4, %if.end186 ], [ %path.3, %if.end130 ]
  %nlf.2 = phi i32 [ 0, %land.lhs.true140 ], [ 0, %if.then148 ], [ 0, %if.then136 ], [ 0, %land.lhs.true193 ], [ 1, %if.end223 ], [ 1, %if.then157 ], [ 1, %if.end186 ], [ 0, %if.end130 ]
  %pathsize.8 = phi i64 [ %pathsize.3, %land.lhs.true140 ], [ %pathsize.3, %if.then148 ], [ %pathsize.3, %if.then136 ], [ %pathsize.3, %land.lhs.true193 ], [ %pathsize.6, %if.end223 ], [ %pathsize.3, %if.then157 ], [ %pathsize.4, %if.end186 ], [ %pathsize.3, %if.end130 ]
  %.sink264 = phi i32* [ %dt, %land.lhs.true140 ], [ %dt, %if.then148 ], [ %dt, %if.then136 ], [ %dt, %land.lhs.true193 ], [ %dt, %if.end223 ], [ %dt, %if.then157 ], [ %dt, %if.end186 ], [ %ft, %if.end130 ]
  %94 = load i32, i32* %.sink264, align 4, !tbaa !15
  %add231 = add nsw i32 %94, 1
  store i32 %add231, i32* %.sink264, align 4, !tbaa !15
  %add.ptr233 = getelementptr inbounds %struct._info*, %struct._info** %dir.0380, i64 1
  %95 = load %struct._info*, %struct._info** %add.ptr233, align 8, !tbaa !5
  %tobool234 = icmp eq %struct._info* %95, null
  br i1 %tobool234, label %if.end240, label %land.lhs.true235

land.lhs.true235:                                 ; preds = %if.end232
  %add.ptr236 = getelementptr inbounds %struct._info*, %struct._info** %dir.0380, i64 2
  %96 = load %struct._info*, %struct._info** %add.ptr236, align 8, !tbaa !5
  %tobool237 = icmp eq %struct._info* %96, null
  br i1 %tobool237, label %if.then238, label %if.end240

if.then238:                                       ; preds = %land.lhs.true235
  %97 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx239 = getelementptr inbounds i32, i32* %97, i64 %lev
  store i32 2, i32* %arrayidx239, align 4, !tbaa !15
  br label %if.end240

if.end240:                                        ; preds = %land.lhs.true235, %if.end232, %if.then238
  %tobool241 = icmp ne i32 %nlf.2, 0
  %98 = load i32, i32* @noindent, align 4
  %tobool243 = icmp eq i32 %98, 0
  %or.cond376 = and i1 %tobool241, %tobool243
  br i1 %or.cond376, label %if.then244, label %if.end247

if.then244:                                       ; preds = %if.end240
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %100 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16.157, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %99) #5
  br i1 %cmp4.i, label %for.body.i374.preheader, label %if.end247

for.body.i374.preheader:                          ; preds = %if.then244
  br label %for.body.i374

for.body.i374:                                    ; preds = %for.body.i374.preheader, %for.body.i374
  %i.05.i371 = phi i32 [ %inc.i372, %for.body.i374 ], [ 0, %for.body.i374.preheader ]
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %102 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17.158, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %101) #5
  %inc.i372 = add nuw nsw i32 %i.05.i371, 1
  %exitcond.i373 = icmp eq i32 %inc.i372, %conv60
  br i1 %exitcond.i373, label %if.end247, label %for.body.i374

if.end247:                                        ; preds = %for.body.i374, %if.end240, %if.then244
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %104 = load i8*, i8** %arrayidx76, align 8, !tbaa !5
  %105 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool250 = icmp eq i32 %105, 0
  %cond251 = select i1 %tobool250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.154, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.155, i64 0, i64 0)
  %call252 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12.166, i64 0, i64 0), i8* %104, i8* %cond251)
  %106 = load %struct._info*, %struct._info** %add.ptr233, align 8, !tbaa !5
  %tobool57 = icmp eq %struct._info* %106, null
  br i1 %tobool57, label %while.end, label %while.body

while.end:                                        ; preds = %if.end247, %if.end55
  %path.0.lcssa = phi i8* [ %call56, %if.end55 ], [ %path.8, %if.end247 ]
  %107 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx253 = getelementptr inbounds i32, i32* %107, i64 %lev
  store i32 0, i32* %arrayidx253, align 4, !tbaa !15
  call void @free(i8* %path.0.lcssa) #5
  call void @free_dir(%struct._info** %call12) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.then, %while.end, %if.then31, %if.end24, %if.then16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #5
  ret i64 0
}

; Function Attrs: nounwind uwtable
define void @xml_fillinfo(%struct._info* nocapture readonly %ent) local_unnamed_addr #2 {
entry:
  %0 = load i32, i32* @inodeflag, align 4, !tbaa !2
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %inode = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 16
  %2 = load i64, i64* %inode, align 8, !tbaa !45
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18.167, i64 0, i64 0), i64 %2)
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %3 = load i32, i32* @devflag, align 4, !tbaa !2
  %tobool1 = icmp eq i32 %3, 0
  br i1 %tobool1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %dev = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 15
  %5 = load i64, i64* %dev, align 8, !tbaa !44
  %conv = trunc i64 %5 to i32
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19.168, i64 0, i64 0), i32 %conv)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %6 = load i32, i32* @pflag, align 4, !tbaa !2
  %tobool5 = icmp eq i32 %6, 0
  br i1 %tobool5, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.end4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %mode = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 7
  %8 = load i32, i32* %mode, align 4, !tbaa !30
  %and = and i32 %8, 4095
  %call8 = tail call i8* @prot(i32 %8) #5
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20.169, i64 0, i64 0), i32 %and, i8* %call8)
  br label %if.end10

if.end10:                                         ; preds = %if.end4, %if.then6
  %9 = load i32, i32* @uflag, align 4, !tbaa !2
  %tobool11 = icmp eq i32 %9, 0
  br i1 %tobool11, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end10
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %uid = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 9
  %11 = load i32, i32* %uid, align 4, !tbaa !32
  %call13 = tail call i8* @uidtoname(i32 %11) #5
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21.170, i64 0, i64 0), i8* %call13)
  br label %if.end15

if.end15:                                         ; preds = %if.end10, %if.then12
  %12 = load i32, i32* @gflag, align 4, !tbaa !2
  %tobool16 = icmp eq i32 %12, 0
  br i1 %tobool16, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.end15
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %gid = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 10
  %14 = load i32, i32* %gid, align 8, !tbaa !34
  %call18 = tail call i8* @gidtoname(i32 %14) #5
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22.171, i64 0, i64 0), i8* %call18)
  br label %if.end20

if.end20:                                         ; preds = %if.end15, %if.then17
  %15 = load i32, i32* @sflag, align 4, !tbaa !2
  %tobool21 = icmp eq i32 %15, 0
  br i1 %tobool21, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end20
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %size = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 11
  %17 = load i64, i64* %size, align 8, !tbaa !12
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23.172, i64 0, i64 0), i64 %17)
  br label %if.end24

if.end24:                                         ; preds = %if.end20, %if.then22
  %18 = load i32, i32* @Dflag, align 4, !tbaa !2
  %tobool25 = icmp eq i32 %18, 0
  br i1 %tobool25, label %if.end30, label %if.then26

if.then26:                                        ; preds = %if.end24
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %20 = load i32, i32* @cflag, align 4, !tbaa !2
  %tobool27 = icmp eq i32 %20, 0
  %mtime = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 14
  %ctime = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 13
  %mtime.sink = select i1 %tobool27, i64* %mtime, i64* %ctime
  %21 = load i64, i64* %mtime.sink, align 8, !tbaa !29
  %call28 = tail call i8* @do_date(i64 %21) #5
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24.173, i64 0, i64 0), i8* %call28)
  br label %if.end30

if.end30:                                         ; preds = %if.end24, %if.then26
  ret void
}

; Function Attrs: nounwind uwtable
define void @xml_indent(i32 %maxlevel) local_unnamed_addr #2 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16.157, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %0)
  %cmp4 = icmp sgt i32 %maxlevel, 0
  br i1 %cmp4, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.05 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17.158, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %2)
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond = icmp eq i32 %inc, %maxlevel
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @xml_rlistdir(i8* %d, i32* nocapture %dt, i32* nocapture %ft, i64 %lev, i64 %dev) #2 {
entry:
  %size = alloca i64, align 8
  %err = alloca i8*, align 8
  %0 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i64 0, i64* %size, align 8, !tbaa !29
  %1 = bitcast i8** %err to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %call = call %struct._info** @getfulltree(i8* %d, i64 %lev, i64 %dev, i64* nonnull %size, i8** nonnull %err) #5
  %2 = load i8*, i8** bitcast (i32** @dirs to i8**), align 8, !tbaa !5
  %3 = load i32, i32* @maxdirs, align 4, !tbaa !15
  %conv = sext i32 %3 to i64
  %mul = shl nsw i64 %conv, 2
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %mul, i32 4, i1 false)
  call void @xmlr_listdir(%struct._info** %call, i8* %d, i32* %dt, i32* %ft, i64 %lev)
  %4 = load i64, i64* %size, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define void @xmlr_listdir(%struct._info** %dir, i8* %d, i32* nocapture %dt, i32* nocapture %ft, i64 %lev) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq %struct._info** %dir, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %lev
  store i32 1, i32* %arrayidx, align 4, !tbaa !15
  %add.ptr = getelementptr inbounds %struct._info*, %struct._info** %dir, i64 1
  %1 = load %struct._info*, %struct._info** %add.ptr, align 8, !tbaa !5
  %tobool = icmp eq %struct._info* %1, null
  %. = select i1 %tobool, i32 2, i32 1
  store i32 %., i32* %arrayidx, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %2)
  %call4 = tail call noalias i8* @malloc(i64 4096) #5
  %3 = load %struct._info*, %struct._info** %dir, align 8, !tbaa !5
  %tobool5254 = icmp eq %struct._info* %3, null
  br i1 %tobool5254, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %conv = trunc i64 %lev to i32
  %cmp4.i = icmp sgt i32 %conv, 0
  %add127 = add i64 %lev, 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end166
  %dir.addr.0257 = phi %struct._info** [ %dir, %while.body.lr.ph ], [ %add.ptr137, %if.end166 ]
  %path.0256 = phi i8* [ %call4, %while.body.lr.ph ], [ %path.6, %if.end166 ]
  %pathsize.0255 = phi i64 [ 4096, %while.body.lr.ph ], [ %pathsize.6, %if.end166 ]
  %4 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool6 = icmp eq i32 %4, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %while.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16.157, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %5) #5
  br i1 %cmp4.i, label %for.body.i.preheader, label %if.end8

for.body.i.preheader:                             ; preds = %if.then7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %i.05.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.body.i.preheader ]
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17.158, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %7) #5
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.i, label %if.end8, label %for.body.i

if.end8:                                          ; preds = %for.body.i, %if.then7, %while.body
  %9 = load %struct._info*, %struct._info** %dir.addr.0257, align 8, !tbaa !5
  %mode = getelementptr inbounds %struct._info, %struct._info* %9, i64 0, i32 7
  %10 = load i32, i32* %mode, align 4, !tbaa !30
  %and = and i32 %10, 61440
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.end8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.end8 ]
  %arrayidx14 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([8 x i32]* @ifmt to [0 x i32]*), i64 0, i64 %indvars.iv
  %11 = load i32, i32* %arrayidx14, align 4, !tbaa !15
  %tobool15 = icmp eq i32 %11, 0
  %cmp18 = icmp eq i32 %11, %and
  %or.cond245 = or i1 %tobool15, %cmp18
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br i1 %or.cond245, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %arrayidx23 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([9 x i8*]* @ftype to [0 x i8*]*), i64 0, i64 %indvars.iv
  %13 = load i8*, i8** %arrayidx23, align 8, !tbaa !5
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.159, i64 0, i64 0), i8* %13)
  %14 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool25 = icmp eq i32 %14, 0
  br i1 %tobool25, label %if.else50, label %if.then26

if.then26:                                        ; preds = %for.end
  %call27 = tail call i64 @strlen(i8* %d) #13
  %15 = load %struct._info*, %struct._info** %dir.addr.0257, align 8, !tbaa !5
  %name = getelementptr inbounds %struct._info, %struct._info* %15, i64 0, i32 0
  %16 = load i8*, i8** %name, align 8, !tbaa !11
  %call28 = tail call i64 @strlen(i8* %16) #13
  %add = add i64 %call28, %call27
  %add29 = add i64 %add, 2
  %cmp30 = icmp ugt i64 %add29, %pathsize.0255
  br i1 %cmp30, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.then26
  %add37 = add i64 %add, 1024
  %call39 = tail call i8* @xrealloc(i8* %path.0256, i64 %add37) #5
  %.pre = load %struct._info*, %struct._info** %dir.addr.0257, align 8, !tbaa !5
  %name47.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre, i64 0, i32 0
  %.pre259 = load i8*, i8** %name47.phi.trans.insert, align 8, !tbaa !11
  br label %if.end40

if.end40:                                         ; preds = %if.then32, %if.then26
  %17 = phi i8* [ %.pre259, %if.then32 ], [ %16, %if.then26 ]
  %pathsize.1 = phi i64 [ %add37, %if.then32 ], [ %pathsize.0255, %if.then26 ]
  %path.1 = phi i8* [ %call39, %if.then32 ], [ %path.0256, %if.then26 ]
  %call41 = tail call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.160, i64 0, i64 0)) #13
  %tobool42 = icmp eq i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.end40
  %call45 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.161, i64 0, i64 0), i8* %d, i8* %17) #5
  br label %if.end66

if.else46:                                        ; preds = %if.end40
  %call48 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.162, i64 0, i64 0), i8* %d, i8* %17) #5
  br label %if.end66

if.else50:                                        ; preds = %for.end
  %18 = load %struct._info*, %struct._info** %dir.addr.0257, align 8, !tbaa !5
  %name51 = getelementptr inbounds %struct._info, %struct._info* %18, i64 0, i32 0
  %19 = load i8*, i8** %name51, align 8, !tbaa !11
  %call52 = tail call i64 @strlen(i8* %19) #13
  %add53 = add i64 %call52, 1
  %cmp55 = icmp ugt i64 %add53, %pathsize.0255
  br i1 %cmp55, label %if.then57, label %if.end63

if.then57:                                        ; preds = %if.else50
  %add60 = add i64 %call52, 1024
  %call62 = tail call i8* @xrealloc(i8* %path.0256, i64 %add60) #5
  %.pre260 = load %struct._info*, %struct._info** %dir.addr.0257, align 8, !tbaa !5
  %name64.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre260, i64 0, i32 0
  %.pre261 = load i8*, i8** %name64.phi.trans.insert, align 8, !tbaa !11
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %if.else50
  %20 = phi i8* [ %.pre261, %if.then57 ], [ %19, %if.else50 ]
  %pathsize.2 = phi i64 [ %add60, %if.then57 ], [ %pathsize.0255, %if.else50 ]
  %path.2 = phi i8* [ %call62, %if.then57 ], [ %path.0256, %if.else50 ]
  %strlen = tail call i64 @strlen(i8* %20)
  %leninc = add i64 %strlen, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %path.2, i8* %20, i64 %leninc, i32 1, i1 false)
  br label %if.end66

if.end66:                                         ; preds = %if.then43, %if.else46, %if.end63
  %pathsize.3 = phi i64 [ %pathsize.1, %if.else46 ], [ %pathsize.1, %if.then43 ], [ %pathsize.2, %if.end63 ]
  %path.3 = phi i8* [ %path.1, %if.else46 ], [ %path.1, %if.then43 ], [ %path.2, %if.end63 ]
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.163, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  tail call void @html_encode(%struct._IO_FILE* %23, i8* %path.3) #5
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call68 = tail call i32 @fputc(i32 34, %struct._IO_FILE* %24)
  %25 = load %struct._info*, %struct._info** %dir.addr.0257, align 8, !tbaa !5
  %lnk69 = getelementptr inbounds %struct._info, %struct._info* %25, i64 0, i32 1
  %26 = load i8*, i8** %lnk69, align 8, !tbaa !35
  %tobool70 = icmp eq i8* %26, null
  br i1 %tobool70, label %if.end75, label %if.then71

if.then71:                                        ; preds = %if.end66
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %28 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10.164, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %27)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %30 = load %struct._info*, %struct._info** %dir.addr.0257, align 8, !tbaa !5
  %lnk73 = getelementptr inbounds %struct._info, %struct._info* %30, i64 0, i32 1
  %31 = load i8*, i8** %lnk73, align 8, !tbaa !35
  tail call void @html_encode(%struct._IO_FILE* %29, i8* %31) #5
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call74 = tail call i32 @fputc(i32 34, %struct._IO_FILE* %32)
  %.pre262 = load %struct._info*, %struct._info** %dir.addr.0257, align 8, !tbaa !5
  br label %if.end75

if.end75:                                         ; preds = %if.end66, %if.then71
  %33 = phi %struct._info* [ %25, %if.end66 ], [ %.pre262, %if.then71 ]
  tail call void @xml_fillinfo(%struct._info* %33)
  %trunc = trunc i32 %and to i16
  switch i16 %trunc, label %land.lhs.true80 [
    i16 -24576, label %if.else85
    i16 16384, label %if.else85
  ]

land.lhs.true80:                                  ; preds = %if.end75
  %34 = load %struct._info*, %struct._info** %dir.addr.0257, align 8, !tbaa !5
  %err = getelementptr inbounds %struct._info, %struct._info* %34, i64 0, i32 17
  %35 = load i8*, i8** %err, align 8, !tbaa !37
  %cmp81 = icmp eq i8* %35, null
  br i1 %cmp81, label %if.then83, label %if.else85

if.then83:                                        ; preds = %land.lhs.true80
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %37 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13.176, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %36)
  br label %if.end87

if.else85:                                        ; preds = %if.end75, %if.end75, %land.lhs.true80
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call86 = tail call i32 @fputc(i32 62, %struct._IO_FILE* %38)
  br label %if.end87

if.end87:                                         ; preds = %if.else85, %if.then83
  %39 = load %struct._info*, %struct._info** %dir.addr.0257, align 8, !tbaa !5
  %err88 = getelementptr inbounds %struct._info, %struct._info* %39, i64 0, i32 17
  %40 = load i8*, i8** %err88, align 8, !tbaa !37
  %tobool89 = icmp eq i8* %40, null
  br i1 %tobool89, label %if.end95, label %if.then90

if.then90:                                        ; preds = %if.end87
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call92 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14.177, i64 0, i64 0), i8* nonnull %40)
  %42 = load %struct._info*, %struct._info** %dir.addr.0257, align 8, !tbaa !5
  %err93 = getelementptr inbounds %struct._info, %struct._info* %42, i64 0, i32 17
  %43 = load i8*, i8** %err93, align 8, !tbaa !37
  tail call void @free(i8* %43) #5
  %44 = load %struct._info*, %struct._info** %dir.addr.0257, align 8, !tbaa !5
  %err94 = getelementptr inbounds %struct._info, %struct._info* %44, i64 0, i32 17
  store i8* null, i8** %err94, align 8, !tbaa !37
  %.pre263 = load %struct._info*, %struct._info** %dir.addr.0257, align 8, !tbaa !5
  br label %if.end95

if.end95:                                         ; preds = %if.end87, %if.then90
  %45 = phi %struct._info* [ %39, %if.end87 ], [ %.pre263, %if.then90 ]
  %child = getelementptr inbounds %struct._info, %struct._info* %45, i64 0, i32 18
  %46 = load %struct._info**, %struct._info*** %child, align 8, !tbaa !38
  %tobool96 = icmp eq %struct._info** %46, null
  br i1 %tobool96, label %if.else129, label %if.then97

if.then97:                                        ; preds = %if.end95
  %47 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool98 = icmp eq i32 %47, 0
  br i1 %tobool98, label %if.end124, label %if.then99

if.then99:                                        ; preds = %if.then97
  %call100 = tail call i64 @strlen(i8* %d) #13
  %name101 = getelementptr inbounds %struct._info, %struct._info* %45, i64 0, i32 0
  %48 = load i8*, i8** %name101, align 8, !tbaa !11
  %call102 = tail call i64 @strlen(i8* %48) #13
  %add103 = add i64 %call102, %call100
  %add104 = add i64 %add103, 2
  %cmp105 = icmp ugt i64 %add104, %pathsize.3
  br i1 %cmp105, label %if.then107, label %if.end114

if.then107:                                       ; preds = %if.then99
  %add112 = add i64 %add103, 1024
  %call113 = tail call i8* @xrealloc(i8* %path.3, i64 %add112) #5
  %.pre264 = load %struct._info*, %struct._info** %dir.addr.0257, align 8, !tbaa !5
  %name121.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre264, i64 0, i32 0
  %.pre265 = load i8*, i8** %name121.phi.trans.insert, align 8, !tbaa !11
  br label %if.end114

if.end114:                                        ; preds = %if.then107, %if.then99
  %49 = phi i8* [ %.pre265, %if.then107 ], [ %48, %if.then99 ]
  %pathsize.4 = phi i64 [ %add112, %if.then107 ], [ %pathsize.3, %if.then99 ]
  %path.4 = phi i8* [ %call113, %if.then107 ], [ %path.3, %if.then99 ]
  %call115 = tail call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.160, i64 0, i64 0)) #13
  %tobool116 = icmp eq i32 %call115, 0
  br i1 %tobool116, label %if.then117, label %if.else120

if.then117:                                       ; preds = %if.end114
  %call119 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %path.4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.161, i64 0, i64 0), i8* %d, i8* %49) #5
  br label %if.end124

if.else120:                                       ; preds = %if.end114
  %call122 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %path.4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.162, i64 0, i64 0), i8* %d, i8* %49) #5
  br label %if.end124

if.end124:                                        ; preds = %if.then97, %if.then117, %if.else120
  %pathsize.5 = phi i64 [ %pathsize.4, %if.else120 ], [ %pathsize.4, %if.then117 ], [ %pathsize.3, %if.then97 ]
  %path.5 = phi i8* [ %path.4, %if.else120 ], [ %path.4, %if.then117 ], [ %path.3, %if.then97 ]
  %50 = load %struct._info*, %struct._info** %dir.addr.0257, align 8, !tbaa !5
  %child125 = getelementptr inbounds %struct._info, %struct._info* %50, i64 0, i32 18
  %51 = load %struct._info**, %struct._info*** %child125, align 8, !tbaa !38
  %52 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool126 = icmp eq i32 %52, 0
  %cond = select i1 %tobool126, i8* null, i8* %path.5
  tail call void @xmlr_listdir(%struct._info** %51, i8* %cond, i32* %dt, i32* %ft, i64 %add127)
  br label %if.end136

if.else129:                                       ; preds = %if.end95
  %isdir = getelementptr inbounds %struct._info, %struct._info* %45, i64 0, i32 2
  %53 = load i32, i32* %isdir, align 8, !tbaa !7
  %tobool130 = icmp eq i32 %53, 0
  %.sink174 = select i1 %tobool130, i32* %ft, i32* %dt
  br label %if.end136

if.end136:                                        ; preds = %if.else129, %if.end124
  %pathsize.6 = phi i64 [ %pathsize.5, %if.end124 ], [ %pathsize.3, %if.else129 ]
  %path.6 = phi i8* [ %path.5, %if.end124 ], [ %path.3, %if.else129 ]
  %nlf.1 = phi i32 [ 1, %if.end124 ], [ 0, %if.else129 ]
  %.sink174.sink175 = phi i32* [ %dt, %if.end124 ], [ %.sink174, %if.else129 ]
  %54 = load i32, i32* %.sink174.sink175, align 4, !tbaa !15
  %add134 = add nsw i32 %54, 1
  store i32 %add134, i32* %.sink174.sink175, align 4, !tbaa !15
  %add.ptr137 = getelementptr inbounds %struct._info*, %struct._info** %dir.addr.0257, i64 1
  %55 = load %struct._info*, %struct._info** %add.ptr137, align 8, !tbaa !5
  %tobool138 = icmp eq %struct._info* %55, null
  br i1 %tobool138, label %if.end144, label %land.lhs.true139

land.lhs.true139:                                 ; preds = %if.end136
  %add.ptr140 = getelementptr inbounds %struct._info*, %struct._info** %dir.addr.0257, i64 2
  %56 = load %struct._info*, %struct._info** %add.ptr140, align 8, !tbaa !5
  %tobool141 = icmp eq %struct._info* %56, null
  br i1 %tobool141, label %if.then142, label %if.end144

if.then142:                                       ; preds = %land.lhs.true139
  %57 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx143 = getelementptr inbounds i32, i32* %57, i64 %lev
  store i32 2, i32* %arrayidx143, align 4, !tbaa !15
  br label %if.end144

if.end144:                                        ; preds = %land.lhs.true139, %if.end136, %if.then142
  %tobool145 = icmp ne i32 %nlf.1, 0
  %58 = load i32, i32* @noindent, align 4
  %tobool147 = icmp eq i32 %58, 0
  %or.cond = and i1 %tobool145, %tobool147
  br i1 %or.cond, label %if.then148, label %if.end151

if.then148:                                       ; preds = %if.end144
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %60 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16.157, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %59) #5
  br i1 %cmp4.i, label %for.body.i251.preheader, label %if.end151

for.body.i251.preheader:                          ; preds = %if.then148
  br label %for.body.i251

for.body.i251:                                    ; preds = %for.body.i251.preheader, %for.body.i251
  %i.05.i248 = phi i32 [ %inc.i249, %for.body.i251 ], [ 0, %for.body.i251.preheader ]
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %62 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17.158, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %61) #5
  %inc.i249 = add nuw nsw i32 %i.05.i248, 1
  %exitcond.i250 = icmp eq i32 %inc.i249, %conv
  br i1 %exitcond.i250, label %if.end151, label %for.body.i251

if.end151:                                        ; preds = %for.body.i251, %if.end144, %if.then148
  switch i16 %trunc, label %lor.lhs.false156 [
    i16 -24576, label %if.then160
    i16 16384, label %if.then160
  ]

lor.lhs.false156:                                 ; preds = %if.end151
  %63 = load %struct._info*, %struct._info** %dir.addr.0257, align 8, !tbaa !5
  %err157 = getelementptr inbounds %struct._info, %struct._info* %63, i64 0, i32 17
  %64 = load i8*, i8** %err157, align 8, !tbaa !37
  %cmp158 = icmp eq i8* %64, null
  br i1 %cmp158, label %if.else164, label %if.then160

if.then160:                                       ; preds = %if.end151, %if.end151, %lor.lhs.false156
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %66 = load i8*, i8** %arrayidx23, align 8, !tbaa !5
  %call163 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15.178, i64 0, i64 0), i8* %66)
  br label %if.end166

if.else164:                                       ; preds = %lor.lhs.false156
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call165 = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %67)
  br label %if.end166

if.end166:                                        ; preds = %if.else164, %if.then160
  %68 = load %struct._info*, %struct._info** %add.ptr137, align 8, !tbaa !5
  %tobool5 = icmp eq %struct._info* %68, null
  br i1 %tobool5, label %while.end, label %while.body

while.end:                                        ; preds = %if.end166, %if.end
  %path.0.lcssa = phi i8* [ %call4, %if.end ], [ %path.6, %if.end166 ]
  %69 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx167 = getelementptr inbounds i32, i32* %69, i64 %lev
  store i32 0, i32* %arrayidx167, align 4, !tbaa !15
  tail call void @free(i8* %path.0.lcssa) #5
  tail call void @free_dir(%struct._info** nonnull %dir) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @json_listdir(i8* %d, i32* %dt, i32* %ft, i64 %lev, i64 %dev) #2 {
entry:
  %sb = alloca %struct.stat, align 8
  %n = alloca i32, align 4
  %0 = bitcast %struct.stat* %sb to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #5
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %2 = load i32, i32* @Level, align 4, !tbaa !15
  %cmp = icmp sgt i32 %2, -1
  %conv = sext i32 %2 to i64
  %cmp1 = icmp ult i64 %conv, %lev
  %or.cond396 = and i1 %cmp, %cmp1
  br i1 %or.cond396, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call = tail call i32 @fputc(i32 10, %struct._IO_FILE* %4)
  br label %cleanup

if.end4:                                          ; preds = %entry
  %5 = load i32, i32* @xdev, align 4, !tbaa !2
  %tobool5 = icmp ne i32 %5, 0
  %cmp7 = icmp eq i64 %lev, 0
  %or.cond = and i1 %cmp7, %tobool5
  br i1 %or.cond, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end4
  %call.i = call i32 @__xstat(i32 1, i8* nonnull %d, %struct.stat* nonnull %sb) #5
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %sb, i64 0, i32 0
  %6 = load i64, i64* %st_dev, align 8, !tbaa !22
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end4
  %dev.addr.0 = phi i64 [ %6, %if.then9 ], [ %dev, %if.end4 ]
  %call12 = call %struct._info** @read_dir(i8* %d, i32* nonnull %n) #5
  %tobool13 = icmp eq %struct._info** %call12, null
  %7 = load i32, i32* %n, align 4
  %tobool15 = icmp ne i32 %7, 0
  %or.cond287 = and i1 %tobool13, %tobool15
  br i1 %or.cond287, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end11
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %9 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool17 = icmp eq i32 %9, 0
  %cond = select i1 %tobool17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.181, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.182, i64 0, i64 0)
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.183, i64 0, i64 0), i8* %cond)
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  br i1 %tobool15, label %if.end26, label %if.then21

if.then21:                                        ; preds = %if.end19
  %10 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool22 = icmp eq i32 %10, 0
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then21
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call24 = call i32 @fputc(i32 10, %struct._IO_FILE* %11)
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.then23
  call void @free_dir(%struct._info** %call12) #5
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %12 = load i32, i32* @flimit, align 4, !tbaa !2
  %cmp27 = icmp ne i32 %12, 0
  %cmp30 = icmp ugt i32 %7, %12
  %or.cond397 = and i1 %cmp27, %cmp30
  br i1 %or.cond397, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end26
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3.184, i64 0, i64 0), i32 %7)
  call void @free_dir(%struct._info** %call12) #5
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %14 = load i32 (...)*, i32 (...)** @cmpfunc, align 8, !tbaa !5
  %tobool35 = icmp eq i32 (...)* %14, null
  br i1 %tobool35, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end34
  %15 = bitcast %struct._info** %call12 to i8*
  %conv37 = sext i32 %7 to i64
  %16 = bitcast i32 (...)* %14 to i32 (i8*, i8*)*
  call void @qsort(i8* %15, i64 %conv37, i64 8, i32 (i8*, i8*)* %16) #5
  br label %if.end38

if.end38:                                         ; preds = %if.end34, %if.then36
  %17 = load i32, i32* @maxdirs, align 4, !tbaa !15
  %sub = add nsw i32 %17, -1
  %conv39 = sext i32 %sub to i64
  %cmp40 = icmp ugt i64 %conv39, %lev
  br i1 %cmp40, label %if.end46, label %if.then42

if.then42:                                        ; preds = %if.end38
  %18 = load i8*, i8** bitcast (i32** @dirs to i8**), align 8, !tbaa !5
  %add = add nsw i32 %17, 1024
  store i32 %add, i32* @maxdirs, align 4, !tbaa !15
  %conv43 = sext i32 %add to i64
  %mul = shl nsw i64 %conv43, 2
  %call44 = call i8* @xrealloc(i8* %18, i64 %mul) #5
  %19 = bitcast i8* %call44 to i32*
  store i8* %call44, i8** bitcast (i32** @dirs to i8**), align 8, !tbaa !5
  %20 = load i32, i32* @maxdirs, align 4, !tbaa !15
  %sub45 = add nsw i32 %20, -1024
  %idx.ext = sext i32 %sub45 to i64
  %add.ptr = getelementptr inbounds i32, i32* %19, i64 %idx.ext
  %21 = bitcast i32* %add.ptr to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 4096, i32 4, i1 false)
  br label %if.end46

if.end46:                                         ; preds = %if.end38, %if.then42
  %22 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, i32* %22, i64 %lev
  store i32 1, i32* %arrayidx, align 4, !tbaa !15
  %add.ptr47 = getelementptr inbounds %struct._info*, %struct._info** %call12, i64 1
  %23 = load %struct._info*, %struct._info** %add.ptr47, align 8, !tbaa !5
  %tobool48 = icmp eq %struct._info* %23, null
  %. = select i1 %tobool48, i32 2, i32 1
  store i32 %., i32* %arrayidx, align 4
  %24 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool52 = icmp eq i32 %24, 0
  br i1 %tobool52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end46
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %25)
  br label %if.end55

if.end55:                                         ; preds = %if.end46, %if.then53
  %call56 = call noalias i8* @malloc(i64 4096) #5
  %26 = load %struct._info*, %struct._info** %call12, align 8, !tbaa !5
  %tobool57407 = icmp eq %struct._info* %26, null
  br i1 %tobool57407, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end55
  %conv60 = trunc i64 %lev to i32
  %cmp4.i = icmp sgt i32 %conv60, 0
  %add240 = add i64 %lev, 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end277
  %dir.0410 = phi %struct._info** [ %call12, %while.body.lr.ph ], [ %add.ptr247, %if.end277 ]
  %pathsize.0409 = phi i64 [ 4096, %while.body.lr.ph ], [ %pathsize.8, %if.end277 ]
  %path.0408 = phi i8* [ %call56, %while.body.lr.ph ], [ %path.8, %if.end277 ]
  %27 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool58 = icmp eq i32 %27, 0
  br i1 %tobool58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %while.body
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17.185, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %28) #5
  br i1 %cmp4.i, label %for.body.i.preheader, label %if.end61

for.body.i.preheader:                             ; preds = %if.then59
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %i.05.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.body.i.preheader ]
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %31 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.186, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %30) #5
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %conv60
  br i1 %exitcond.i, label %if.end61, label %for.body.i

if.end61:                                         ; preds = %for.body.i, %if.then59, %while.body
  %32 = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  %mode = getelementptr inbounds %struct._info, %struct._info* %32, i64 0, i32 7
  %33 = load i32, i32* %mode, align 4, !tbaa !30
  %and = and i32 %33, 61440
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.end61
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.end61 ]
  %arrayidx67 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([8 x i32]* @ifmt to [0 x i32]*), i64 0, i64 %indvars.iv
  %34 = load i32, i32* %arrayidx67, align 4, !tbaa !15
  %tobool68 = icmp eq i32 %34, 0
  %cmp71 = icmp eq i32 %34, %and
  %or.cond398 = or i1 %tobool68, %cmp71
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br i1 %or.cond398, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %arrayidx76 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([9 x i8*]* @ftype to [0 x i8*]*), i64 0, i64 %indvars.iv
  %36 = load i8*, i8** %arrayidx76, align 8, !tbaa !5
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4.187, i64 0, i64 0), i8* %36)
  %37 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool78 = icmp eq i32 %37, 0
  br i1 %tobool78, label %if.else105, label %if.then79

if.then79:                                        ; preds = %for.end
  %call80 = call i64 @strlen(i8* %d) #13
  %38 = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  %name = getelementptr inbounds %struct._info, %struct._info* %38, i64 0, i32 0
  %39 = load i8*, i8** %name, align 8, !tbaa !11
  %call81 = call i64 @strlen(i8* %39) #13
  %add82 = add i64 %call81, %call80
  %add83 = add i64 %add82, 2
  %cmp85 = icmp ugt i64 %add83, %pathsize.0409
  br i1 %cmp85, label %if.then87, label %if.end95

if.then87:                                        ; preds = %if.then79
  %add92 = add i64 %add82, 1024
  %call94 = call i8* @xrealloc(i8* %path.0408, i64 %add92) #5
  %.pre = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  %name102.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre, i64 0, i32 0
  %.pre414 = load i8*, i8** %name102.phi.trans.insert, align 8, !tbaa !11
  br label %if.end95

if.end95:                                         ; preds = %if.then87, %if.then79
  %40 = phi i8* [ %.pre414, %if.then87 ], [ %39, %if.then79 ]
  %path.1 = phi i8* [ %call94, %if.then87 ], [ %path.0408, %if.then79 ]
  %pathsize.1 = phi i64 [ %add92, %if.then87 ], [ %pathsize.0409, %if.then79 ]
  %call96 = call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.188, i64 0, i64 0)) #13
  %tobool97 = icmp eq i32 %call96, 0
  br i1 %tobool97, label %if.then98, label %if.else101

if.then98:                                        ; preds = %if.end95
  %call100 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.189, i64 0, i64 0), i8* %d, i8* %40) #5
  br label %if.end121

if.else101:                                       ; preds = %if.end95
  %call103 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.190, i64 0, i64 0), i8* %d, i8* %40) #5
  br label %if.end121

if.else105:                                       ; preds = %for.end
  %41 = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  %name106 = getelementptr inbounds %struct._info, %struct._info* %41, i64 0, i32 0
  %42 = load i8*, i8** %name106, align 8, !tbaa !11
  %call107 = call i64 @strlen(i8* %42) #13
  %add108 = add i64 %call107, 1
  %cmp110 = icmp ugt i64 %add108, %pathsize.0409
  br i1 %cmp110, label %if.then112, label %if.end118

if.then112:                                       ; preds = %if.else105
  %add115 = add i64 %call107, 1024
  %call117 = call i8* @xrealloc(i8* %path.0408, i64 %add115) #5
  %.pre415 = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  %name119.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre415, i64 0, i32 0
  %.pre416 = load i8*, i8** %name119.phi.trans.insert, align 8, !tbaa !11
  br label %if.end118

if.end118:                                        ; preds = %if.then112, %if.else105
  %43 = phi i8* [ %.pre416, %if.then112 ], [ %42, %if.else105 ]
  %path.2 = phi i8* [ %call117, %if.then112 ], [ %path.0408, %if.else105 ]
  %pathsize.2 = phi i64 [ %add115, %if.then112 ], [ %pathsize.0409, %if.else105 ]
  %strlen = call i64 @strlen(i8* %43)
  %leninc = add i64 %strlen, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %path.2, i8* %43, i64 %leninc, i32 1, i1 false)
  br label %if.end121

if.end121:                                        ; preds = %if.then98, %if.else101, %if.end118
  %path.3 = phi i8* [ %path.1, %if.else101 ], [ %path.1, %if.then98 ], [ %path.2, %if.end118 ]
  %pathsize.3 = phi i64 [ %pathsize.1, %if.else101 ], [ %pathsize.1, %if.then98 ], [ %pathsize.2, %if.end118 ]
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %45 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9.191, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %44)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  call void @html_encode(%struct._IO_FILE* %46, i8* %path.3) #5
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call123 = call i32 @fputc(i32 34, %struct._IO_FILE* %47)
  %48 = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  %lnk124 = getelementptr inbounds %struct._info, %struct._info* %48, i64 0, i32 1
  %49 = load i8*, i8** %lnk124, align 8, !tbaa !35
  %tobool125 = icmp eq i8* %49, null
  br i1 %tobool125, label %if.end130, label %if.then126

if.then126:                                       ; preds = %if.end121
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %51 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10.192, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %50)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %53 = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  %lnk128 = getelementptr inbounds %struct._info, %struct._info* %53, i64 0, i32 1
  %54 = load i8*, i8** %lnk128, align 8, !tbaa !35
  call void @html_encode(%struct._IO_FILE* %52, i8* %54) #5
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call129 = call i32 @fputc(i32 34, %struct._IO_FILE* %55)
  %.pre417 = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  br label %if.end130

if.end130:                                        ; preds = %if.end121, %if.then126
  %56 = phi %struct._info* [ %48, %if.end121 ], [ %.pre417, %if.then126 ]
  call void @json_fillinfo(%struct._info* %56)
  %57 = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  %isdir = getelementptr inbounds %struct._info, %struct._info* %57, i64 0, i32 2
  %58 = load i32, i32* %isdir, align 8, !tbaa !7
  %tobool131 = icmp eq i32 %58, 0
  br i1 %tobool131, label %land.lhs.true132, label %if.else142

land.lhs.true132:                                 ; preds = %if.end130
  %lnk133 = getelementptr inbounds %struct._info, %struct._info* %57, i64 0, i32 1
  %59 = load i8*, i8** %lnk133, align 8, !tbaa !35
  %tobool134 = icmp eq i8* %59, null
  br i1 %tobool134, label %if.then135, label %if.else142

if.then135:                                       ; preds = %land.lhs.true132
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call136 = call i32 @fputc(i32 125, %struct._IO_FILE* %60)
  %add.ptr137 = getelementptr inbounds %struct._info*, %struct._info** %dir.0410, i64 1
  %61 = load %struct._info*, %struct._info** %add.ptr137, align 8, !tbaa !5
  %tobool138 = icmp eq %struct._info* %61, null
  br i1 %tobool138, label %if.end144, label %if.then139

if.then139:                                       ; preds = %if.then135
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call140 = call i32 @fputc(i32 44, %struct._IO_FILE* %62)
  br label %if.end144

if.else142:                                       ; preds = %land.lhs.true132, %if.end130
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %64 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11.193, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %63)
  br label %if.end144

if.end144:                                        ; preds = %if.then135, %if.then139, %if.else142
  %65 = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  %isdir145 = getelementptr inbounds %struct._info, %struct._info* %65, i64 0, i32 2
  %66 = load i32, i32* %isdir145, align 8, !tbaa !7
  %tobool146 = icmp eq i32 %66, 0
  br i1 %tobool146, label %if.end246, label %if.then147

if.then147:                                       ; preds = %if.end144
  %lnk148 = getelementptr inbounds %struct._info, %struct._info* %65, i64 0, i32 1
  %67 = load i8*, i8** %lnk148, align 8, !tbaa !35
  %tobool149 = icmp eq i8* %67, null
  br i1 %tobool149, label %if.else205, label %if.then150

if.then150:                                       ; preds = %if.then147
  %68 = load i32, i32* @lflag, align 4, !tbaa !2
  %tobool151 = icmp eq i32 %68, 0
  br i1 %tobool151, label %if.end246, label %land.lhs.true152

land.lhs.true152:                                 ; preds = %if.then150
  %69 = load i32, i32* @xdev, align 4, !tbaa !2
  %tobool153 = icmp eq i32 %69, 0
  %dev159.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %65, i64 0, i32 15
  %.pre418 = load i64, i64* %dev159.phi.trans.insert, align 8, !tbaa !44
  br i1 %tobool153, label %if.then158, label %land.lhs.true154

land.lhs.true154:                                 ; preds = %land.lhs.true152
  %cmp156 = icmp eq i64 %dev.addr.0, %.pre418
  br i1 %cmp156, label %if.then158, label %if.end246

if.then158:                                       ; preds = %land.lhs.true152, %land.lhs.true154
  %70 = phi i64 [ %dev.addr.0, %land.lhs.true154 ], [ %.pre418, %land.lhs.true152 ]
  %inode = getelementptr inbounds %struct._info, %struct._info* %65, i64 0, i32 16
  %71 = load i64, i64* %inode, align 8, !tbaa !45
  %call160 = call i32 @findino(i64 %71, i64 %70) #5
  %tobool161 = icmp eq i32 %call160, 0
  br i1 %tobool161, label %if.else164, label %if.then162

if.then162:                                       ; preds = %if.then158
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %73 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12.194, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %72)
  br label %if.end246

if.else164:                                       ; preds = %if.then158
  %74 = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  %inode165 = getelementptr inbounds %struct._info, %struct._info* %74, i64 0, i32 16
  %75 = load i64, i64* %inode165, align 8, !tbaa !45
  %dev166 = getelementptr inbounds %struct._info, %struct._info* %74, i64 0, i32 15
  %76 = load i64, i64* %dev166, align 8, !tbaa !44
  call void @saveino(i64 %75, i64 %76) #5
  %77 = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  %lnk167 = getelementptr inbounds %struct._info, %struct._info* %77, i64 0, i32 1
  %78 = load i8*, i8** %lnk167, align 8, !tbaa !35
  %79 = load i8, i8* %78, align 1, !tbaa !2
  %cmp169 = icmp eq i8 %79, 47
  br i1 %cmp169, label %if.then171, label %if.else174

if.then171:                                       ; preds = %if.else164
  %80 = load void (i8*, i32*, i32*, i64, i64)*, void (i8*, i32*, i32*, i64, i64)** bitcast (i64 (i8*, i32*, i32*, i64, i64)** @listdir to void (i8*, i32*, i32*, i64, i64)**), align 8, !tbaa !5
  call void %80(i8* %78, i32* %dt, i32* %ft, i64 %add240, i64 %dev.addr.0) #5
  br label %if.end246

if.else174:                                       ; preds = %if.else164
  %call175 = call i64 @strlen(i8* %d) #13
  %call177 = call i64 @strlen(i8* %78) #13
  %add178 = add i64 %call175, 2
  %add179 = add i64 %add178, %call177
  %cmp180 = icmp ugt i64 %add179, %pathsize.3
  br i1 %cmp180, label %if.then182, label %if.end189

if.then182:                                       ; preds = %if.else174
  %name184 = getelementptr inbounds %struct._info, %struct._info* %77, i64 0, i32 0
  %81 = load i8*, i8** %name184, align 8, !tbaa !11
  %call185 = call i64 @strlen(i8* %81) #13
  %add186 = add i64 %call175, 1024
  %add187 = add i64 %add186, %call185
  %call188 = call i8* @xrealloc(i8* %path.3, i64 %add187) #5
  br label %if.end189

if.end189:                                        ; preds = %if.then182, %if.else174
  %path.4 = phi i8* [ %call188, %if.then182 ], [ %path.3, %if.else174 ]
  %pathsize.4 = phi i64 [ %add187, %if.then182 ], [ %pathsize.3, %if.else174 ]
  %82 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool190 = icmp eq i32 %82, 0
  br i1 %tobool190, label %if.else197, label %land.lhs.true191

land.lhs.true191:                                 ; preds = %if.end189
  %call192 = call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.188, i64 0, i64 0)) #13
  %tobool193 = icmp eq i32 %call192, 0
  br i1 %tobool193, label %if.then194, label %if.else197

if.then194:                                       ; preds = %land.lhs.true191
  %83 = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  %lnk195 = getelementptr inbounds %struct._info, %struct._info* %83, i64 0, i32 1
  %84 = load i8*, i8** %lnk195, align 8, !tbaa !35
  %call196 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.189, i64 0, i64 0), i8* %d, i8* %84) #5
  br label %if.end200

if.else197:                                       ; preds = %land.lhs.true191, %if.end189
  %85 = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  %lnk198 = getelementptr inbounds %struct._info, %struct._info* %85, i64 0, i32 1
  %86 = load i8*, i8** %lnk198, align 8, !tbaa !35
  %call199 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.190, i64 0, i64 0), i8* %d, i8* %86) #5
  br label %if.end200

if.end200:                                        ; preds = %if.else197, %if.then194
  %87 = load void (i8*, i32*, i32*, i64, i64)*, void (i8*, i32*, i32*, i64, i64)** bitcast (i64 (i8*, i32*, i32*, i64, i64)** @listdir to void (i8*, i32*, i32*, i64, i64)**), align 8, !tbaa !5
  call void %87(i8* %path.4, i32* %dt, i32* %ft, i64 %add240, i64 %dev.addr.0) #5
  br label %if.end246

if.else205:                                       ; preds = %if.then147
  %88 = load i32, i32* @xdev, align 4, !tbaa !2
  %tobool206 = icmp eq i32 %88, 0
  br i1 %tobool206, label %if.then211, label %land.lhs.true207

land.lhs.true207:                                 ; preds = %if.else205
  %dev208 = getelementptr inbounds %struct._info, %struct._info* %65, i64 0, i32 15
  %89 = load i64, i64* %dev208, align 8, !tbaa !44
  %cmp209 = icmp eq i64 %dev.addr.0, %89
  br i1 %cmp209, label %if.then211, label %if.end246

if.then211:                                       ; preds = %land.lhs.true207, %if.else205
  %call212 = call i64 @strlen(i8* %d) #13
  %name213 = getelementptr inbounds %struct._info, %struct._info* %65, i64 0, i32 0
  %90 = load i8*, i8** %name213, align 8, !tbaa !11
  %call214 = call i64 @strlen(i8* %90) #13
  %add215 = add i64 %call214, %call212
  %add216 = add i64 %add215, 2
  %cmp217 = icmp ugt i64 %add216, %pathsize.3
  br i1 %cmp217, label %if.then219, label %if.end226

if.then219:                                       ; preds = %if.then211
  %add224 = add i64 %add215, 1024
  %call225 = call i8* @xrealloc(i8* %path.3, i64 %add224) #5
  br label %if.end226

if.end226:                                        ; preds = %if.then219, %if.then211
  %path.6 = phi i8* [ %call225, %if.then219 ], [ %path.3, %if.then211 ]
  %pathsize.6 = phi i64 [ %add224, %if.then219 ], [ %pathsize.3, %if.then211 ]
  %91 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool227 = icmp eq i32 %91, 0
  br i1 %tobool227, label %if.else234, label %land.lhs.true228

land.lhs.true228:                                 ; preds = %if.end226
  %call229 = call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.188, i64 0, i64 0)) #13
  %tobool230 = icmp eq i32 %call229, 0
  br i1 %tobool230, label %if.then231, label %if.else234

if.then231:                                       ; preds = %land.lhs.true228
  %92 = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  %name232 = getelementptr inbounds %struct._info, %struct._info* %92, i64 0, i32 0
  %93 = load i8*, i8** %name232, align 8, !tbaa !11
  %call233 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.189, i64 0, i64 0), i8* %d, i8* %93) #5
  br label %if.end237

if.else234:                                       ; preds = %land.lhs.true228, %if.end226
  %94 = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  %name235 = getelementptr inbounds %struct._info, %struct._info* %94, i64 0, i32 0
  %95 = load i8*, i8** %name235, align 8, !tbaa !11
  %call236 = call i32 (i8*, i8*, ...) @sprintf(i8* %path.6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.190, i64 0, i64 0), i8* %d, i8* %95) #5
  br label %if.end237

if.end237:                                        ; preds = %if.else234, %if.then231
  %96 = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  %inode238 = getelementptr inbounds %struct._info, %struct._info* %96, i64 0, i32 16
  %97 = load i64, i64* %inode238, align 8, !tbaa !45
  %dev239 = getelementptr inbounds %struct._info, %struct._info* %96, i64 0, i32 15
  %98 = load i64, i64* %dev239, align 8, !tbaa !44
  call void @saveino(i64 %97, i64 %98) #5
  %99 = load void (i8*, i32*, i32*, i64, i64)*, void (i8*, i32*, i32*, i64, i64)** bitcast (i64 (i8*, i32*, i32*, i64, i64)** @listdir to void (i8*, i32*, i32*, i64, i64)**), align 8, !tbaa !5
  call void %99(i8* %path.6, i32* %dt, i32* %ft, i64 %add240, i64 %dev.addr.0) #5
  br label %if.end246

if.end246:                                        ; preds = %if.end144, %if.then162, %if.end237, %land.lhs.true207, %if.then150, %land.lhs.true154, %if.end200, %if.then171
  %path.8 = phi i8* [ %path.3, %land.lhs.true154 ], [ %path.3, %if.then162 ], [ %path.3, %if.then150 ], [ %path.3, %land.lhs.true207 ], [ %path.6, %if.end237 ], [ %path.3, %if.then171 ], [ %path.4, %if.end200 ], [ %path.3, %if.end144 ]
  %nlf.2 = phi i32 [ 0, %land.lhs.true154 ], [ 0, %if.then162 ], [ 0, %if.then150 ], [ 0, %land.lhs.true207 ], [ 1, %if.end237 ], [ 1, %if.then171 ], [ 1, %if.end200 ], [ 0, %if.end144 ]
  %pathsize.8 = phi i64 [ %pathsize.3, %land.lhs.true154 ], [ %pathsize.3, %if.then162 ], [ %pathsize.3, %if.then150 ], [ %pathsize.3, %land.lhs.true207 ], [ %pathsize.6, %if.end237 ], [ %pathsize.3, %if.then171 ], [ %pathsize.4, %if.end200 ], [ %pathsize.3, %if.end144 ]
  %.sink289 = phi i32* [ %dt, %land.lhs.true154 ], [ %dt, %if.then162 ], [ %dt, %if.then150 ], [ %dt, %land.lhs.true207 ], [ %dt, %if.end237 ], [ %dt, %if.then171 ], [ %dt, %if.end200 ], [ %ft, %if.end144 ]
  %100 = load i32, i32* %.sink289, align 4, !tbaa !15
  %add245 = add nsw i32 %100, 1
  store i32 %add245, i32* %.sink289, align 4, !tbaa !15
  %add.ptr247 = getelementptr inbounds %struct._info*, %struct._info** %dir.0410, i64 1
  %101 = load %struct._info*, %struct._info** %add.ptr247, align 8, !tbaa !5
  %tobool248 = icmp eq %struct._info* %101, null
  br i1 %tobool248, label %if.end254, label %land.lhs.true249

land.lhs.true249:                                 ; preds = %if.end246
  %add.ptr250 = getelementptr inbounds %struct._info*, %struct._info** %dir.0410, i64 2
  %102 = load %struct._info*, %struct._info** %add.ptr250, align 8, !tbaa !5
  %tobool251 = icmp eq %struct._info* %102, null
  br i1 %tobool251, label %if.then252, label %if.end254

if.then252:                                       ; preds = %land.lhs.true249
  %103 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx253 = getelementptr inbounds i32, i32* %103, i64 %lev
  store i32 2, i32* %arrayidx253, align 4, !tbaa !15
  br label %if.end254

if.end254:                                        ; preds = %land.lhs.true249, %if.end246, %if.then252
  %tobool255 = icmp ne i32 %nlf.2, 0
  %104 = load i32, i32* @noindent, align 4
  %tobool257 = icmp eq i32 %104, 0
  %or.cond406 = and i1 %tobool255, %tobool257
  br i1 %or.cond406, label %if.then258, label %if.end261

if.then258:                                       ; preds = %if.end254
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %106 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17.185, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %105) #5
  br i1 %cmp4.i, label %for.body.i404.preheader, label %if.end261

for.body.i404.preheader:                          ; preds = %if.then258
  br label %for.body.i404

for.body.i404:                                    ; preds = %for.body.i404.preheader, %for.body.i404
  %i.05.i401 = phi i32 [ %inc.i402, %for.body.i404 ], [ 0, %for.body.i404.preheader ]
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %108 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.186, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %107) #5
  %inc.i402 = add nuw nsw i32 %i.05.i401, 1
  %exitcond.i403 = icmp eq i32 %inc.i402, %conv60
  br i1 %exitcond.i403, label %if.end261, label %for.body.i404

if.end261:                                        ; preds = %for.body.i404, %if.end254, %if.then258
  %109 = load %struct._info*, %struct._info** %dir.0410, align 8, !tbaa !5
  %isdir262 = getelementptr inbounds %struct._info, %struct._info* %109, i64 0, i32 2
  %110 = load i32, i32* %isdir262, align 8, !tbaa !7
  %tobool263 = icmp eq i32 %110, 0
  br i1 %tobool263, label %lor.lhs.false, label %if.then266

lor.lhs.false:                                    ; preds = %if.end261
  %lnk264 = getelementptr inbounds %struct._info, %struct._info* %109, i64 0, i32 1
  %111 = load i8*, i8** %lnk264, align 8, !tbaa !35
  %tobool265 = icmp eq i8* %111, null
  br i1 %tobool265, label %if.end273, label %if.then266

if.then266:                                       ; preds = %lor.lhs.false, %if.end261
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %113 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13.195, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %112)
  %114 = load %struct._info*, %struct._info** %add.ptr247, align 8, !tbaa !5
  %tobool269 = icmp eq %struct._info* %114, null
  br i1 %tobool269, label %if.end273, label %if.then270

if.then270:                                       ; preds = %if.then266
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call271 = call i32 @fputc(i32 44, %struct._IO_FILE* %115)
  br label %if.end273

if.end273:                                        ; preds = %if.then266, %lor.lhs.false, %if.then270
  %116 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool274 = icmp eq i32 %116, 0
  br i1 %tobool274, label %if.then275, label %if.end277

if.then275:                                       ; preds = %if.end273
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call276 = call i32 @fputc(i32 10, %struct._IO_FILE* %117)
  br label %if.end277

if.end277:                                        ; preds = %if.end273, %if.then275
  %118 = load %struct._info*, %struct._info** %add.ptr247, align 8, !tbaa !5
  %tobool57 = icmp eq %struct._info* %118, null
  br i1 %tobool57, label %while.end, label %while.body

while.end:                                        ; preds = %if.end277, %if.end55
  %path.0.lcssa = phi i8* [ %call56, %if.end55 ], [ %path.8, %if.end277 ]
  %119 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx278 = getelementptr inbounds i32, i32* %119, i64 %lev
  store i32 0, i32* %arrayidx278, align 4, !tbaa !15
  call void @free(i8* %path.0.lcssa) #5
  call void @free_dir(%struct._info** %call12) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.then, %while.end, %if.then32, %if.end25, %if.then16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #5
  ret i64 0
}

; Function Attrs: nounwind uwtable
define void @json_fillinfo(%struct._info* nocapture readonly %ent) local_unnamed_addr #2 {
entry:
  %0 = load i32, i32* @inodeflag, align 4, !tbaa !2
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %inode = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 16
  %2 = load i64, i64* %inode, align 8, !tbaa !45
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19.196, i64 0, i64 0), i64 %2)
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %3 = load i32, i32* @devflag, align 4, !tbaa !2
  %tobool1 = icmp eq i32 %3, 0
  br i1 %tobool1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %dev = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 15
  %5 = load i64, i64* %dev, align 8, !tbaa !44
  %conv = trunc i64 %5 to i32
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20.197, i64 0, i64 0), i32 %conv)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %6 = load i32, i32* @pflag, align 4, !tbaa !2
  %tobool5 = icmp eq i32 %6, 0
  br i1 %tobool5, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.end4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %mode = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 7
  %8 = load i32, i32* %mode, align 4, !tbaa !30
  %and = and i32 %8, 4095
  %call8 = tail call i8* @prot(i32 %8) #5
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21.198, i64 0, i64 0), i32 %and, i8* %call8)
  br label %if.end10

if.end10:                                         ; preds = %if.end4, %if.then6
  %9 = load i32, i32* @uflag, align 4, !tbaa !2
  %tobool11 = icmp eq i32 %9, 0
  br i1 %tobool11, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end10
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %uid = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 9
  %11 = load i32, i32* %uid, align 4, !tbaa !32
  %call13 = tail call i8* @uidtoname(i32 %11) #5
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22.199, i64 0, i64 0), i8* %call13)
  br label %if.end15

if.end15:                                         ; preds = %if.end10, %if.then12
  %12 = load i32, i32* @gflag, align 4, !tbaa !2
  %tobool16 = icmp eq i32 %12, 0
  br i1 %tobool16, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.end15
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %gid = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 10
  %14 = load i32, i32* %gid, align 8, !tbaa !34
  %call18 = tail call i8* @gidtoname(i32 %14) #5
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23.200, i64 0, i64 0), i8* %call18)
  br label %if.end20

if.end20:                                         ; preds = %if.end15, %if.then17
  %15 = load i32, i32* @sflag, align 4, !tbaa !2
  %tobool21 = icmp eq i32 %15, 0
  br i1 %tobool21, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end20
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %size = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 11
  %17 = load i64, i64* %size, align 8, !tbaa !12
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24.201, i64 0, i64 0), i64 %17)
  br label %if.end24

if.end24:                                         ; preds = %if.end20, %if.then22
  %18 = load i32, i32* @Dflag, align 4, !tbaa !2
  %tobool25 = icmp eq i32 %18, 0
  br i1 %tobool25, label %if.end30, label %if.then26

if.then26:                                        ; preds = %if.end24
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %20 = load i32, i32* @cflag, align 4, !tbaa !2
  %tobool27 = icmp eq i32 %20, 0
  %mtime = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 14
  %ctime = getelementptr inbounds %struct._info, %struct._info* %ent, i64 0, i32 13
  %mtime.sink = select i1 %tobool27, i64* %mtime, i64* %ctime
  %21 = load i64, i64* %mtime.sink, align 8, !tbaa !29
  %call28 = tail call i8* @do_date(i64 %21) #5
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25.202, i64 0, i64 0), i8* %call28)
  br label %if.end30

if.end30:                                         ; preds = %if.end24, %if.then26
  ret void
}

; Function Attrs: nounwind uwtable
define void @json_indent(i32 %maxlevel) local_unnamed_addr #2 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17.185, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %0)
  %cmp4 = icmp sgt i32 %maxlevel, 0
  br i1 %cmp4, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.05 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.186, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %2)
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond = icmp eq i32 %inc, %maxlevel
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @json_rlistdir(i8* %d, i32* nocapture %dt, i32* nocapture %ft, i64 %lev, i64 %dev) #2 {
entry:
  %size = alloca i64, align 8
  %err = alloca i8*, align 8
  %0 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i64 0, i64* %size, align 8, !tbaa !29
  %1 = bitcast i8** %err to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %call = call %struct._info** @getfulltree(i8* %d, i64 %lev, i64 %dev, i64* nonnull %size, i8** nonnull %err) #5
  %2 = load i8*, i8** bitcast (i32** @dirs to i8**), align 8, !tbaa !5
  %3 = load i32, i32* @maxdirs, align 4, !tbaa !15
  %conv = sext i32 %3 to i64
  %mul = shl nsw i64 %conv, 2
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %mul, i32 4, i1 false)
  call void @jsonr_listdir(%struct._info** %call, i8* %d, i32* %dt, i32* %ft, i64 %lev)
  %4 = load i64, i64* %size, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define void @jsonr_listdir(%struct._info** %dir, i8* %d, i32* nocapture %dt, i32* nocapture %ft, i64 %lev) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq %struct._info** %dir, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %lev
  store i32 1, i32* %arrayidx, align 4, !tbaa !15
  %add.ptr = getelementptr inbounds %struct._info*, %struct._info** %dir, i64 1
  %1 = load %struct._info*, %struct._info** %add.ptr, align 8, !tbaa !5
  %tobool = icmp eq %struct._info* %1, null
  %. = select i1 %tobool, i32 2, i32 1
  store i32 %., i32* %arrayidx, align 4
  %2 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool4 = icmp eq i32 %2, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %3)
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then5
  %call7 = tail call noalias i8* @malloc(i64 4096) #5
  %4 = load %struct._info*, %struct._info** %dir, align 8, !tbaa !5
  %tobool8259 = icmp eq %struct._info* %4, null
  br i1 %tobool8259, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end6
  %conv = trunc i64 %lev to i32
  %cmp4.i = icmp sgt i32 %conv, 0
  %add130 = add i64 %lev, 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end172
  %dir.addr.0262 = phi %struct._info** [ %dir, %while.body.lr.ph ], [ %add.ptr140, %if.end172 ]
  %path.0261 = phi i8* [ %call7, %while.body.lr.ph ], [ %path.6, %if.end172 ]
  %pathsize.0260 = phi i64 [ 4096, %while.body.lr.ph ], [ %pathsize.6, %if.end172 ]
  %5 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool9 = icmp eq i32 %5, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17.185, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %6) #5
  br i1 %cmp4.i, label %for.body.i.preheader, label %if.end11

for.body.i.preheader:                             ; preds = %if.then10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %i.05.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.body.i.preheader ]
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.186, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %8) #5
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.i, label %if.end11, label %for.body.i

if.end11:                                         ; preds = %for.body.i, %if.then10, %while.body
  %10 = load %struct._info*, %struct._info** %dir.addr.0262, align 8, !tbaa !5
  %mode = getelementptr inbounds %struct._info, %struct._info* %10, i64 0, i32 7
  %11 = load i32, i32* %mode, align 4, !tbaa !30
  %and = and i32 %11, 61440
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.end11
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.end11 ]
  %arrayidx17 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([8 x i32]* @ifmt to [0 x i32]*), i64 0, i64 %indvars.iv
  %12 = load i32, i32* %arrayidx17, align 4, !tbaa !15
  %tobool18 = icmp eq i32 %12, 0
  %cmp21 = icmp eq i32 %12, %and
  %or.cond250 = or i1 %tobool18, %cmp21
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br i1 %or.cond250, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %arrayidx26 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([9 x i8*]* @ftype to [0 x i8*]*), i64 0, i64 %indvars.iv
  %14 = load i8*, i8** %arrayidx26, align 8, !tbaa !5
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4.187, i64 0, i64 0), i8* %14)
  %15 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool28 = icmp eq i32 %15, 0
  br i1 %tobool28, label %if.else53, label %if.then29

if.then29:                                        ; preds = %for.end
  %call30 = tail call i64 @strlen(i8* %d) #13
  %16 = load %struct._info*, %struct._info** %dir.addr.0262, align 8, !tbaa !5
  %name = getelementptr inbounds %struct._info, %struct._info* %16, i64 0, i32 0
  %17 = load i8*, i8** %name, align 8, !tbaa !11
  %call31 = tail call i64 @strlen(i8* %17) #13
  %add = add i64 %call31, %call30
  %add32 = add i64 %add, 2
  %cmp33 = icmp ugt i64 %add32, %pathsize.0260
  br i1 %cmp33, label %if.then35, label %if.end43

if.then35:                                        ; preds = %if.then29
  %add40 = add i64 %add, 1024
  %call42 = tail call i8* @xrealloc(i8* %path.0261, i64 %add40) #5
  %.pre = load %struct._info*, %struct._info** %dir.addr.0262, align 8, !tbaa !5
  %name50.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre, i64 0, i32 0
  %.pre264 = load i8*, i8** %name50.phi.trans.insert, align 8, !tbaa !11
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %if.then29
  %18 = phi i8* [ %.pre264, %if.then35 ], [ %17, %if.then29 ]
  %pathsize.1 = phi i64 [ %add40, %if.then35 ], [ %pathsize.0260, %if.then29 ]
  %path.1 = phi i8* [ %call42, %if.then35 ], [ %path.0261, %if.then29 ]
  %call44 = tail call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.188, i64 0, i64 0)) #13
  %tobool45 = icmp eq i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.else49

if.then46:                                        ; preds = %if.end43
  %call48 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.189, i64 0, i64 0), i8* %d, i8* %18) #5
  br label %if.end69

if.else49:                                        ; preds = %if.end43
  %call51 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %path.1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.190, i64 0, i64 0), i8* %d, i8* %18) #5
  br label %if.end69

if.else53:                                        ; preds = %for.end
  %19 = load %struct._info*, %struct._info** %dir.addr.0262, align 8, !tbaa !5
  %name54 = getelementptr inbounds %struct._info, %struct._info* %19, i64 0, i32 0
  %20 = load i8*, i8** %name54, align 8, !tbaa !11
  %call55 = tail call i64 @strlen(i8* %20) #13
  %add56 = add i64 %call55, 1
  %cmp58 = icmp ugt i64 %add56, %pathsize.0260
  br i1 %cmp58, label %if.then60, label %if.end66

if.then60:                                        ; preds = %if.else53
  %add63 = add i64 %call55, 1024
  %call65 = tail call i8* @xrealloc(i8* %path.0261, i64 %add63) #5
  %.pre265 = load %struct._info*, %struct._info** %dir.addr.0262, align 8, !tbaa !5
  %name67.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre265, i64 0, i32 0
  %.pre266 = load i8*, i8** %name67.phi.trans.insert, align 8, !tbaa !11
  br label %if.end66

if.end66:                                         ; preds = %if.then60, %if.else53
  %21 = phi i8* [ %.pre266, %if.then60 ], [ %20, %if.else53 ]
  %pathsize.2 = phi i64 [ %add63, %if.then60 ], [ %pathsize.0260, %if.else53 ]
  %path.2 = phi i8* [ %call65, %if.then60 ], [ %path.0261, %if.else53 ]
  %strlen = tail call i64 @strlen(i8* %21)
  %leninc = add i64 %strlen, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %path.2, i8* %21, i64 %leninc, i32 1, i1 false)
  br label %if.end69

if.end69:                                         ; preds = %if.then46, %if.else49, %if.end66
  %pathsize.3 = phi i64 [ %pathsize.1, %if.else49 ], [ %pathsize.1, %if.then46 ], [ %pathsize.2, %if.end66 ]
  %path.3 = phi i8* [ %path.1, %if.else49 ], [ %path.1, %if.then46 ], [ %path.2, %if.end66 ]
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9.191, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %22)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  tail call void @html_encode(%struct._IO_FILE* %24, i8* %path.3) #5
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call71 = tail call i32 @fputc(i32 34, %struct._IO_FILE* %25)
  %26 = load %struct._info*, %struct._info** %dir.addr.0262, align 8, !tbaa !5
  %lnk72 = getelementptr inbounds %struct._info, %struct._info* %26, i64 0, i32 1
  %27 = load i8*, i8** %lnk72, align 8, !tbaa !35
  %tobool73 = icmp eq i8* %27, null
  br i1 %tobool73, label %if.end78, label %if.then74

if.then74:                                        ; preds = %if.end69
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %29 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10.192, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %28)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %31 = load %struct._info*, %struct._info** %dir.addr.0262, align 8, !tbaa !5
  %lnk76 = getelementptr inbounds %struct._info, %struct._info* %31, i64 0, i32 1
  %32 = load i8*, i8** %lnk76, align 8, !tbaa !35
  tail call void @html_encode(%struct._IO_FILE* %30, i8* %32) #5
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call77 = tail call i32 @fputc(i32 34, %struct._IO_FILE* %33)
  %.pre267 = load %struct._info*, %struct._info** %dir.addr.0262, align 8, !tbaa !5
  br label %if.end78

if.end78:                                         ; preds = %if.end69, %if.then74
  %34 = phi %struct._info* [ %26, %if.end69 ], [ %.pre267, %if.then74 ]
  tail call void @json_fillinfo(%struct._info* %34)
  %trunc = trunc i32 %and to i16
  switch i16 %trunc, label %land.lhs.true83 [
    i16 -24576, label %if.else88
    i16 16384, label %if.else88
  ]

land.lhs.true83:                                  ; preds = %if.end78
  %35 = load %struct._info*, %struct._info** %dir.addr.0262, align 8, !tbaa !5
  %err = getelementptr inbounds %struct._info, %struct._info* %35, i64 0, i32 17
  %36 = load i8*, i8** %err, align 8, !tbaa !37
  %cmp84 = icmp eq i8* %36, null
  br i1 %cmp84, label %if.then86, label %if.else88

if.then86:                                        ; preds = %land.lhs.true83
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %38 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14.205, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %37)
  br label %if.end90

if.else88:                                        ; preds = %if.end78, %if.end78, %land.lhs.true83
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %40 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11.193, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %39)
  br label %if.end90

if.end90:                                         ; preds = %if.else88, %if.then86
  %41 = load %struct._info*, %struct._info** %dir.addr.0262, align 8, !tbaa !5
  %err91 = getelementptr inbounds %struct._info, %struct._info* %41, i64 0, i32 17
  %42 = load i8*, i8** %err91, align 8, !tbaa !37
  %tobool92 = icmp eq i8* %42, null
  br i1 %tobool92, label %if.end98, label %if.then93

if.then93:                                        ; preds = %if.end90
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call95 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15.206, i64 0, i64 0), i8* nonnull %42)
  %44 = load %struct._info*, %struct._info** %dir.addr.0262, align 8, !tbaa !5
  %err96 = getelementptr inbounds %struct._info, %struct._info* %44, i64 0, i32 17
  %45 = load i8*, i8** %err96, align 8, !tbaa !37
  tail call void @free(i8* %45) #5
  %46 = load %struct._info*, %struct._info** %dir.addr.0262, align 8, !tbaa !5
  %err97 = getelementptr inbounds %struct._info, %struct._info* %46, i64 0, i32 17
  store i8* null, i8** %err97, align 8, !tbaa !37
  %.pre268 = load %struct._info*, %struct._info** %dir.addr.0262, align 8, !tbaa !5
  br label %if.end98

if.end98:                                         ; preds = %if.end90, %if.then93
  %47 = phi %struct._info* [ %41, %if.end90 ], [ %.pre268, %if.then93 ]
  %child = getelementptr inbounds %struct._info, %struct._info* %47, i64 0, i32 18
  %48 = load %struct._info**, %struct._info*** %child, align 8, !tbaa !38
  %tobool99 = icmp eq %struct._info** %48, null
  br i1 %tobool99, label %if.else132, label %if.then100

if.then100:                                       ; preds = %if.end98
  %49 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool101 = icmp eq i32 %49, 0
  br i1 %tobool101, label %if.end127, label %if.then102

if.then102:                                       ; preds = %if.then100
  %call103 = tail call i64 @strlen(i8* %d) #13
  %name104 = getelementptr inbounds %struct._info, %struct._info* %47, i64 0, i32 0
  %50 = load i8*, i8** %name104, align 8, !tbaa !11
  %call105 = tail call i64 @strlen(i8* %50) #13
  %add106 = add i64 %call105, %call103
  %add107 = add i64 %add106, 2
  %cmp108 = icmp ugt i64 %add107, %pathsize.3
  br i1 %cmp108, label %if.then110, label %if.end117

if.then110:                                       ; preds = %if.then102
  %add115 = add i64 %add106, 1024
  %call116 = tail call i8* @xrealloc(i8* %path.3, i64 %add115) #5
  %.pre269 = load %struct._info*, %struct._info** %dir.addr.0262, align 8, !tbaa !5
  %name124.phi.trans.insert = getelementptr inbounds %struct._info, %struct._info* %.pre269, i64 0, i32 0
  %.pre270 = load i8*, i8** %name124.phi.trans.insert, align 8, !tbaa !11
  br label %if.end117

if.end117:                                        ; preds = %if.then110, %if.then102
  %51 = phi i8* [ %.pre270, %if.then110 ], [ %50, %if.then102 ]
  %pathsize.4 = phi i64 [ %add115, %if.then110 ], [ %pathsize.3, %if.then102 ]
  %path.4 = phi i8* [ %call116, %if.then110 ], [ %path.3, %if.then102 ]
  %call118 = tail call i32 @strcmp(i8* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.188, i64 0, i64 0)) #13
  %tobool119 = icmp eq i32 %call118, 0
  br i1 %tobool119, label %if.then120, label %if.else123

if.then120:                                       ; preds = %if.end117
  %call122 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %path.4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.189, i64 0, i64 0), i8* %d, i8* %51) #5
  br label %if.end127

if.else123:                                       ; preds = %if.end117
  %call125 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %path.4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.190, i64 0, i64 0), i8* %d, i8* %51) #5
  br label %if.end127

if.end127:                                        ; preds = %if.then100, %if.then120, %if.else123
  %pathsize.5 = phi i64 [ %pathsize.4, %if.else123 ], [ %pathsize.4, %if.then120 ], [ %pathsize.3, %if.then100 ]
  %path.5 = phi i8* [ %path.4, %if.else123 ], [ %path.4, %if.then120 ], [ %path.3, %if.then100 ]
  %52 = load %struct._info*, %struct._info** %dir.addr.0262, align 8, !tbaa !5
  %child128 = getelementptr inbounds %struct._info, %struct._info* %52, i64 0, i32 18
  %53 = load %struct._info**, %struct._info*** %child128, align 8, !tbaa !38
  %54 = load i32, i32* @fflag, align 4, !tbaa !2
  %tobool129 = icmp eq i32 %54, 0
  %cond = select i1 %tobool129, i8* null, i8* %path.5
  tail call void @jsonr_listdir(%struct._info** %53, i8* %cond, i32* %dt, i32* %ft, i64 %add130)
  br label %if.end139

if.else132:                                       ; preds = %if.end98
  %isdir = getelementptr inbounds %struct._info, %struct._info* %47, i64 0, i32 2
  %55 = load i32, i32* %isdir, align 8, !tbaa !7
  %tobool133 = icmp eq i32 %55, 0
  %.sink180 = select i1 %tobool133, i32* %ft, i32* %dt
  br label %if.end139

if.end139:                                        ; preds = %if.else132, %if.end127
  %pathsize.6 = phi i64 [ %pathsize.5, %if.end127 ], [ %pathsize.3, %if.else132 ]
  %path.6 = phi i8* [ %path.5, %if.end127 ], [ %path.3, %if.else132 ]
  %nlf.1 = phi i32 [ 1, %if.end127 ], [ 0, %if.else132 ]
  %.sink180.sink181 = phi i32* [ %dt, %if.end127 ], [ %.sink180, %if.else132 ]
  %56 = load i32, i32* %.sink180.sink181, align 4, !tbaa !15
  %add137 = add nsw i32 %56, 1
  store i32 %add137, i32* %.sink180.sink181, align 4, !tbaa !15
  %add.ptr140 = getelementptr inbounds %struct._info*, %struct._info** %dir.addr.0262, i64 1
  %57 = load %struct._info*, %struct._info** %add.ptr140, align 8, !tbaa !5
  %tobool141 = icmp eq %struct._info* %57, null
  br i1 %tobool141, label %if.end147, label %land.lhs.true142

land.lhs.true142:                                 ; preds = %if.end139
  %add.ptr143 = getelementptr inbounds %struct._info*, %struct._info** %dir.addr.0262, i64 2
  %58 = load %struct._info*, %struct._info** %add.ptr143, align 8, !tbaa !5
  %tobool144 = icmp eq %struct._info* %58, null
  br i1 %tobool144, label %if.then145, label %if.end147

if.then145:                                       ; preds = %land.lhs.true142
  %59 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx146 = getelementptr inbounds i32, i32* %59, i64 %lev
  store i32 2, i32* %arrayidx146, align 4, !tbaa !15
  br label %if.end147

if.end147:                                        ; preds = %land.lhs.true142, %if.end139, %if.then145
  %tobool148 = icmp ne i32 %nlf.1, 0
  %60 = load i32, i32* @noindent, align 4
  %tobool150 = icmp eq i32 %60, 0
  %or.cond = and i1 %tobool148, %tobool150
  br i1 %or.cond, label %if.then151, label %if.end154

if.then151:                                       ; preds = %if.end147
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %62 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17.185, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %61) #5
  br i1 %cmp4.i, label %for.body.i256.preheader, label %if.end154

for.body.i256.preheader:                          ; preds = %if.then151
  br label %for.body.i256

for.body.i256:                                    ; preds = %for.body.i256.preheader, %for.body.i256
  %i.05.i253 = phi i32 [ %inc.i254, %for.body.i256 ], [ 0, %for.body.i256.preheader ]
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %64 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.186, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %63) #5
  %inc.i254 = add nuw nsw i32 %i.05.i253, 1
  %exitcond.i255 = icmp eq i32 %inc.i254, %conv
  br i1 %exitcond.i255, label %if.end154, label %for.body.i256

if.end154:                                        ; preds = %for.body.i256, %if.end147, %if.then151
  switch i16 %trunc, label %lor.lhs.false159 [
    i16 -24576, label %if.then163
    i16 16384, label %if.then163
  ]

lor.lhs.false159:                                 ; preds = %if.end154
  %65 = load %struct._info*, %struct._info** %dir.addr.0262, align 8, !tbaa !5
  %err160 = getelementptr inbounds %struct._info, %struct._info* %65, i64 0, i32 17
  %66 = load i8*, i8** %err160, align 8, !tbaa !37
  %cmp161 = icmp eq i8* %66, null
  br i1 %cmp161, label %if.else167, label %if.then163

if.then163:                                       ; preds = %if.end154, %if.end154, %lor.lhs.false159
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %68 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool164 = icmp eq i32 %68, 0
  %cond165 = select i1 %tobool164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.181, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.182, i64 0, i64 0)
  %call166 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16.207, i64 0, i64 0), i8* %cond165)
  br label %if.end172

if.else167:                                       ; preds = %lor.lhs.false159
  %69 = load i32, i32* @noindent, align 4, !tbaa !2
  %tobool168 = icmp eq i32 %69, 0
  br i1 %tobool168, label %if.then169, label %if.end172

if.then169:                                       ; preds = %if.else167
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %call170 = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %70)
  br label %if.end172

if.end172:                                        ; preds = %if.else167, %if.then169, %if.then163
  %71 = load %struct._info*, %struct._info** %add.ptr140, align 8, !tbaa !5
  %tobool8 = icmp eq %struct._info* %71, null
  br i1 %tobool8, label %while.end, label %while.body

while.end:                                        ; preds = %if.end172, %if.end6
  %path.0.lcssa = phi i8* [ %call7, %if.end6 ], [ %path.6, %if.end172 ]
  %72 = load i32*, i32** @dirs, align 8, !tbaa !5
  %arrayidx173 = getelementptr inbounds i32, i32* %72, i64 %lev
  store i32 0, i32* %arrayidx173, align 4, !tbaa !15
  tail call void @free(i8* %path.0.lcssa) #5
  tail call void @free_dir(%struct._info** nonnull %dir) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @uidtoname(i32 %uid) local_unnamed_addr #2 {
entry:
  %ubuf = alloca [32 x i8], align 16
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %ubuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #5
  %and = and i32 %uid, 255
  %1 = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x %struct.xtable*], [256 x %struct.xtable*]* @utable, i64 0, i64 %1
  %2 = load %struct.xtable*, %struct.xtable** %arrayidx, align 8, !tbaa !5
  %tobool68 = icmp eq %struct.xtable* %2, null
  br i1 %tobool68, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end4
  %o.070 = phi %struct.xtable* [ %p.069, %if.end4 ], [ %2, %for.body.preheader ]
  %p.069 = phi %struct.xtable* [ %4, %if.end4 ], [ %2, %for.body.preheader ]
  %xid = getelementptr inbounds %struct.xtable, %struct.xtable* %p.069, i64 0, i32 0
  %3 = load i32, i32* %xid, align 8, !tbaa !56
  %cmp = icmp eq i32 %3, %uid
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %name = getelementptr inbounds %struct.xtable, %struct.xtable* %p.069, i64 0, i32 1
  br label %cleanup

if.else:                                          ; preds = %for.body
  %cmp2 = icmp ugt i32 %3, %uid
  br i1 %cmp2, label %for.end, label %if.end4

if.end4:                                          ; preds = %if.else
  %nxt = getelementptr inbounds %struct.xtable, %struct.xtable* %p.069, i64 0, i32 2
  %4 = load %struct.xtable*, %struct.xtable** %nxt, align 8, !tbaa !58
  %tobool = icmp eq %struct.xtable* %4, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %if.else, %if.end4, %entry
  %p.0.lcssa = phi %struct.xtable* [ null, %entry ], [ null, %if.end4 ], [ %p.069, %if.else ]
  %o.0.lcssa = phi %struct.xtable* [ null, %entry ], [ %p.069, %if.end4 ], [ %o.070, %if.else ]
  %call = tail call i8* @xmalloc(i64 24) #5
  %call5 = tail call %struct.passwd* @getpwuid(i32 %uid) #5
  %cmp6 = icmp eq %struct.passwd* %call5, null
  br i1 %cmp6, label %if.else13, label %if.then7

if.then7:                                         ; preds = %for.end
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %call5, i64 0, i32 0
  %5 = load i8*, i8** %pw_name, align 8, !tbaa !59
  %call8 = tail call i64 @strlen(i8* %5) #13
  %add = add i64 %call8, 1
  %call9 = tail call i8* @xmalloc(i64 %add) #5
  %6 = load i8*, i8** %pw_name, align 8, !tbaa !59
  %call11 = tail call i8* @strcpy(i8* %call9, i8* %6) #5
  br label %if.end23

if.else13:                                        ; preds = %for.end
  %call14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %0, i64 30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.216, i64 0, i64 0), i32 %uid) #5
  %arrayidx15 = getelementptr inbounds [32 x i8], [32 x i8]* %ubuf, i64 0, i64 31
  store i8 0, i8* %arrayidx15, align 1, !tbaa !2
  %call17 = call i64 @strlen(i8* nonnull %0) #13
  %add18 = add i64 %call17, 1
  %call19 = tail call i8* @xmalloc(i64 %add18) #5
  %call21 = call i8* @strcpy(i8* %call19, i8* nonnull %0) #5
  br label %if.end23

if.end23:                                         ; preds = %if.else13, %if.then7
  %call21.sink = phi i8* [ %call21, %if.else13 ], [ %call11, %if.then7 ]
  %name22 = getelementptr inbounds i8, i8* %call, i64 8
  %7 = bitcast i8* %name22 to i8**
  store i8* %call21.sink, i8** %7, align 8, !tbaa !61
  %xid24 = bitcast i8* %call to i32*
  store i32 %uid, i32* %xid24, align 8, !tbaa !56
  %nxt25 = getelementptr inbounds i8, i8* %call, i64 16
  %8 = bitcast i8* %nxt25 to %struct.xtable**
  store %struct.xtable* %p.0.lcssa, %struct.xtable** %8, align 8, !tbaa !58
  %9 = load %struct.xtable*, %struct.xtable** %arrayidx, align 8, !tbaa !5
  %cmp28 = icmp eq %struct.xtable* %p.0.lcssa, %9
  %nxt33 = getelementptr inbounds %struct.xtable, %struct.xtable* %o.0.lcssa, i64 0, i32 2
  %nxt33.sink = select i1 %cmp28, %struct.xtable** %arrayidx, %struct.xtable** %nxt33
  %10 = bitcast %struct.xtable** %nxt33.sink to i8**
  store i8* %call, i8** %10, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then
  %retval.0.in = phi i8** [ %name, %if.then ], [ %7, %if.end23 ]
  %retval.0 = load i8*, i8** %retval.0.in, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #5
  ret i8* %retval.0
}

declare %struct.passwd* @getpwuid(i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i8* @gidtoname(i32 %gid) local_unnamed_addr #2 {
entry:
  %gbuf = alloca [32 x i8], align 16
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %gbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #5
  %and = and i32 %gid, 255
  %1 = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x %struct.xtable*], [256 x %struct.xtable*]* @gtable, i64 0, i64 %1
  %2 = load %struct.xtable*, %struct.xtable** %arrayidx, align 8, !tbaa !5
  %tobool68 = icmp eq %struct.xtable* %2, null
  br i1 %tobool68, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end4
  %o.070 = phi %struct.xtable* [ %p.069, %if.end4 ], [ %2, %for.body.preheader ]
  %p.069 = phi %struct.xtable* [ %4, %if.end4 ], [ %2, %for.body.preheader ]
  %xid = getelementptr inbounds %struct.xtable, %struct.xtable* %p.069, i64 0, i32 0
  %3 = load i32, i32* %xid, align 8, !tbaa !56
  %cmp = icmp eq i32 %3, %gid
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %name = getelementptr inbounds %struct.xtable, %struct.xtable* %p.069, i64 0, i32 1
  br label %cleanup

if.else:                                          ; preds = %for.body
  %cmp2 = icmp ugt i32 %3, %gid
  br i1 %cmp2, label %for.end, label %if.end4

if.end4:                                          ; preds = %if.else
  %nxt = getelementptr inbounds %struct.xtable, %struct.xtable* %p.069, i64 0, i32 2
  %4 = load %struct.xtable*, %struct.xtable** %nxt, align 8, !tbaa !58
  %tobool = icmp eq %struct.xtable* %4, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %if.else, %if.end4, %entry
  %p.0.lcssa = phi %struct.xtable* [ null, %entry ], [ null, %if.end4 ], [ %p.069, %if.else ]
  %o.0.lcssa = phi %struct.xtable* [ null, %entry ], [ %p.069, %if.end4 ], [ %o.070, %if.else ]
  %call = tail call i8* @xmalloc(i64 24) #5
  %call5 = tail call %struct.group* @getgrgid(i32 %gid) #5
  %cmp6 = icmp eq %struct.group* %call5, null
  br i1 %cmp6, label %if.else13, label %if.then7

if.then7:                                         ; preds = %for.end
  %gr_name = getelementptr inbounds %struct.group, %struct.group* %call5, i64 0, i32 0
  %5 = load i8*, i8** %gr_name, align 8, !tbaa !62
  %call8 = tail call i64 @strlen(i8* %5) #13
  %add = add i64 %call8, 1
  %call9 = tail call i8* @xmalloc(i64 %add) #5
  %6 = load i8*, i8** %gr_name, align 8, !tbaa !62
  %call11 = tail call i8* @strcpy(i8* %call9, i8* %6) #5
  br label %if.end23

if.else13:                                        ; preds = %for.end
  %call14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %0, i64 30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.216, i64 0, i64 0), i32 %gid) #5
  %arrayidx15 = getelementptr inbounds [32 x i8], [32 x i8]* %gbuf, i64 0, i64 31
  store i8 0, i8* %arrayidx15, align 1, !tbaa !2
  %call17 = call i64 @strlen(i8* nonnull %0) #13
  %add18 = add i64 %call17, 1
  %call19 = tail call i8* @xmalloc(i64 %add18) #5
  %call21 = call i8* @strcpy(i8* %call19, i8* nonnull %0) #5
  br label %if.end23

if.end23:                                         ; preds = %if.else13, %if.then7
  %call21.sink = phi i8* [ %call21, %if.else13 ], [ %call11, %if.then7 ]
  %name22 = getelementptr inbounds i8, i8* %call, i64 8
  %7 = bitcast i8* %name22 to i8**
  store i8* %call21.sink, i8** %7, align 8, !tbaa !61
  %xid24 = bitcast i8* %call to i32*
  store i32 %gid, i32* %xid24, align 8, !tbaa !56
  %nxt25 = getelementptr inbounds i8, i8* %call, i64 16
  %8 = bitcast i8* %nxt25 to %struct.xtable**
  store %struct.xtable* %p.0.lcssa, %struct.xtable** %8, align 8, !tbaa !58
  %9 = load %struct.xtable*, %struct.xtable** %arrayidx, align 8, !tbaa !5
  %cmp28 = icmp eq %struct.xtable* %p.0.lcssa, %9
  %nxt33 = getelementptr inbounds %struct.xtable, %struct.xtable* %o.0.lcssa, i64 0, i32 2
  %nxt33.sink = select i1 %cmp28, %struct.xtable** %arrayidx, %struct.xtable** %nxt33
  %10 = bitcast %struct.xtable** %nxt33.sink to i8**
  store i8* %call, i8** %10, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then
  %retval.0.in = phi i8** [ %name, %if.then ], [ %7, %if.end23 ]
  %retval.0 = load i8*, i8** %retval.0.in, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #5
  ret i8* %retval.0
}

declare %struct.group* @getgrgid(i32) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define void @saveino(i64 %inode, i64 %device) local_unnamed_addr #2 {
entry:
  %conv = and i64 %inode, 255
  %arrayidx = getelementptr inbounds [256 x %struct.inotable*], [256 x %struct.inotable*]* @itable, i64 0, i64 %conv
  %0 = load %struct.inotable*, %struct.inotable** %arrayidx, align 8, !tbaa !5
  %tobool66 = icmp eq %struct.inotable* %0, null
  br i1 %tobool66, label %if.end21, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end10
  %ip.068 = phi %struct.inotable* [ %3, %if.end10 ], [ %0, %for.body.preheader ]
  %pp.067 = phi %struct.inotable* [ %ip.068, %if.end10 ], [ %0, %for.body.preheader ]
  %inode1 = getelementptr inbounds %struct.inotable, %struct.inotable* %ip.068, i64 0, i32 0
  %1 = load i64, i64* %inode1, align 8, !tbaa !64
  %cmp = icmp ugt i64 %1, %inode
  br i1 %cmp, label %if.end21, label %if.end

if.end:                                           ; preds = %for.body
  %cmp14 = icmp eq i64 %1, %inode
  br i1 %cmp14, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %device6 = getelementptr inbounds %struct.inotable, %struct.inotable* %ip.068, i64 0, i32 1
  %2 = load i64, i64* %device6, align 8, !tbaa !66
  %cmp7 = icmp ult i64 %2, %device
  br i1 %cmp7, label %if.end10, label %land.lhs.true16

if.end10:                                         ; preds = %land.lhs.true, %if.end
  %nxt = getelementptr inbounds %struct.inotable, %struct.inotable* %ip.068, i64 0, i32 2
  %3 = load %struct.inotable*, %struct.inotable** %nxt, align 8, !tbaa !67
  %tobool = icmp eq %struct.inotable* %3, null
  br i1 %tobool, label %if.end21, label %for.body

land.lhs.true16:                                  ; preds = %land.lhs.true
  %device17 = getelementptr inbounds %struct.inotable, %struct.inotable* %ip.068, i64 0, i32 1
  %4 = load i64, i64* %device17, align 8, !tbaa !66
  %cmp18 = icmp eq i64 %4, %device
  br i1 %cmp18, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end10, %for.body, %entry, %land.lhs.true16
  %pp.065 = phi %struct.inotable* [ %pp.067, %land.lhs.true16 ], [ null, %entry ], [ %ip.068, %if.end10 ], [ %pp.067, %for.body ]
  %ip.063 = phi %struct.inotable* [ %ip.068, %land.lhs.true16 ], [ null, %entry ], [ null, %if.end10 ], [ %ip.068, %for.body ]
  %call = tail call i8* @xmalloc(i64 24) #5
  %inode22 = bitcast i8* %call to i64*
  store i64 %inode, i64* %inode22, align 8, !tbaa !64
  %device23 = getelementptr inbounds i8, i8* %call, i64 8
  %5 = bitcast i8* %device23 to i64*
  store i64 %device, i64* %5, align 8, !tbaa !66
  %nxt24 = getelementptr inbounds i8, i8* %call, i64 16
  %6 = bitcast i8* %nxt24 to %struct.inotable**
  store %struct.inotable* %ip.063, %struct.inotable** %6, align 8, !tbaa !67
  %7 = load %struct.inotable*, %struct.inotable** %arrayidx, align 8, !tbaa !5
  %cmp27 = icmp eq %struct.inotable* %ip.063, %7
  %nxt32 = getelementptr inbounds %struct.inotable, %struct.inotable* %pp.065, i64 0, i32 2
  %nxt32.sink = select i1 %cmp27, %struct.inotable** %arrayidx, %struct.inotable** %nxt32
  %8 = bitcast %struct.inotable** %nxt32.sink to i8**
  store i8* %call, i8** %8, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true16, %if.end21
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @findino(i64 %inode, i64 %device) local_unnamed_addr #12 {
entry:
  %and = and i64 %inode, 255
  %arrayidx = getelementptr inbounds [256 x %struct.inotable*], [256 x %struct.inotable*]* @itable, i64 0, i64 %and
  %it.030 = load %struct.inotable*, %struct.inotable** %arrayidx, align 8, !tbaa !5
  %tobool31 = icmp eq %struct.inotable* %it.030, null
  br i1 %tobool31, label %if.end16, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %it.032 = phi %struct.inotable* [ %it.0, %for.inc ], [ %it.030, %for.body.preheader ]
  %inode1 = getelementptr inbounds %struct.inotable, %struct.inotable* %it.032, i64 0, i32 0
  %0 = load i64, i64* %inode1, align 8, !tbaa !64
  %cmp = icmp ugt i64 %0, %inode
  br i1 %cmp, label %if.end16, label %if.end

if.end:                                           ; preds = %for.body
  %cmp11 = icmp eq i64 %0, %inode
  br i1 %cmp11, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %device4 = getelementptr inbounds %struct.inotable, %struct.inotable* %it.032, i64 0, i32 1
  %1 = load i64, i64* %device4, align 8, !tbaa !66
  %cmp5 = icmp ult i64 %1, %device
  br i1 %cmp5, label %for.inc, label %land.lhs.true12

for.inc:                                          ; preds = %land.lhs.true, %if.end
  %nxt = getelementptr inbounds %struct.inotable, %struct.inotable* %it.032, i64 0, i32 2
  %it.0 = load %struct.inotable*, %struct.inotable** %nxt, align 8, !tbaa !5
  %tobool = icmp eq %struct.inotable* %it.0, null
  br i1 %tobool, label %if.end16, label %for.body

land.lhs.true12:                                  ; preds = %land.lhs.true
  %device13 = getelementptr inbounds %struct.inotable, %struct.inotable* %it.032, i64 0, i32 1
  %2 = load i64, i64* %device13, align 8, !tbaa !66
  %cmp14 = icmp eq i64 %2, %device
  br i1 %cmp14, label %cleanup, label %if.end16

if.end16:                                         ; preds = %for.inc, %for.body, %entry, %land.lhs.true12
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true12, %if.end16
  %retval.0 = phi i32 [ 0, %if.end16 ], [ 1, %land.lhs.true12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define void @parse_dir_colors() local_unnamed_addr #2 {
entry:
  %buf = alloca [1025 x i8], align 16
  %0 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1025, i8* nonnull %0) #5
  %1 = load i32, i32* @Hflag, align 4, !tbaa !2
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9.244, i64 0, i64 0)) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 0, i32* @colorize, align 4, !tbaa !2
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10.245, i64 0, i64 0)) #5
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.end7, label %lor.lhs.false

if.end7:                                          ; preds = %if.end2
  %call6 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11.246, i64 0, i64 0)) #5
  %cmp8 = icmp eq i8* %call6, null
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end2, %if.end7
  %s.0427 = phi i8* [ %call6, %if.end7 ], [ %call3, %if.end2 ]
  %strlenfirst = load i8, i8* %s.0427, align 1
  %cmp10 = icmp eq i8 %strlenfirst, 0
  %2 = load i32, i32* @force_color, align 4
  %tobool11 = icmp ne i32 %2, 0
  %or.cond = and i1 %cmp10, %tobool11
  br i1 %or.cond, label %if.else, label %lor.lhs.false15

land.lhs.true:                                    ; preds = %if.end7
  %.old = load i32, i32* @force_color, align 4, !tbaa !2
  %tobool11.old = icmp eq i32 %.old, 0
  br i1 %tobool11.old, label %if.then22, label %if.else

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %tobool16 = icmp eq i32 %2, 0
  br i1 %tobool16, label %land.lhs.true17, label %if.else

land.lhs.true17:                                  ; preds = %lor.lhs.false15
  %3 = load i32, i32* @nocolor, align 4, !tbaa !2
  %tobool18 = icmp eq i32 %3, 0
  br i1 %tobool18, label %lor.lhs.false19, label %if.then22

lor.lhs.false19:                                  ; preds = %land.lhs.true17
  %call20 = tail call i32 @isatty(i32 1) #5
  %tobool21 = icmp eq i32 %call20, 0
  br i1 %tobool21, label %if.then22, label %if.else

if.then22:                                        ; preds = %land.lhs.true, %lor.lhs.false19, %land.lhs.true17
  store i32 0, i32* @colorize, align 4, !tbaa !2
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false, %lor.lhs.false19, %lor.lhs.false15
  %s.1.ph444 = phi i8* [ %s.0427, %lor.lhs.false19 ], [ %s.0427, %lor.lhs.false15 ], [ getelementptr inbounds ([947 x i8], [947 x i8]* @.str.12.247, i64 0, i64 0), %lor.lhs.false ], [ getelementptr inbounds ([947 x i8], [947 x i8]* @.str.12.247, i64 0, i64 0), %land.lhs.true ]
  store i32 1, i32* @colorize, align 4, !tbaa !2
  %call24 = tail call i64 @strlen(i8* nonnull %s.1.ph444) #13
  %add = add i64 %call24, 1
  %call25 = tail call i8* @xmalloc(i64 %add) #5
  %call26 = tail call i8* @strcpy(i8* %call25, i8* nonnull %s.1.ph444) #5
  %call.i = tail call i8* @xmalloc(i64 1024) #5
  %4 = bitcast i8* %call.i to i8**
  %call1.i = tail call i8* @strtok(i8* %call26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.248, i64 0, i64 0)) #5
  store i8* %call1.i, i8** %4, align 8, !tbaa !5
  %tobool28.i = icmp eq i8* %call1.i, null
  br i1 %tobool28.i, label %split.exit, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.else
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.preheader, %if.end.i
  %indvars.iv440 = phi i64 [ %indvars.iv.next441, %if.end.i ], [ 0, %while.body.i.preheader ]
  %5 = phi i8* [ %10, %if.end.i ], [ %call.i, %while.body.i.preheader ]
  %w.030.i = phi i8** [ %w.1.i, %if.end.i ], [ %4, %while.body.i.preheader ]
  %6 = phi i8* [ %9, %if.end.i ], [ %call.i, %while.body.i.preheader ]
  %n.029.i = phi i32 [ %n.1.i, %if.end.i ], [ 128, %while.body.i.preheader ]
  %sub.i = add nsw i32 %n.029.i, -2
  %7 = zext i32 %sub.i to i64
  %cmp.i = icmp eq i64 %indvars.iv440, %7
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  %add.i = add nsw i32 %n.029.i, 256
  %conv4.i = sext i32 %add.i to i64
  %mul5.i = shl nsw i64 %conv4.i, 3
  %call6.i = tail call i8* @xrealloc(i8* %6, i64 %mul5.i) #5
  %8 = bitcast i8* %call6.i to i8**
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %n.1.i = phi i32 [ %add.i, %if.then.i ], [ %n.029.i, %while.body.i ]
  %9 = phi i8* [ %call6.i, %if.then.i ], [ %6, %while.body.i ]
  %10 = phi i8* [ %call6.i, %if.then.i ], [ %5, %while.body.i ]
  %w.1.i = phi i8** [ %8, %if.then.i ], [ %w.030.i, %while.body.i ]
  %call7.i = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.248, i64 0, i64 0)) #5
  %indvars.iv.next441 = add nuw i64 %indvars.iv440, 1
  %arrayidx9.i = getelementptr inbounds i8*, i8** %w.1.i, i64 %indvars.iv.next441
  store i8* %call7.i, i8** %arrayidx9.i, align 8, !tbaa !5
  %tobool.i = icmp eq i8* %call7.i, null
  br i1 %tobool.i, label %split.exit, label %while.body.i

split.exit:                                       ; preds = %if.end.i, %if.else
  %11 = phi i8* [ %call.i, %if.else ], [ %10, %if.end.i ]
  %w.0.lcssa.i = phi i8** [ %4, %if.else ], [ %w.1.i, %if.end.i ]
  %arrayidx2.lcssa.i = phi i8** [ %4, %if.else ], [ %arrayidx9.i, %if.end.i ]
  store i8* null, i8** %arrayidx2.lcssa.i, align 8, !tbaa !5
  %12 = load i8*, i8** %w.0.lcssa.i, align 8, !tbaa !5
  %tobool28433 = icmp eq i8* %12, null
  br i1 %tobool28433, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %split.exit
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %sw.epilog
  %indvars.iv438 = phi i64 [ %indvars.iv.next439, %sw.epilog ], [ 0, %for.body.preheader ]
  %13 = phi i8* [ %75, %sw.epilog ], [ %12, %for.body.preheader ]
  %call.i395 = tail call i8* @xmalloc(i64 1024) #5
  %14 = bitcast i8* %call.i395 to i8**
  %call1.i396 = tail call i8* @strtok(i8* nonnull %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14.249, i64 0, i64 0)) #5
  store i8* %call1.i396, i8** %14, align 8, !tbaa !5
  %tobool28.i397 = icmp eq i8* %call1.i396, null
  br i1 %tobool28.i397, label %split.exit419, label %while.body.i403.preheader

while.body.i403.preheader:                        ; preds = %for.body
  br label %while.body.i403

while.body.i403:                                  ; preds = %while.body.i403.preheader, %if.end.i416
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end.i416 ], [ 0, %while.body.i403.preheader ]
  %15 = phi i8* [ %20, %if.end.i416 ], [ %call.i395, %while.body.i403.preheader ]
  %w.030.i399 = phi i8** [ %w.1.i410, %if.end.i416 ], [ %14, %while.body.i403.preheader ]
  %16 = phi i8* [ %19, %if.end.i416 ], [ %call.i395, %while.body.i403.preheader ]
  %n.029.i400 = phi i32 [ %n.1.i409, %if.end.i416 ], [ 128, %while.body.i403.preheader ]
  %sub.i401 = add nsw i32 %n.029.i400, -2
  %17 = zext i32 %sub.i401 to i64
  %cmp.i402 = icmp eq i64 %indvars.iv, %17
  br i1 %cmp.i402, label %if.then.i408, label %if.end.i416

if.then.i408:                                     ; preds = %while.body.i403
  %add.i404 = add nsw i32 %n.029.i400, 256
  %conv4.i405 = sext i32 %add.i404 to i64
  %mul5.i406 = shl nsw i64 %conv4.i405, 3
  %call6.i407 = tail call i8* @xrealloc(i8* %16, i64 %mul5.i406) #5
  %18 = bitcast i8* %call6.i407 to i8**
  br label %if.end.i416

if.end.i416:                                      ; preds = %if.then.i408, %while.body.i403
  %n.1.i409 = phi i32 [ %add.i404, %if.then.i408 ], [ %n.029.i400, %while.body.i403 ]
  %19 = phi i8* [ %call6.i407, %if.then.i408 ], [ %16, %while.body.i403 ]
  %20 = phi i8* [ %call6.i407, %if.then.i408 ], [ %15, %while.body.i403 ]
  %w.1.i410 = phi i8** [ %18, %if.then.i408 ], [ %w.030.i399, %while.body.i403 ]
  %call7.i411 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14.249, i64 0, i64 0)) #5
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %arrayidx9.i414 = getelementptr inbounds i8*, i8** %w.1.i410, i64 %indvars.iv.next
  store i8* %call7.i411, i8** %arrayidx9.i414, align 8, !tbaa !5
  %tobool.i415 = icmp eq i8* %call7.i411, null
  br i1 %tobool.i415, label %split.exit419, label %while.body.i403

split.exit419:                                    ; preds = %if.end.i416, %for.body
  %21 = phi i8* [ %call.i395, %for.body ], [ %20, %if.end.i416 ]
  %w.0.lcssa.i417 = phi i8** [ %14, %for.body ], [ %w.1.i410, %if.end.i416 ]
  %arrayidx2.lcssa.i418 = phi i8** [ %14, %for.body ], [ %arrayidx9.i414, %if.end.i416 ]
  store i8* null, i8** %arrayidx2.lcssa.i418, align 8, !tbaa !5
  %22 = load i8*, i8** %w.0.lcssa.i417, align 8, !tbaa !5
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %cmdnum.i = getelementptr inbounds [21 x %struct.anon], [21 x %struct.anon]* @cmd.cmds, i64 0, i64 %indvars.iv.next.i, i32 1
  %23 = load i8, i8* %cmdnum.i, align 8, !tbaa !68
  %tobool.i420 = icmp eq i64 %indvars.iv.next.i, 20
  br i1 %tobool.i420, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i, %split.exit419
  %indvars.iv.i = phi i64 [ 0, %split.exit419 ], [ %indvars.iv.next.i, %for.cond.i ]
  %24 = phi i8 [ 4, %split.exit419 ], [ %23, %for.cond.i ]
  %cmd.i = getelementptr inbounds [21 x %struct.anon], [21 x %struct.anon]* @cmd.cmds, i64 0, i64 %indvars.iv.i, i32 0
  %25 = load i8*, i8** %cmd.i, align 16, !tbaa !70
  %call.i421 = tail call i32 @strcmp(i8* %25, i8* %22) #13
  %tobool3.i = icmp eq i32 %call.i421, 0
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %tobool3.i, label %if.then.i422, label %for.cond.i

if.then.i422:                                     ; preds = %for.body.i
  %conv.i = sext i8 %24 to i32
  br label %cmd.exit

for.end.i:                                        ; preds = %for.cond.i
  %26 = load i8, i8* %22, align 1, !tbaa !2
  %cmp.i423 = icmp eq i8 %26, 42
  %..i = select i1 %cmp.i423, i32 24, i32 25
  br label %cmd.exit

cmd.exit:                                         ; preds = %if.then.i422, %for.end.i
  %retval.0.i = phi i32 [ %conv.i, %if.then.i422 ], [ %..i, %for.end.i ]
  switch i32 %retval.0.i, label %sw.epilog [
    i32 4, label %sw.bb
    i32 5, label %sw.bb44
    i32 6, label %sw.bb55
    i32 7, label %sw.bb66
    i32 8, label %sw.bb83
    i32 9, label %sw.bb94
    i32 10, label %sw.bb105
    i32 11, label %sw.bb116
    i32 12, label %sw.bb127
    i32 13, label %sw.bb138
    i32 14, label %sw.bb149
    i32 15, label %sw.bb160
    i32 16, label %sw.bb171
    i32 17, label %sw.bb182
    i32 18, label %sw.bb193
    i32 19, label %sw.bb204
    i32 20, label %sw.bb215
    i32 21, label %sw.bb226
    i32 22, label %sw.bb237
    i32 23, label %sw.bb248
    i32 24, label %sw.bb259
  ]

sw.bb:                                            ; preds = %cmd.exit
  %arrayidx34 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %27 = load i8*, i8** %arrayidx34, align 8, !tbaa !5
  %tobool35 = icmp eq i8* %27, null
  br i1 %tobool35, label %sw.epilog, label %if.then36

if.then36:                                        ; preds = %sw.bb
  %call38 = tail call i64 @strlen(i8* nonnull %27) #13
  %add39 = add i64 %call38, 1
  %call40 = tail call i8* @xmalloc(i64 %add39) #5
  %28 = load i8*, i8** %arrayidx34, align 8, !tbaa !5
  %call42 = tail call i8* @strcpy(i8* %call40, i8* %28) #5
  store i8* %call42, i8** @norm_flgs, align 8, !tbaa !5
  br label %sw.epilog

sw.bb44:                                          ; preds = %cmd.exit
  %arrayidx45 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %29 = load i8*, i8** %arrayidx45, align 8, !tbaa !5
  %tobool46 = icmp eq i8* %29, null
  br i1 %tobool46, label %sw.epilog, label %if.then47

if.then47:                                        ; preds = %sw.bb44
  %call49 = tail call i64 @strlen(i8* nonnull %29) #13
  %add50 = add i64 %call49, 1
  %call51 = tail call i8* @xmalloc(i64 %add50) #5
  %30 = load i8*, i8** %arrayidx45, align 8, !tbaa !5
  %call53 = tail call i8* @strcpy(i8* %call51, i8* %30) #5
  store i8* %call53, i8** @file_flgs, align 8, !tbaa !5
  br label %sw.epilog

sw.bb55:                                          ; preds = %cmd.exit
  %arrayidx56 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %31 = load i8*, i8** %arrayidx56, align 8, !tbaa !5
  %tobool57 = icmp eq i8* %31, null
  br i1 %tobool57, label %sw.epilog, label %if.then58

if.then58:                                        ; preds = %sw.bb55
  %call60 = tail call i64 @strlen(i8* nonnull %31) #13
  %add61 = add i64 %call60, 1
  %call62 = tail call i8* @xmalloc(i64 %add61) #5
  %32 = load i8*, i8** %arrayidx56, align 8, !tbaa !5
  %call64 = tail call i8* @strcpy(i8* %call62, i8* %32) #5
  store i8* %call64, i8** @dir_flgs, align 8, !tbaa !5
  br label %sw.epilog

sw.bb66:                                          ; preds = %cmd.exit
  %arrayidx67 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %33 = load i8*, i8** %arrayidx67, align 8, !tbaa !5
  %tobool68 = icmp eq i8* %33, null
  br i1 %tobool68, label %sw.epilog, label %if.then69

if.then69:                                        ; preds = %sw.bb66
  %call71 = tail call i32 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15.250, i64 0, i64 0), i8* nonnull %33) #13
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %if.then73, label %if.else74

if.then73:                                        ; preds = %if.then69
  store i32 1, i32* @linktargetcolor, align 4, !tbaa !2
  br label %if.end81

if.else74:                                        ; preds = %if.then69
  %call76 = tail call i64 @strlen(i8* nonnull %33) #13
  %add77 = add i64 %call76, 1
  %call78 = tail call i8* @xmalloc(i64 %add77) #5
  %34 = load i8*, i8** %arrayidx67, align 8, !tbaa !5
  %call80 = tail call i8* @strcpy(i8* %call78, i8* %34) #5
  br label %if.end81

if.end81:                                         ; preds = %if.else74, %if.then73
  %call80.sink = phi i8* [ %call80, %if.else74 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16.251, i64 0, i64 0), %if.then73 ]
  store i8* %call80.sink, i8** @link_flgs, align 8, !tbaa !5
  br label %sw.epilog

sw.bb83:                                          ; preds = %cmd.exit
  %arrayidx84 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %35 = load i8*, i8** %arrayidx84, align 8, !tbaa !5
  %tobool85 = icmp eq i8* %35, null
  br i1 %tobool85, label %sw.epilog, label %if.then86

if.then86:                                        ; preds = %sw.bb83
  %call88 = tail call i64 @strlen(i8* nonnull %35) #13
  %add89 = add i64 %call88, 1
  %call90 = tail call i8* @xmalloc(i64 %add89) #5
  %36 = load i8*, i8** %arrayidx84, align 8, !tbaa !5
  %call92 = tail call i8* @strcpy(i8* %call90, i8* %36) #5
  store i8* %call92, i8** @fifo_flgs, align 8, !tbaa !5
  br label %sw.epilog

sw.bb94:                                          ; preds = %cmd.exit
  %arrayidx95 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %37 = load i8*, i8** %arrayidx95, align 8, !tbaa !5
  %tobool96 = icmp eq i8* %37, null
  br i1 %tobool96, label %sw.epilog, label %if.then97

if.then97:                                        ; preds = %sw.bb94
  %call99 = tail call i64 @strlen(i8* nonnull %37) #13
  %add100 = add i64 %call99, 1
  %call101 = tail call i8* @xmalloc(i64 %add100) #5
  %38 = load i8*, i8** %arrayidx95, align 8, !tbaa !5
  %call103 = tail call i8* @strcpy(i8* %call101, i8* %38) #5
  store i8* %call103, i8** @door_flgs, align 8, !tbaa !5
  br label %sw.epilog

sw.bb105:                                         ; preds = %cmd.exit
  %arrayidx106 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %39 = load i8*, i8** %arrayidx106, align 8, !tbaa !5
  %tobool107 = icmp eq i8* %39, null
  br i1 %tobool107, label %sw.epilog, label %if.then108

if.then108:                                       ; preds = %sw.bb105
  %call110 = tail call i64 @strlen(i8* nonnull %39) #13
  %add111 = add i64 %call110, 1
  %call112 = tail call i8* @xmalloc(i64 %add111) #5
  %40 = load i8*, i8** %arrayidx106, align 8, !tbaa !5
  %call114 = tail call i8* @strcpy(i8* %call112, i8* %40) #5
  store i8* %call114, i8** @block_flgs, align 8, !tbaa !5
  br label %sw.epilog

sw.bb116:                                         ; preds = %cmd.exit
  %arrayidx117 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %41 = load i8*, i8** %arrayidx117, align 8, !tbaa !5
  %tobool118 = icmp eq i8* %41, null
  br i1 %tobool118, label %sw.epilog, label %if.then119

if.then119:                                       ; preds = %sw.bb116
  %call121 = tail call i64 @strlen(i8* nonnull %41) #13
  %add122 = add i64 %call121, 1
  %call123 = tail call i8* @xmalloc(i64 %add122) #5
  %42 = load i8*, i8** %arrayidx117, align 8, !tbaa !5
  %call125 = tail call i8* @strcpy(i8* %call123, i8* %42) #5
  store i8* %call125, i8** @char_flgs, align 8, !tbaa !5
  br label %sw.epilog

sw.bb127:                                         ; preds = %cmd.exit
  %arrayidx128 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %43 = load i8*, i8** %arrayidx128, align 8, !tbaa !5
  %tobool129 = icmp eq i8* %43, null
  br i1 %tobool129, label %sw.epilog, label %if.then130

if.then130:                                       ; preds = %sw.bb127
  %call132 = tail call i64 @strlen(i8* nonnull %43) #13
  %add133 = add i64 %call132, 1
  %call134 = tail call i8* @xmalloc(i64 %add133) #5
  %44 = load i8*, i8** %arrayidx128, align 8, !tbaa !5
  %call136 = tail call i8* @strcpy(i8* %call134, i8* %44) #5
  store i8* %call136, i8** @orphan_flgs, align 8, !tbaa !5
  br label %sw.epilog

sw.bb138:                                         ; preds = %cmd.exit
  %arrayidx139 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %45 = load i8*, i8** %arrayidx139, align 8, !tbaa !5
  %tobool140 = icmp eq i8* %45, null
  br i1 %tobool140, label %sw.epilog, label %if.then141

if.then141:                                       ; preds = %sw.bb138
  %call143 = tail call i64 @strlen(i8* nonnull %45) #13
  %add144 = add i64 %call143, 1
  %call145 = tail call i8* @xmalloc(i64 %add144) #5
  %46 = load i8*, i8** %arrayidx139, align 8, !tbaa !5
  %call147 = tail call i8* @strcpy(i8* %call145, i8* %46) #5
  store i8* %call147, i8** @sock_flgs, align 8, !tbaa !5
  br label %sw.epilog

sw.bb149:                                         ; preds = %cmd.exit
  %arrayidx150 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %47 = load i8*, i8** %arrayidx150, align 8, !tbaa !5
  %tobool151 = icmp eq i8* %47, null
  br i1 %tobool151, label %sw.epilog, label %if.then152

if.then152:                                       ; preds = %sw.bb149
  %call154 = tail call i64 @strlen(i8* nonnull %47) #13
  %add155 = add i64 %call154, 1
  %call156 = tail call i8* @xmalloc(i64 %add155) #5
  %48 = load i8*, i8** %arrayidx150, align 8, !tbaa !5
  %call158 = tail call i8* @strcpy(i8* %call156, i8* %48) #5
  store i8* %call158, i8** @suid_flgs, align 8, !tbaa !5
  br label %sw.epilog

sw.bb160:                                         ; preds = %cmd.exit
  %arrayidx161 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %49 = load i8*, i8** %arrayidx161, align 8, !tbaa !5
  %tobool162 = icmp eq i8* %49, null
  br i1 %tobool162, label %sw.epilog, label %if.then163

if.then163:                                       ; preds = %sw.bb160
  %call165 = tail call i64 @strlen(i8* nonnull %49) #13
  %add166 = add i64 %call165, 1
  %call167 = tail call i8* @xmalloc(i64 %add166) #5
  %50 = load i8*, i8** %arrayidx161, align 8, !tbaa !5
  %call169 = tail call i8* @strcpy(i8* %call167, i8* %50) #5
  store i8* %call169, i8** @sgid_flgs, align 8, !tbaa !5
  br label %sw.epilog

sw.bb171:                                         ; preds = %cmd.exit
  %arrayidx172 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %51 = load i8*, i8** %arrayidx172, align 8, !tbaa !5
  %tobool173 = icmp eq i8* %51, null
  br i1 %tobool173, label %sw.epilog, label %if.then174

if.then174:                                       ; preds = %sw.bb171
  %call176 = tail call i64 @strlen(i8* nonnull %51) #13
  %add177 = add i64 %call176, 1
  %call178 = tail call i8* @xmalloc(i64 %add177) #5
  %52 = load i8*, i8** %arrayidx172, align 8, !tbaa !5
  %call180 = tail call i8* @strcpy(i8* %call178, i8* %52) #5
  store i8* %call180, i8** @stickyow_flgs, align 8, !tbaa !5
  br label %sw.epilog

sw.bb182:                                         ; preds = %cmd.exit
  %arrayidx183 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %53 = load i8*, i8** %arrayidx183, align 8, !tbaa !5
  %tobool184 = icmp eq i8* %53, null
  br i1 %tobool184, label %sw.epilog, label %if.then185

if.then185:                                       ; preds = %sw.bb182
  %call187 = tail call i64 @strlen(i8* nonnull %53) #13
  %add188 = add i64 %call187, 1
  %call189 = tail call i8* @xmalloc(i64 %add188) #5
  %54 = load i8*, i8** %arrayidx183, align 8, !tbaa !5
  %call191 = tail call i8* @strcpy(i8* %call189, i8* %54) #5
  store i8* %call191, i8** @otherwr_flgs, align 8, !tbaa !5
  br label %sw.epilog

sw.bb193:                                         ; preds = %cmd.exit
  %arrayidx194 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %55 = load i8*, i8** %arrayidx194, align 8, !tbaa !5
  %tobool195 = icmp eq i8* %55, null
  br i1 %tobool195, label %sw.epilog, label %if.then196

if.then196:                                       ; preds = %sw.bb193
  %call198 = tail call i64 @strlen(i8* nonnull %55) #13
  %add199 = add i64 %call198, 1
  %call200 = tail call i8* @xmalloc(i64 %add199) #5
  %56 = load i8*, i8** %arrayidx194, align 8, !tbaa !5
  %call202 = tail call i8* @strcpy(i8* %call200, i8* %56) #5
  store i8* %call202, i8** @sticky_flgs, align 8, !tbaa !5
  br label %sw.epilog

sw.bb204:                                         ; preds = %cmd.exit
  %arrayidx205 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %57 = load i8*, i8** %arrayidx205, align 8, !tbaa !5
  %tobool206 = icmp eq i8* %57, null
  br i1 %tobool206, label %sw.epilog, label %if.then207

if.then207:                                       ; preds = %sw.bb204
  %call209 = tail call i64 @strlen(i8* nonnull %57) #13
  %add210 = add i64 %call209, 1
  %call211 = tail call i8* @xmalloc(i64 %add210) #5
  %58 = load i8*, i8** %arrayidx205, align 8, !tbaa !5
  %call213 = tail call i8* @strcpy(i8* %call211, i8* %58) #5
  store i8* %call213, i8** @exec_flgs, align 8, !tbaa !5
  br label %sw.epilog

sw.bb215:                                         ; preds = %cmd.exit
  %arrayidx216 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %59 = load i8*, i8** %arrayidx216, align 8, !tbaa !5
  %tobool217 = icmp eq i8* %59, null
  br i1 %tobool217, label %sw.epilog, label %if.then218

if.then218:                                       ; preds = %sw.bb215
  %call220 = tail call i64 @strlen(i8* nonnull %59) #13
  %add221 = add i64 %call220, 1
  %call222 = tail call i8* @xmalloc(i64 %add221) #5
  %60 = load i8*, i8** %arrayidx216, align 8, !tbaa !5
  %call224 = tail call i8* @strcpy(i8* %call222, i8* %60) #5
  store i8* %call224, i8** @missing_flgs, align 8, !tbaa !5
  br label %sw.epilog

sw.bb226:                                         ; preds = %cmd.exit
  %arrayidx227 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %61 = load i8*, i8** %arrayidx227, align 8, !tbaa !5
  %tobool228 = icmp eq i8* %61, null
  br i1 %tobool228, label %sw.epilog, label %if.then229

if.then229:                                       ; preds = %sw.bb226
  %call231 = tail call i64 @strlen(i8* nonnull %61) #13
  %add232 = add i64 %call231, 1
  %call233 = tail call i8* @xmalloc(i64 %add232) #5
  %62 = load i8*, i8** %arrayidx227, align 8, !tbaa !5
  %call235 = tail call i8* @strcpy(i8* %call233, i8* %62) #5
  store i8* %call235, i8** @leftcode, align 8, !tbaa !5
  br label %sw.epilog

sw.bb237:                                         ; preds = %cmd.exit
  %arrayidx238 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %63 = load i8*, i8** %arrayidx238, align 8, !tbaa !5
  %tobool239 = icmp eq i8* %63, null
  br i1 %tobool239, label %sw.epilog, label %if.then240

if.then240:                                       ; preds = %sw.bb237
  %call242 = tail call i64 @strlen(i8* nonnull %63) #13
  %add243 = add i64 %call242, 1
  %call244 = tail call i8* @xmalloc(i64 %add243) #5
  %64 = load i8*, i8** %arrayidx238, align 8, !tbaa !5
  %call246 = tail call i8* @strcpy(i8* %call244, i8* %64) #5
  store i8* %call246, i8** @rightcode, align 8, !tbaa !5
  br label %sw.epilog

sw.bb248:                                         ; preds = %cmd.exit
  %arrayidx249 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %65 = load i8*, i8** %arrayidx249, align 8, !tbaa !5
  %tobool250 = icmp eq i8* %65, null
  br i1 %tobool250, label %sw.epilog, label %if.then251

if.then251:                                       ; preds = %sw.bb248
  %call253 = tail call i64 @strlen(i8* nonnull %65) #13
  %add254 = add i64 %call253, 1
  %call255 = tail call i8* @xmalloc(i64 %add254) #5
  %66 = load i8*, i8** %arrayidx249, align 8, !tbaa !5
  %call257 = tail call i8* @strcpy(i8* %call255, i8* %66) #5
  store i8* %call257, i8** @endcode, align 8, !tbaa !5
  br label %sw.epilog

sw.bb259:                                         ; preds = %cmd.exit
  %arrayidx260 = getelementptr inbounds i8*, i8** %w.0.lcssa.i417, i64 1
  %67 = load i8*, i8** %arrayidx260, align 8, !tbaa !5
  %tobool261 = icmp eq i8* %67, null
  br i1 %tobool261, label %sw.epilog, label %if.then262

if.then262:                                       ; preds = %sw.bb259
  %call263 = tail call i8* @xmalloc(i64 56) #5
  %68 = load i8*, i8** %w.0.lcssa.i417, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %68, i64 1
  %call265 = tail call i64 @strlen(i8* %add.ptr) #13
  %add266 = add i64 %call265, 1
  %call267 = tail call i8* @xmalloc(i64 %add266) #5
  %69 = load i8*, i8** %w.0.lcssa.i417, align 8, !tbaa !5
  %add.ptr269 = getelementptr inbounds i8, i8* %69, i64 1
  %call270 = tail call i8* @strcpy(i8* %call267, i8* %add.ptr269) #5
  %ext = bitcast i8* %call263 to i8**
  store i8* %call270, i8** %ext, align 8, !tbaa !71
  %70 = load i8*, i8** %arrayidx260, align 8, !tbaa !5
  %call272 = tail call i64 @strlen(i8* %70) #13
  %add273 = add i64 %call272, 1
  %call274 = tail call i8* @xmalloc(i64 %add273) #5
  %71 = load i8*, i8** %arrayidx260, align 8, !tbaa !5
  %call276 = tail call i8* @strcpy(i8* %call274, i8* %71) #5
  %term_flg = getelementptr inbounds i8, i8* %call263, i64 8
  %72 = bitcast i8* %term_flg to i8**
  store i8* %call276, i8** %72, align 8, !tbaa !73
  %73 = load i64, i64* bitcast (%struct.extensions** @ext to i64*), align 8, !tbaa !5
  %nxt = getelementptr inbounds i8, i8* %call263, i64 48
  %74 = bitcast i8* %nxt to i64*
  store i64 %73, i64* %74, align 8, !tbaa !74
  store i8* %call263, i8** bitcast (%struct.extensions** @ext to i8**), align 8, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %sw.bb44, %sw.bb55, %sw.bb66, %sw.bb83, %sw.bb94, %sw.bb105, %sw.bb116, %sw.bb127, %sw.bb138, %sw.bb149, %sw.bb160, %sw.bb171, %sw.bb182, %sw.bb193, %sw.bb204, %sw.bb215, %sw.bb226, %sw.bb237, %sw.bb248, %sw.bb259, %if.then262, %if.then251, %if.then240, %if.then229, %if.then218, %if.then207, %if.then196, %if.then185, %if.then174, %if.then163, %if.then152, %if.then141, %if.then130, %if.then119, %if.then108, %if.then97, %if.then86, %if.end81, %if.then58, %if.then47, %if.then36, %cmd.exit
  tail call void @free(i8* %21) #5
  %indvars.iv.next439 = add nuw i64 %indvars.iv438, 1
  %arrayidx = getelementptr inbounds i8*, i8** %w.0.lcssa.i, i64 %indvars.iv.next439
  %75 = load i8*, i8** %arrayidx, align 8, !tbaa !5
  %tobool28 = icmp eq i8* %75, null
  br i1 %tobool28, label %for.end, label %for.body

for.end:                                          ; preds = %sw.epilog, %split.exit
  tail call void @free(i8* %11) #5
  %76 = load i8*, i8** @leftcode, align 8, !tbaa !5
  %tobool278 = icmp eq i8* %76, null
  br i1 %tobool278, label %if.then279, label %if.end282

if.then279:                                       ; preds = %for.end
  %call280 = tail call i8* @xmalloc(i64 3) #5
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call280, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17.252, i64 0, i64 0), i64 3, i32 1, i1 false)
  store i8* %call280, i8** @leftcode, align 8, !tbaa !5
  br label %if.end282

if.end282:                                        ; preds = %for.end, %if.then279
  %77 = load i8*, i8** @rightcode, align 8, !tbaa !5
  %tobool283 = icmp eq i8* %77, null
  br i1 %tobool283, label %if.then284, label %if.end287

if.then284:                                       ; preds = %if.end282
  %call285 = tail call i8* @xmalloc(i64 2) #5
  %78 = bitcast i8* %call285 to i16*
  store i16 109, i16* %78, align 1
  store i8* %call285, i8** @rightcode, align 8, !tbaa !5
  br label %if.end287

if.end287:                                        ; preds = %if.end282, %if.then284
  %79 = load i8*, i8** @norm_flgs, align 8, !tbaa !5
  %tobool288 = icmp eq i8* %79, null
  br i1 %tobool288, label %if.then289, label %if.end292

if.then289:                                       ; preds = %if.end287
  %call290 = tail call i8* @xmalloc(i64 3) #5
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call290, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19.253, i64 0, i64 0), i64 3, i32 1, i1 false)
  store i8* %call290, i8** @norm_flgs, align 8, !tbaa !5
  br label %if.end292

if.end292:                                        ; preds = %if.end287, %if.then289
  %80 = phi i8* [ %79, %if.end287 ], [ %call290, %if.then289 ]
  %81 = load i8*, i8** @endcode, align 8, !tbaa !5
  %tobool293 = icmp eq i8* %81, null
  br i1 %tobool293, label %if.then294, label %if.end302

if.then294:                                       ; preds = %if.end292
  %82 = load i8*, i8** @leftcode, align 8, !tbaa !5
  %83 = load i8*, i8** @rightcode, align 8, !tbaa !5
  %call295 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.254, i64 0, i64 0), i8* %82, i8* %80, i8* %83) #5
  %call297 = call i64 @strlen(i8* nonnull %0) #13
  %add298 = add i64 %call297, 1
  %call299 = tail call i8* @xmalloc(i64 %add298) #5
  %call301 = call i8* @strcpy(i8* %call299, i8* nonnull %0) #5
  store i8* %call301, i8** @endcode, align 8, !tbaa !5
  br label %if.end302

if.end302:                                        ; preds = %if.end292, %if.then294
  tail call void @free(i8* %call26) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end302, %if.then22, %if.then1
  call void @llvm.lifetime.end.p0i8(i64 1025, i8* nonnull %0) #5
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i8** @split(i8* %str, i8* nocapture readonly %delim, i32* nocapture %nwrds) local_unnamed_addr #2 {
entry:
  %call = tail call i8* @xmalloc(i64 1024) #5
  %0 = bitcast i8* %call to i8**
  %call1 = tail call i8* @strtok(i8* %str, i8* %delim) #5
  store i32 0, i32* %nwrds, align 4, !tbaa !15
  store i8* %call1, i8** %0, align 8, !tbaa !5
  %tobool28 = icmp eq i8* %call1, null
  br i1 %tobool28, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end
  %1 = phi i32 [ %inc, %if.end ], [ 0, %while.body.preheader ]
  %w.030 = phi i8** [ %w.1, %if.end ], [ %0, %while.body.preheader ]
  %2 = phi i8* [ %4, %if.end ], [ %call, %while.body.preheader ]
  %n.029 = phi i32 [ %n.1, %if.end ], [ 128, %while.body.preheader ]
  %sub = add nsw i32 %n.029, -2
  %cmp = icmp eq i32 %1, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %add = add nsw i32 %n.029, 256
  %conv4 = sext i32 %add to i64
  %mul5 = shl nsw i64 %conv4, 3
  %call6 = tail call i8* @xrealloc(i8* %2, i64 %mul5) #5
  %3 = bitcast i8* %call6 to i8**
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %n.1 = phi i32 [ %add, %if.then ], [ %n.029, %while.body ]
  %4 = phi i8* [ %call6, %if.then ], [ %2, %while.body ]
  %w.1 = phi i8** [ %3, %if.then ], [ %w.030, %while.body ]
  %call7 = tail call i8* @strtok(i8* null, i8* %delim) #5
  %5 = load i32, i32* %nwrds, align 4, !tbaa !15
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %nwrds, align 4, !tbaa !15
  %idxprom8 = sext i32 %inc to i64
  %arrayidx9 = getelementptr inbounds i8*, i8** %w.1, i64 %idxprom8
  store i8* %call7, i8** %arrayidx9, align 8, !tbaa !5
  %tobool = icmp eq i8* %call7, null
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  %w.0.lcssa = phi i8** [ %0, %entry ], [ %w.1, %if.end ]
  %arrayidx2.lcssa = phi i8** [ %0, %entry ], [ %arrayidx9, %if.end ]
  store i8* null, i8** %arrayidx2.lcssa, align 8, !tbaa !5
  ret i8** %w.0.lcssa
}

; Function Attrs: nounwind readonly uwtable
define i32 @cmd(i8* nocapture readonly %s) local_unnamed_addr #0 {
entry:
  br label %for.body

for.cond:                                         ; preds = %for.body
  %cmdnum = getelementptr inbounds [21 x %struct.anon], [21 x %struct.anon]* @cmd.cmds, i64 0, i64 %indvars.iv.next, i32 1
  %0 = load i8, i8* %cmdnum, align 8, !tbaa !68
  %tobool = icmp eq i64 %indvars.iv.next, 20
  br i1 %tobool, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %1 = phi i8 [ 4, %entry ], [ %0, %for.cond ]
  %cmd = getelementptr inbounds [21 x %struct.anon], [21 x %struct.anon]* @cmd.cmds, i64 0, i64 %indvars.iv, i32 0
  %2 = load i8*, i8** %cmd, align 16, !tbaa !70
  %call = tail call i32 @strcmp(i8* %2, i8* %s) #13
  %tobool3 = icmp eq i32 %call, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool3, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %conv = sext i8 %1 to i32
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %3 = load i8, i8* %s, align 1, !tbaa !2
  %cmp = icmp eq i8 %3, 42
  %. = select i1 %cmp, i32 24, i32 25
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %., %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define i32 @color(i16 zeroext %mode, i8* nocapture readonly %name, i32 %orphan, i32 %islink) local_unnamed_addr #2 {
entry:
  %tobool = icmp eq i32 %orphan, 0
  br i1 %tobool, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %tobool1 = icmp eq i32 %islink, 0
  br i1 %tobool1, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %0 = load i8*, i8** @missing_flgs, align 8, !tbaa !5
  %tobool3 = icmp eq i8* %0, null
  br i1 %tobool3, label %if.end10, label %if.then4

if.then4:                                         ; preds = %if.then2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %2 = load i8*, i8** @leftcode, align 8, !tbaa !5
  %3 = load i8*, i8** @rightcode, align 8, !tbaa !5
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.254, i64 0, i64 0), i8* %2, i8* nonnull %0, i8* %3)
  br label %cleanup

if.else:                                          ; preds = %if.then
  %4 = load i8*, i8** @orphan_flgs, align 8, !tbaa !5
  %tobool5 = icmp eq i8* %4, null
  br i1 %tobool5, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.else
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %6 = load i8*, i8** @leftcode, align 8, !tbaa !5
  %7 = load i8*, i8** @rightcode, align 8, !tbaa !5
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.254, i64 0, i64 0), i8* %6, i8* nonnull %4, i8* %7)
  br label %cleanup

if.end10:                                         ; preds = %if.then2, %if.else, %entry
  %conv = zext i16 %mode to i32
  %and = and i32 %conv, 61440
  %8 = add nsw i32 %and, -4096
  %9 = lshr exact i32 %8, 12
  %trunc = trunc i32 %9 to i20
  switch i20 %trunc, label %cleanup [
    i20 0, label %sw.bb
    i20 1, label %sw.bb15
    i20 3, label %sw.bb20
    i20 5, label %sw.bb53
    i20 9, label %sw.bb58
    i20 11, label %sw.bb63
    i20 7, label %sw.bb68
  ]

sw.bb:                                            ; preds = %if.end10
  %10 = load i8*, i8** @fifo_flgs, align 8, !tbaa !5
  %tobool11 = icmp eq i8* %10, null
  br i1 %tobool11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %sw.bb
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %12 = load i8*, i8** @leftcode, align 8, !tbaa !5
  %13 = load i8*, i8** @rightcode, align 8, !tbaa !5
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.254, i64 0, i64 0), i8* %12, i8* nonnull %10, i8* %13)
  br label %cleanup

sw.bb15:                                          ; preds = %if.end10
  %14 = load i8*, i8** @char_flgs, align 8, !tbaa !5
  %tobool16 = icmp eq i8* %14, null
  br i1 %tobool16, label %cleanup, label %if.end18

if.end18:                                         ; preds = %sw.bb15
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %16 = load i8*, i8** @leftcode, align 8, !tbaa !5
  %17 = load i8*, i8** @rightcode, align 8, !tbaa !5
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.254, i64 0, i64 0), i8* %16, i8* nonnull %14, i8* %17)
  br label %cleanup

sw.bb20:                                          ; preds = %if.end10
  %and22 = and i32 %conv, 512
  %tobool23 = icmp eq i32 %and22, 0
  %.pre = and i32 %conv, 2
  br i1 %tobool23, label %if.end40, label %if.then24

if.then24:                                        ; preds = %sw.bb20
  %tobool27 = icmp ne i32 %.pre, 0
  %18 = load i8*, i8** @stickyow_flgs, align 8
  %tobool28 = icmp ne i8* %18, null
  %or.cond = and i1 %tobool27, %tobool28
  br i1 %or.cond, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then24
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %20 = load i8*, i8** @leftcode, align 8, !tbaa !5
  %21 = load i8*, i8** @rightcode, align 8, !tbaa !5
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.254, i64 0, i64 0), i8* %20, i8* nonnull %18, i8* %21)
  br label %cleanup

if.end31:                                         ; preds = %if.then24
  %tobool34 = icmp eq i32 %.pre, 0
  %22 = load i8*, i8** @sticky_flgs, align 8
  %tobool36 = icmp ne i8* %22, null
  %or.cond108 = and i1 %tobool34, %tobool36
  br i1 %or.cond108, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end31
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %24 = load i8*, i8** @leftcode, align 8, !tbaa !5
  %25 = load i8*, i8** @rightcode, align 8, !tbaa !5
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.254, i64 0, i64 0), i8* %24, i8* nonnull %22, i8* %25)
  br label %cleanup

if.end40:                                         ; preds = %sw.bb20, %if.end31
  %tobool43 = icmp ne i32 %.pre, 0
  %26 = load i8*, i8** @otherwr_flgs, align 8
  %tobool45 = icmp ne i8* %26, null
  %or.cond109 = and i1 %tobool43, %tobool45
  br i1 %or.cond109, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end40
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %28 = load i8*, i8** @leftcode, align 8, !tbaa !5
  %29 = load i8*, i8** @rightcode, align 8, !tbaa !5
  %call47 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.254, i64 0, i64 0), i8* %28, i8* nonnull %26, i8* %29)
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  %30 = load i8*, i8** @dir_flgs, align 8, !tbaa !5
  %tobool49 = icmp eq i8* %30, null
  br i1 %tobool49, label %cleanup, label %if.end51

if.end51:                                         ; preds = %if.end48
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %32 = load i8*, i8** @leftcode, align 8, !tbaa !5
  %33 = load i8*, i8** @rightcode, align 8, !tbaa !5
  %call52 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.254, i64 0, i64 0), i8* %32, i8* nonnull %30, i8* %33)
  br label %cleanup

sw.bb53:                                          ; preds = %if.end10
  %34 = load i8*, i8** @block_flgs, align 8, !tbaa !5
  %tobool54 = icmp eq i8* %34, null
  br i1 %tobool54, label %cleanup, label %if.end56

if.end56:                                         ; preds = %sw.bb53
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %36 = load i8*, i8** @leftcode, align 8, !tbaa !5
  %37 = load i8*, i8** @rightcode, align 8, !tbaa !5
  %call57 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.254, i64 0, i64 0), i8* %36, i8* nonnull %34, i8* %37)
  br label %cleanup

sw.bb58:                                          ; preds = %if.end10
  %38 = load i8*, i8** @link_flgs, align 8, !tbaa !5
  %tobool59 = icmp eq i8* %38, null
  br i1 %tobool59, label %cleanup, label %if.end61

if.end61:                                         ; preds = %sw.bb58
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %40 = load i8*, i8** @leftcode, align 8, !tbaa !5
  %41 = load i8*, i8** @rightcode, align 8, !tbaa !5
  %call62 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.254, i64 0, i64 0), i8* %40, i8* nonnull %38, i8* %41)
  br label %cleanup

sw.bb63:                                          ; preds = %if.end10
  %42 = load i8*, i8** @sock_flgs, align 8, !tbaa !5
  %tobool64 = icmp eq i8* %42, null
  br i1 %tobool64, label %cleanup, label %if.end66

if.end66:                                         ; preds = %sw.bb63
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %44 = load i8*, i8** @leftcode, align 8, !tbaa !5
  %45 = load i8*, i8** @rightcode, align 8, !tbaa !5
  %call67 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.254, i64 0, i64 0), i8* %44, i8* nonnull %42, i8* %45)
  br label %cleanup

sw.bb68:                                          ; preds = %if.end10
  %and70 = and i32 %conv, 2048
  %tobool71 = icmp ne i32 %and70, 0
  %46 = load i8*, i8** @suid_flgs, align 8
  %tobool73 = icmp ne i8* %46, null
  %or.cond110 = and i1 %tobool71, %tobool73
  br i1 %or.cond110, label %if.then74, label %if.end76

if.then74:                                        ; preds = %sw.bb68
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %48 = load i8*, i8** @leftcode, align 8, !tbaa !5
  %49 = load i8*, i8** @rightcode, align 8, !tbaa !5
  %call75 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.254, i64 0, i64 0), i8* %48, i8* nonnull %46, i8* %49)
  br label %cleanup

if.end76:                                         ; preds = %sw.bb68
  %and78 = and i32 %conv, 1024
  %tobool79 = icmp ne i32 %and78, 0
  %50 = load i8*, i8** @sgid_flgs, align 8
  %tobool81 = icmp ne i8* %50, null
  %or.cond111 = and i1 %tobool79, %tobool81
  br i1 %or.cond111, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.end76
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %52 = load i8*, i8** @leftcode, align 8, !tbaa !5
  %53 = load i8*, i8** @rightcode, align 8, !tbaa !5
  %call83 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.254, i64 0, i64 0), i8* %52, i8* nonnull %50, i8* %53)
  br label %cleanup

if.end84:                                         ; preds = %if.end76
  %54 = load i8*, i8** @exec_flgs, align 8, !tbaa !5
  %tobool85 = icmp eq i8* %54, null
  br i1 %tobool85, label %cleanup, label %if.end87

if.end87:                                         ; preds = %if.end84
  %and89 = and i32 %conv, 73
  %tobool90 = icmp eq i32 %and89, 0
  br i1 %tobool90, label %if.end93, label %if.then91

if.then91:                                        ; preds = %if.end87
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %56 = load i8*, i8** @leftcode, align 8, !tbaa !5
  %57 = load i8*, i8** @rightcode, align 8, !tbaa !5
  %call92 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.254, i64 0, i64 0), i8* %56, i8* nonnull %54, i8* %57)
  br label %cleanup

if.end93:                                         ; preds = %if.end87
  %call94 = tail call i64 @strlen(i8* %name) #13
  %conv95 = trunc i64 %call94 to i32
  %e.0130 = load %struct.extensions*, %struct.extensions** @ext, align 8, !tbaa !5
  %tobool96131 = icmp eq %struct.extensions* %e.0130, null
  br i1 %tobool96131, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end93
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %e.0132 = phi %struct.extensions* [ %e.0, %for.inc ], [ %e.0130, %for.body.preheader ]
  %ext = getelementptr inbounds %struct.extensions, %struct.extensions* %e.0132, i64 0, i32 0
  %58 = load i8*, i8** %ext, align 8, !tbaa !71
  %call97 = tail call i64 @strlen(i8* %58) #13
  %conv98 = trunc i64 %call97 to i32
  %cmp = icmp sgt i32 %conv95, %conv98
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %for.body
  %sub = sub i64 %call94, %call97
  %sext = shl i64 %sub, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8, i8* %name, i64 %idx.ext
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %name, %for.body ]
  %call101 = tail call i32 @strcmp(i8* %cond, i8* %58) #13
  %tobool102 = icmp eq i32 %call101, 0
  br i1 %tobool102, label %if.then103, label %for.inc

if.then103:                                       ; preds = %cond.end
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8, !tbaa !5
  %60 = load i8*, i8** @leftcode, align 8, !tbaa !5
  %term_flg = getelementptr inbounds %struct.extensions, %struct.extensions* %e.0132, i64 0, i32 1
  %61 = load i8*, i8** %term_flg, align 8, !tbaa !73
  %62 = load i8*, i8** @rightcode, align 8, !tbaa !5
  %call104 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.254, i64 0, i64 0), i8* %60, i8* %61, i8* %62)
  br label %cleanup

for.inc:                                          ; preds = %cond.end
  %nxt = getelementptr inbounds %struct.extensions, %struct.extensions* %e.0132, i64 0, i32 6
  %e.0 = load %struct.extensions*, %struct.extensions** %nxt, align 8, !tbaa !5
  %tobool96 = icmp eq %struct.extensions* %e.0, null
  br i1 %tobool96, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.end93, %if.end10, %if.end84, %sw.bb63, %sw.bb58, %sw.bb53, %if.end48, %sw.bb15, %sw.bb, %if.then103, %if.then91, %if.then82, %if.then74, %if.end66, %if.end61, %if.end56, %if.end51, %if.then46, %if.then37, %if.then29, %if.end18, %if.end13, %if.then6, %if.then4
  %retval.0 = phi i32 [ 1, %if.then4 ], [ 1, %if.then74 ], [ 1, %if.then82 ], [ 1, %if.then91 ], [ 1, %if.then103 ], [ 1, %if.end66 ], [ 1, %if.end61 ], [ 1, %if.end56 ], [ 1, %if.then29 ], [ 1, %if.then37 ], [ 1, %if.then46 ], [ 1, %if.end51 ], [ 1, %if.end18 ], [ 1, %if.end13 ], [ 1, %if.then6 ], [ 0, %sw.bb ], [ 0, %sw.bb15 ], [ 0, %if.end48 ], [ 0, %sw.bb53 ], [ 0, %sw.bb58 ], [ 0, %sw.bb63 ], [ 0, %if.end84 ], [ 0, %if.end10 ], [ 0, %if.end93 ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly uwtable
define i8* @getcharset() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41.279, i64 0, i64 0)) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @initlinedraw(i32 %flag) local_unnamed_addr #2 {
entry:
  %tobool = icmp eq i32 %flag, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.187, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %0) #16
  store %struct.linedraw* getelementptr inbounds ([16 x %struct.linedraw], [16 x %struct.linedraw]* @initlinedraw.cstable, i64 0, i64 0), %struct.linedraw** @linedraw, align 8, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %if.then, %for.inc7
  %2 = phi %struct.linedraw* [ getelementptr inbounds ([16 x %struct.linedraw], [16 x %struct.linedraw]* @initlinedraw.cstable, i64 0, i64 0), %if.then ], [ %incdec.ptr8, %for.inc7 ]
  %3 = phi i8** [ getelementptr inbounds ([15 x i8*], [15 x i8*]* @initlinedraw.latin1_3, i64 0, i64 0), %if.then ], [ %9, %for.inc7 ]
  %4 = load i8*, i8** %3, align 8, !tbaa !5
  %tobool441 = icmp eq i8* %4, null
  br i1 %tobool441, label %for.inc7, label %for.body5.preheader

for.body5.preheader:                              ; preds = %for.body
  br label %for.body5

for.body5:                                        ; preds = %for.body5.preheader, %for.body5
  %5 = phi i8* [ %7, %for.body5 ], [ %4, %for.body5.preheader ]
  %s.042 = phi i8** [ %incdec.ptr, %for.body5 ], [ %3, %for.body5.preheader ]
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.188, i64 0, i64 0), i8* nonnull %5) #16
  %incdec.ptr = getelementptr inbounds i8*, i8** %s.042, i64 1
  %7 = load i8*, i8** %incdec.ptr, align 8, !tbaa !5
  %tobool4 = icmp eq i8* %7, null
  br i1 %tobool4, label %for.inc7.loopexit, label %for.body5

for.inc7.loopexit:                                ; preds = %for.body5
  %.pre = load %struct.linedraw*, %struct.linedraw** @linedraw, align 8, !tbaa !5
  br label %for.inc7

for.inc7:                                         ; preds = %for.inc7.loopexit, %for.body
  %8 = phi %struct.linedraw* [ %.pre, %for.inc7.loopexit ], [ %2, %for.body ]
  %incdec.ptr8 = getelementptr inbounds %struct.linedraw, %struct.linedraw* %8, i64 1
  store %struct.linedraw* %incdec.ptr8, %struct.linedraw** @linedraw, align 8, !tbaa !5
  %name = getelementptr inbounds %struct.linedraw, %struct.linedraw* %incdec.ptr8, i64 0, i32 0
  %9 = load i8**, i8*** %name, align 8, !tbaa !75
  %tobool1 = icmp eq i8** %9, null
  br i1 %tobool1, label %cleanup, label %for.body

if.end:                                           ; preds = %entry
  %10 = load i8*, i8** @charset, align 8, !tbaa !5
  %tobool10 = icmp eq i8* %10, null
  br i1 %tobool10, label %if.end30, label %if.then11

if.then11:                                        ; preds = %if.end
  store %struct.linedraw* getelementptr inbounds ([16 x %struct.linedraw], [16 x %struct.linedraw]* @initlinedraw.cstable, i64 0, i64 0), %struct.linedraw** @linedraw, align 8, !tbaa !5
  br label %for.body15

for.body15:                                       ; preds = %if.then11, %for.inc27
  %11 = phi i8** [ getelementptr inbounds ([15 x i8*], [15 x i8*]* @initlinedraw.latin1_3, i64 0, i64 0), %if.then11 ], [ %15, %for.inc27 ]
  %incdec.ptr28.sink40 = phi %struct.linedraw* [ getelementptr inbounds ([16 x %struct.linedraw], [16 x %struct.linedraw]* @initlinedraw.cstable, i64 0, i64 0), %if.then11 ], [ %incdec.ptr28, %for.inc27 ]
  %12 = load i8*, i8** %11, align 8, !tbaa !5
  %tobool1838 = icmp eq i8* %12, null
  br i1 %tobool1838, label %for.inc27, label %for.body19.preheader

for.body19.preheader:                             ; preds = %for.body15
  br label %for.body19

for.cond17:                                       ; preds = %for.body19
  %13 = load i8*, i8** %incdec.ptr25, align 8, !tbaa !5
  %tobool18 = icmp eq i8* %13, null
  br i1 %tobool18, label %for.inc27, label %for.body19

for.body19:                                       ; preds = %for.body19.preheader, %for.cond17
  %14 = phi i8* [ %13, %for.cond17 ], [ %12, %for.body19.preheader ]
  %s.139 = phi i8** [ %incdec.ptr25, %for.cond17 ], [ %11, %for.body19.preheader ]
  %call20 = tail call i32 @strcasecmp(i8* nonnull %10, i8* nonnull %14) #13
  %tobool21 = icmp eq i32 %call20, 0
  %incdec.ptr25 = getelementptr inbounds i8*, i8** %s.139, i64 1
  br i1 %tobool21, label %cleanup, label %for.cond17

for.inc27:                                        ; preds = %for.cond17, %for.body15
  %incdec.ptr28 = getelementptr inbounds %struct.linedraw, %struct.linedraw* %incdec.ptr28.sink40, i64 1
  store %struct.linedraw* %incdec.ptr28, %struct.linedraw** @linedraw, align 8, !tbaa !5
  %name13 = getelementptr inbounds %struct.linedraw, %struct.linedraw* %incdec.ptr28, i64 0, i32 0
  %15 = load i8**, i8*** %name13, align 8, !tbaa !75
  %tobool14 = icmp eq i8** %15, null
  br i1 %tobool14, label %if.end30, label %for.body15

if.end30:                                         ; preds = %for.inc27, %if.end
  store %struct.linedraw* getelementptr inbounds ([16 x %struct.linedraw], [16 x %struct.linedraw]* @initlinedraw.cstable, i64 0, i64 15), %struct.linedraw** @linedraw, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %for.inc7, %for.body19, %if.end30
  ret void
}

; Function Attrs: nounwind readonly uwtable
define i32 @strverscmp(i8* readonly %s1, i8* readonly %s2) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %s1, %s2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8, i8* %s1, align 1, !tbaa !2
  %cmp2 = icmp eq i8 %0, 48
  %conv3 = zext i1 %cmp2 to i32
  %call = tail call i16** @__ctype_b_loc() #17
  %1 = load i16*, i16** %call, align 8, !tbaa !5
  %idxprom = zext i8 %0 to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !27
  %3 = lshr i16 %2, 11
  %.lobit = and i16 %3, 1
  %4 = zext i16 %.lobit to i32
  %add = add nuw nsw i32 %4, %conv3
  %p2.0114 = getelementptr inbounds i8, i8* %s2, i64 1
  %p1.0115 = getelementptr inbounds i8, i8* %s1, i64 1
  %c2.0116 = load i8, i8* %s2, align 1, !tbaa !2
  %conv8117 = zext i8 %0 to i32
  %conv9118 = zext i8 %c2.0116 to i32
  %sub119 = sub nsw i32 %conv8117, %conv9118
  %cmp10120 = icmp eq i32 %sub119, 0
  %cmp13121 = icmp ne i8 %0, 0
  %5 = and i1 %cmp13121, %cmp10120
  br i1 %5, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %p1.0124 = phi i8* [ %p1.0, %while.body ], [ %p1.0115, %while.body.preheader ]
  %p2.0123 = phi i8* [ %p2.0, %while.body ], [ %p2.0114, %while.body.preheader ]
  %state.0122 = phi i32 [ %or31, %while.body ], [ %add, %while.body.preheader ]
  %idxprom15 = sext i32 %state.0122 to i64
  %arrayidx16 = getelementptr inbounds [16 x i32], [16 x i32]* @strverscmp.next_state, i64 0, i64 %idxprom15
  %6 = load i32, i32* %arrayidx16, align 4, !tbaa !15
  %7 = load i8, i8* %p1.0124, align 1, !tbaa !2
  %cmp20 = icmp eq i8 %7, 48
  %conv21 = zext i1 %cmp20 to i32
  %idxprom24 = zext i8 %7 to i64
  %arrayidx25 = getelementptr inbounds i16, i16* %1, i64 %idxprom24
  %8 = load i16, i16* %arrayidx25, align 2, !tbaa !27
  %9 = lshr i16 %8, 11
  %.lobit102 = and i16 %9, 1
  %10 = zext i16 %.lobit102 to i32
  %add30 = add nuw nsw i32 %10, %conv21
  %or31 = or i32 %add30, %6
  %p2.0 = getelementptr inbounds i8, i8* %p2.0123, i64 1
  %p1.0 = getelementptr inbounds i8, i8* %p1.0124, i64 1
  %c2.0 = load i8, i8* %p2.0123, align 1, !tbaa !2
  %conv8 = zext i8 %7 to i32
  %conv9 = zext i8 %c2.0 to i32
  %sub = sub nsw i32 %conv8, %conv9
  %cmp10 = icmp eq i32 %sub, 0
  %cmp13 = icmp ne i8 %7, 0
  %11 = and i1 %cmp13, %cmp10
  br i1 %11, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.end
  %state.0.lcssa = phi i32 [ %add, %if.end ], [ %or31, %while.body ]
  %p2.0.lcssa = phi i8* [ %p2.0114, %if.end ], [ %p2.0, %while.body ]
  %p1.0.lcssa = phi i8* [ %p1.0115, %if.end ], [ %p1.0, %while.body ]
  %c2.0.lcssa = phi i8 [ %c2.0116, %if.end ], [ %c2.0, %while.body ]
  %sub.lcssa = phi i32 [ %sub119, %if.end ], [ %sub, %while.body ]
  %shl = shl i32 %state.0.lcssa, 2
  %cmp33 = icmp eq i8 %c2.0.lcssa, 48
  %conv34 = zext i1 %cmp33 to i32
  %idxprom37 = zext i8 %c2.0.lcssa to i64
  %arrayidx38 = getelementptr inbounds i16, i16* %1, i64 %idxprom37
  %12 = load i16, i16* %arrayidx38, align 2, !tbaa !27
  %13 = lshr i16 %12, 11
  %.lobit101 = and i16 %13, 1
  %14 = zext i16 %.lobit101 to i32
  %add43 = add nuw nsw i32 %14, %conv34
  %or44 = or i32 %add43, %shl
  %idxprom45 = sext i32 %or44 to i64
  %arrayidx46 = getelementptr inbounds [60 x i32], [60 x i32]* @strverscmp.result_type, i64 0, i64 %idxprom45
  %15 = load i32, i32* %arrayidx46, align 4, !tbaa !15
  switch i32 %15, label %sw.default [
    i32 2, label %cleanup
    i32 3, label %sw.bb47
  ]

sw.bb47:                                          ; preds = %while.end
  %16 = load i8, i8* %p1.0.lcssa, align 1, !tbaa !2
  %idxprom52105 = zext i8 %16 to i64
  %arrayidx53106 = getelementptr inbounds i16, i16* %1, i64 %idxprom52105
  %17 = load i16, i16* %arrayidx53106, align 2, !tbaa !27
  %18 = and i16 %17, 2048
  %tobool107 = icmp eq i16 %18, 0
  %19 = load i8, i8* %p2.0.lcssa, align 1, !tbaa !2
  %idxprom70108 = zext i8 %19 to i64
  %arrayidx71109 = getelementptr inbounds i16, i16* %1, i64 %idxprom70108
  %20 = load i16, i16* %arrayidx71109, align 2, !tbaa !27
  %21 = and i16 %20, 2048
  %tobool74110 = icmp eq i16 %21, 0
  br i1 %tobool107, label %while.end67, label %while.body56.preheader

while.body56.preheader:                           ; preds = %sw.bb47
  br label %while.body56

while.cond48:                                     ; preds = %while.body56
  %22 = load i8, i8* %incdec.ptr50112, align 1, !tbaa !2
  %idxprom52 = zext i8 %22 to i64
  %arrayidx53 = getelementptr inbounds i16, i16* %1, i64 %idxprom52
  %23 = load i16, i16* %arrayidx53, align 2, !tbaa !27
  %24 = and i16 %23, 2048
  %tobool = icmp eq i16 %24, 0
  %25 = load i8, i8* %incdec.ptr58, align 1, !tbaa !2
  %idxprom70 = zext i8 %25 to i64
  %arrayidx71 = getelementptr inbounds i16, i16* %1, i64 %idxprom70
  %26 = load i16, i16* %arrayidx71, align 2, !tbaa !27
  %27 = and i16 %26, 2048
  %tobool74 = icmp eq i16 %27, 0
  br i1 %tobool, label %while.end67, label %while.body56

while.body56:                                     ; preds = %while.body56.preheader, %while.cond48
  %tobool74113 = phi i1 [ %tobool74, %while.cond48 ], [ %tobool74110, %while.body56.preheader ]
  %p1.0.lcssa.pn = phi i8* [ %incdec.ptr50112, %while.cond48 ], [ %p1.0.lcssa, %while.body56.preheader ]
  %p2.1111 = phi i8* [ %incdec.ptr58, %while.cond48 ], [ %p2.0.lcssa, %while.body56.preheader ]
  %incdec.ptr50112 = getelementptr inbounds i8, i8* %p1.0.lcssa.pn, i64 1
  %incdec.ptr58 = getelementptr inbounds i8, i8* %p2.1111, i64 1
  br i1 %tobool74113, label %cleanup, label %while.cond48

while.end67:                                      ; preds = %while.cond48, %sw.bb47
  %tobool74.lcssa = phi i1 [ %tobool74110, %sw.bb47 ], [ %tobool74, %while.cond48 ]
  %cond = select i1 %tobool74.lcssa, i32 %sub.lcssa, i32 -1
  br label %cleanup

sw.default:                                       ; preds = %while.end
  br label %cleanup

cleanup:                                          ; preds = %while.body56, %while.end, %entry, %sw.default, %while.end67
  %retval.0 = phi i32 [ %15, %sw.default ], [ %cond, %while.end67 ], [ 0, %entry ], [ %sub.lcssa, %while.end ], [ 1, %while.body56 ]
  ret i32 %retval.0
}

attributes #0 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { cold nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { cold }
attributes #17 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 5.0.2 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !3, i64 16}
!8 = !{!"_info", !6, i64 0, !6, i64 8, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !3, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !6, i64 104, !6, i64 112}
!9 = !{!"int", !3, i64 0}
!10 = !{!"long", !3, i64 0}
!11 = !{!8, !6, i64 0}
!12 = !{!8, !10, i64 56}
!13 = !{!8, !10, i64 80}
!14 = !{!8, !10, i64 72}
!15 = !{!9, !9, i64 0}
!16 = !{!17, !6, i64 0}
!17 = !{!"sorts", !6, i64 0, !6, i64 8}
!18 = !{!17, !6, i64 8}
!19 = !{!20, !10, i64 8}
!20 = !{!"stat", !10, i64 0, !10, i64 8, !10, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !21, i64 72, !21, i64 88, !21, i64 104, !3, i64 120}
!21 = !{!"timespec", !10, i64 0, !10, i64 8}
!22 = !{!20, !10, i64 0}
!23 = !{!20, !9, i64 24}
!24 = !{!20, !10, i64 48}
!25 = !{!26, !6, i64 32}
!26 = !{!"linedraw", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !3, i64 0}
!29 = !{!10, !10, i64 0}
!30 = !{!8, !9, i64 36}
!31 = !{!20, !9, i64 28}
!32 = !{!8, !9, i64 44}
!33 = !{!20, !9, i64 32}
!34 = !{!8, !9, i64 48}
!35 = !{!8, !6, i64 8}
!36 = !{!8, !3, i64 32}
!37 = !{!8, !6, i64 104}
!38 = !{!8, !6, i64 112}
!39 = !{!20, !10, i64 72}
!40 = !{!8, !10, i64 64}
!41 = !{!20, !10, i64 104}
!42 = !{!20, !10, i64 88}
!43 = !{!8, !9, i64 40}
!44 = !{!8, !10, i64 88}
!45 = !{!8, !10, i64 96}
!46 = !{!26, !6, i64 8}
!47 = !{!48, !9, i64 16}
!48 = !{!"tm", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !10, i64 40, !6, i64 48}
!49 = !{!48, !9, i64 12}
!50 = !{!48, !9, i64 20}
!51 = !{!48, !9, i64 8}
!52 = !{!48, !9, i64 4}
!53 = !{!8, !3, i64 28}
!54 = !{!8, !3, i64 24}
!55 = !{!8, !3, i64 20}
!56 = !{!57, !9, i64 0}
!57 = !{!"xtable", !9, i64 0, !6, i64 8, !6, i64 16}
!58 = !{!57, !6, i64 16}
!59 = !{!60, !6, i64 0}
!60 = !{!"passwd", !6, i64 0, !6, i64 8, !9, i64 16, !9, i64 20, !6, i64 24, !6, i64 32, !6, i64 40}
!61 = !{!57, !6, i64 8}
!62 = !{!63, !6, i64 0}
!63 = !{!"group", !6, i64 0, !6, i64 8, !9, i64 16, !6, i64 24}
!64 = !{!65, !10, i64 0}
!65 = !{!"inotable", !10, i64 0, !10, i64 8, !6, i64 16}
!66 = !{!65, !10, i64 8}
!67 = !{!65, !6, i64 16}
!68 = !{!69, !3, i64 8}
!69 = !{!"", !6, i64 0, !3, i64 8}
!70 = !{!69, !6, i64 0}
!71 = !{!72, !6, i64 0}
!72 = !{!"extensions", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!73 = !{!72, !6, i64 8}
!74 = !{!72, !6, i64 48}
!75 = !{!26, !6, i64 0}
