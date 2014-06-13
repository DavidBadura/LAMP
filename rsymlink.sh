#!/bin/bash
if [ "$2" == "" ]; then
  echo "Syntax: $0 source-directory destination-directory"
  echo "Will create directory structure of source-directory in destination-directory"
  echo "and symbolic links with relative paths for all files."
  echo "destination-directory will be created if it does not exist."
  echo
  echo "(c)2012 Ronny Ager-Wick, released under GPL v3"
  echo "inspired by http://ubuntuforums.org/showthread.php?t=798899"
  exit 1
fi

src=`readlink -e $1`
dst=`readlink -m $2`

if [ ! -d "$src" ] || [ "$src" == "" ]; then
  echo "ERROR: source directory does not exist."
  exit 2;
fi

if [ ! -d "$dst" ]; then
  echo "Creating directory $dst..."
  mkdir -p "$dst" # create directory path
  created_dir=1
fi

if [ ! -d "$dst" ] || [ "$dst" == "" ]; then
  echo "ERROR: destination directory does not exist, and could not be created."
  exit 3;
fi

if [ "$created_dir" == "1" ]; then
  # if dir path was just created, remove the last directory so it will be created below, otherwise the statistics will be wrong
  # Yeah, I know, fiddly, but I'm a perfectionist, so what can you do?
  rmdir "$dst"
fi

num_dirs_created=0
num_dirs_skipped=0
num_files_linked=0
num_files_skipped=0
echo "Building new directories in $dst, and linking to files in $src..."
for src_d in $(find $src -xdev -type d); do
  dst_d="$dst${src_d#$src}"
  echo -n "$dst_d"
  if [ ! -d $dst_d ]; then
    mkdir -p "$dst_d"
    echo -n " (Created)"
    ((num_dirs_created+=1))
  else
    echo -n " (Exists)"
    ((num_dirs_skipped+=1))
  fi

  # get relative path from destination to source
  rel=$(perl -MFile::Spec -e 'print File::Spec->abs2rel("'"$src_d"'","'"$dst_d"'")')

  f_lnkd=0
  f_skpd=0
  for source_file in $(find $src_d -xdev -maxdepth 1 -type f); do
    src_f="$rel${source_file#$src_d}" # source file with relative path
    dst_f="$dst${source_file#$src}" # destination dir & file name
    #echo -n " [ src_f=$src_f / dst_f=$dst_f ] "
    #echo -n " src_f=$src_f, dst=$dst, rel=$rel, src_f#src=$({$src_f#$src}) | "

    if [ -e $dst_f ]; then
	rm -f $dst_f
    fi
     
    ln -s $src_f $dst_f  # create link
    ((f_lnkd+=1))
  done
  ((num_files_linked+=f_lnkd))
  ((num_files_skipped+=f_skpd))
  echo " (linked $f_lnkd of $(($f_lnkd + $f_skpd)) files)"
  ((num_dirs+=1))
done

echo -n "Created $num_dirs_created directories"
if [ $num_dirs_skipped != 0 ]; then
  echo -n ", while $num_dirs_skipped directories already existed"
fi
echo "."

echo -n "Linked $num_files_linked files"
if [ $num_files_skipped != 0 ]; then
  echo -n ", while $num_files_skipped links or files already existed"
fi
echo "."

