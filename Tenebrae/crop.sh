
error_exit()
{
	echo "$1" 1>&2
	exit 1
}

error_message=""

process_file()
{
	fname=$1.pdf
	temp=$1-temp.pdf
	oname=$2-crop.pdf

	pdfcrop $fname $oname
	#gswin64c -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dEmbedAllFonts=true -dSubsetFonts=true -sOutputFile=$oname $temp &
}

# process_file tenebrae_full tenebrae_full
# process_file tenebrae_friday tenebrae_friday
# process_file tenebrae_prophecyTone tenebrae_prophecyTone
# process_file tenebrae_saturday tenebrae_saturday
# process_file tenebrae_thursday tenebrae_thursday

process_file tenebrae_prophecyTone tenebrae_prophecyTone
process_file tenebrae_orationes tenebrae_orationes
process_file tenebrae_original tenebrae_full
process_file tenebrae_thursday_original tenebrae_thursday
process_file tenebrae_friday_original tenebrae_friday
process_file tenebrae_saturday_original tenebrae_saturday
