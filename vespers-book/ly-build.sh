shopt -s nullglob

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


pushd ../MarianAntiphons

for i in *.ly; do
    ext="${i##*.}"
    fname="${i%.*}"
    echo ${fname}
    if [ "${fname}.pdf" -ot "${fname}.ly" ] || [ "$force" = "1" ]; then
        lilypond -dno-point-and-click -dgui --bigpdfs "${fname}.ly" &
    fi
done

popd
wait
