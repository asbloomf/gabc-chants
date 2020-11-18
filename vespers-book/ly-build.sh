#!/bin/bash

shopt -s nullglob

dirs=( ../MarianAntiphons ../misc )

function usage
{
	echo "usage: ly-build.sh [-f]"
}

echo $*

force=

while [ "$1" != "" ]; do
	case $1 in
		-f | --force )		force=1
							;;
		* )					usage
							exit 1
	esac
	shift
done


for dir in "${dirs[@]}";
do
  pushd $dir

  for i in *.ly; do
      ext="${i##*.}"
      fname="${i%.*}"
      if [[ $fname != inc* ]];
      then
        echo ${fname}
        if [ "${fname}.pdf" -ot "${fname}.ly" ] || [ "$force" = "1" ]; then
            lilypond -dno-point-and-click -dgui --pspdfopt=size "${fname}.ly"
        fi
      fi
  done

  popd
done
wait
