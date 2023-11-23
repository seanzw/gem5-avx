git --git-dir=../gem-forge-stack/gem5/.git \
	format-patch -k -1 --stdout $1  | \
	git am -3 -k
