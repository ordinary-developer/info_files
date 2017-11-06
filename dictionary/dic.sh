# You can organize your library of dicitionaries
# a dictionary is a direcotry 'dic' in ./dic/library direcotry
# a chapter is a file with some contents
# each dictionary contains
# - file 'desciprtion' - this is information about the dictionary
# - file 'contents' - this is information about chapters in the dictionary


# initialization
dic='./dictionary';
library=$dic'/library';

# help ouput
if test $1 = '-h'; then
  echo 'dic - output information about all dictionaries'
  echo 'dic dictionary - the contents of the dictionary'
  echo 'dic dictionary chapter - the contents of the chapter'
fi

# Output formatting initialization
clear;
echo '---------------------------------'

# Information about dictionaries
component=$1
if test -z $component; then
  echo "ALL"
  echo '--------------------------------'
  for component in `ls $library`; do
    if test -d $library'/'$component; then
      echo $component" - "`cat $library/$component/.description`
    fi
  done
else
  chapter=$2
  # Information about chapters in a dictionary
  if test -z $2; then
    chapter=".contents";
  fi
  echo "["$component"]=>["$chapter"]"
  echo '--------------------------------'
  file=$library"/"$component"/"$chapter
  more $file;
fi

# Output formatting finalization
echo '----------------------------------'
