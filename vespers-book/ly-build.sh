shopt -s nullglob

pushd ../MarianAntiphons

for i in *.ly; do
    ext="${i##*.}"
    fname="${i%.*}"
    echo ${fname}
    if [ "${fname}.pdf" -ot "${fname}.ly" ]; then
        lilypond -dno-point-and-click -dgui --bigpdfs "${fname}.ly" &
    fi
done

popd
wait
