#!/usr/bin/env bash
# shellcheck disable=2103

[[ "${HOME}" != '/data/data/com.termux/files/home' ]] && [[ "${PREFIX:-}" != '/data/data/com.termux/files/usr' ]] && return

mvic() {
	mv -- "$DOW"/"$1" ./
}

mvoc() {
	mv -- ./"$1" "$DOW"/
}

mvih() {
	mv -- "$DOW"/"$1" ~/
}

mvoh() {
	mv -- ~/"$1" "$DOW"/
}

mvib() {
	mv -- "$DOW"/"$1" ../
}

mvob() {
	mv -- ../"$1" "$DOW"/
}

mvir() {
	mv -- "$DOW"/"$2" "$1"/
}

mvor() {
	mv -- "$1"/"$2" "$DOW"/
}

mvip() {
	mv -- "$DOW"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

mvop() {
	mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOW"/
}

mvidc() {
	mv -- "$DOC"/"$1" ./
}

mvodc() {
	mv -- ./"$1" "$DOC"/
}

mvidh() {
	mv -- "$DOC"/"$1" ~/
}

mvodh() {
	mv -- ~/"$1" "$DOC"/
}

mvidb() {
	mv -- "$DOC"/"$1" ../
}

mvodb() {
	mv -- ../"$1" "$DOC"/
}

mvidr() {
	mv -- "$DOC"/"$2" "$1"/
}

mvodr() {
	mv -- "$1"/"$2" "$DOC"/
}

mvidp() {
	mv -- "$DOC"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

mvodp() {
	mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOC"/
}

mvisc() {
	mv -- "$SCR"/"$1" ./
}

mvosc() {
	mv -- ./"$1" "$SCR"/
}

mvish() {
	mv -- "$SCR"/"$1" ~/
}

mvosh() {
	mv -- ~/"$1" "$SCR"/
}

mvisb() {
	mv -- "$SCR"/"$1" ../
}

mvosb() {
	mv -- ../"$1" "$SCR"/
}

mvisr() {
	mv -- "$SCR"/"$2" "$1"/
}

mvosr() {
	mv -- "$1"/"$2" "$SCR"/
}

mvisp() {
	mv -- "$SCR"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

mvosp() {
	mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$SCR"/
}

mviec() {
	mv -- "$EMU"/"$1" ./
}

mvoec() {
	mv -- ./"$1" "$EMU"/
}

mvieh() {
	mv -- "$EMU"/"$1" ~/
}

mvoeh() {
	mv -- ~/"$1" "$EMU"/
}

mvieb() {
	mv -- "$EMU"/"$1" ../
}

mvoeb() {
	mv -- ../"$1" "$EMU"/
}

mvier() {
	mv -- "$EMU"/"$2" "$1"/
}

mvoer() {
	mv -- "$1"/"$2" "$EMU"/
}

mviep() {
	mv -- "$EMU"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

mvoep() {
	mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$EMU"/
}

cpic() {
	cp -- "$DOW"/"$1" ./
}

cpoc() {
	cp -- ./"$1" "$DOW"/
}

cpih() {
	cp -- "$DOW"/"$1" ~/
}

cpoh() {
	cp -- ~/"$1" "$DOW"/
}

cpib() {
	cp -- "$DOW"/"$1" ../
}

cpob() {
	cp -- ../"$1" "$DOW"/
}

cpir() {
	cp -- "$DOW"/"$2" "$1"/
}

cpor() {
	cp -- "$1"/"$2" "$DOW"/
}

cpip() {
	cp -- "$DOW"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cpop() {
	cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOW"/
}

cpidc() {
	cp -- "$DOC"/"$1" ./
}

cpodc() {
	cp -- ./"$1" "$DOC"/
}

cpidh() {
	cp -- "$DOC"/"$1" ~/
}

cpodh() {
	cp -- ~/"$1" "$DOC"/
}

cpidb() {
	cp -- "$DOC"/"$1" ../
}

cpodb() {
	cp -- ../"$1" "$DOC"/
}

cpidr() {
	cp -- "$DOC"/"$2" "$1"/
}

cpodr() {
	cp -- "$1"/"$2" "$DOC"/
}

cpidp() {
	cp -- "$DOC"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cpodp() {
	cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOC"/
}

cpisc() {
	cp -- "$SCR"/"$1" ./
}

cposc() {
	cp -- ./"$1" "$SCR"/
}

cpish() {
	cp -- "$SCR"/"$1" ~/
}

cposh() {
	cp -- ~/"$1" "$SCR"/
}

cpisb() {
	cp -- "$SCR"/"$1" ../
}

cposb() {
	cp -- ../"$1" "$SCR"/
}

cpisr() {
	cp -- "$SCR"/"$2" "$1"/
}

cposr() {
	cp -- "$1"/"$2" "$SCR"/
}

cpisp() {
	cp -- "$SCR"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cposp() {
	cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$SCR"/
}

cpiec() {
	cp -- "$EMU"/"$1" ./
}

cpoec() {
	cp -- ./"$1" "$EMU"/
}

cpieh() {
	cp -- "$EMU"/"$1" ~/
}

cpoeh() {
	cp -- ~/"$1" "$EMU"/
}

cpieb() {
	cp -- "$EMU"/"$1" ../
}

cpoeb() {
	cp -- ../"$1" "$EMU"/
}

cpier() {
	cp -- "$EMU"/"$2" "$1"/
}

cpoer() {
	cp -- "$1"/"$2" "$EMU"/
}

cpiep() {
	cp -- "$EMU"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cpoep() {
	cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$EMU"/
}

cpric() {
	cp -r -- "$DOW"/"$1" ./
}

cproc() {
	cp -r -- ./"$1" "$DOW"/
}

cprih() {
	cp -r -- "$DOW"/"$1" ~/
}

cproh() {
	cp -r -- ~/"$1" "$DOW"/
}

cprib() {
	cp -r -- "$DOW"/"$1" ../
}

cprob() {
	cp -r -- ../"$1" "$DOW"/
}

cprir() {
	cp -r -- "$DOW"/"$2" "$1"/
}

cpror() {
	cp -r -- "$1"/"$2" "$DOW"/
}

cprip() {
	cp -r -- "$DOW"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cprop() {
	cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOW"/
}

cpridc() {
	cp -r -- "$DOC"/"$1" ./
}

cprodc() {
	cp -r -- ./"$1" "$DOC"/
}

cpridh() {
	cp -r -- "$DOC"/"$1" ~/
}

cprodh() {
	cp -r -- ~/"$1" "$DOC"/
}

cpridb() {
	cp -r -- "$DOC"/"$1" ../
}

cprodb() {
	cp -r -- ../"$1" "$DOC"/
}

cpridr() {
	cp -r -- "$DOC"/"$2" "$1"/
}

cprodr() {
	cp -r -- "$1"/"$2" "$DOC"/
}

cpridp() {
	cp -r -- "$DOC"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cprodp() {
	cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOC"/
}

cprisc() {
	cp -r -- "$SCR"/"$1" ./
}

cprosc() {
	cp -r -- ./"$1" "$SCR"/
}

cprish() {
	cp -r -- "$SCR"/"$1" ~/
}

cprosh() {
	cp -r -- ~/"$1" "$SCR"/
}

cprisb() {
	cp -r -- "$SCR"/"$1" ../
}

cprosb() {
	cp -r -- ../"$1" "$SCR"/
}

cprisr() {
	cp -r -- "$SCR"/"$2" "$1"/
}

cprosr() {
	cp -r -- "$1"/"$2" "$SCR"/
}

cprisp() {
	cp -r -- "$SCR"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cprosp() {
	cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$SCR"/
}

cpriec() {
	cp -r -- "$EMU"/"$1" ./
}

cproec() {
	cp -r -- ./"$1" "$EMU"/
}

cprieh() {
	cp -r -- "$EMU"/"$1" ~/
}

cproeh() {
	cp -r -- ~/"$1" "$EMU"/
}

cprieb() {
	cp -r -- "$EMU"/"$1" ../
}

cproeb() {
	cp -r -- ../"$1" "$EMU"/
}

cprier() {
	cp -r -- "$EMU"/"$2" "$1"/
}

cproer() {
	cp -r -- "$1"/"$2" "$EMU"/
}

cpriep() {
	cp -r -- "$EMU"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cproep() {
	cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$EMU"/
}

mviac() {
	(
		cd . || exit
		cwd=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviah() {
	(
		cd ~ || exit
		cwd=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviab() {
	(
		cd .. || exit
		cwd=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviar() {
	(
		cd "$1" || exit
		cwd=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviap() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cwd=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviadc() {
	(
		cd . || exit
		cwd=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviadh() {
	(
		cd ~ || exit
		cwd=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviadb() {
	(
		cd .. || exit
		cwd=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviadr() {
	(
		cd "$1" || exit
		cwd=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviadp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cwd=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviasc() {
	(
		cd . || exit
		cwd=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviash() {
	(
		cd ~ || exit
		cwd=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviasb() {
	(
		cd .. || exit
		cwd=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviasr() {
	(
		cd "$1" || exit
		cwd=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviasp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cwd=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviaec() {
	(
		cd . || exit
		cwd=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviaeh() {
	(
		cd ~ || exit
		cwd=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviaeb() {
	(
		cd .. || exit
		cwd=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviaer() {
	(
		cd "$1" || exit
		cwd=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mviaep() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cwd=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

cpiac() {
	(
		cd . || exit
		cwd=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiah() {
	(
		cd ~ || exit
		cwd=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiab() {
	(
		cd .. || exit
		cwd=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiar() {
	(
		cd "$1" || exit
		cwd=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiap() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cwd=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiadc() {
	(
		cd . || exit
		cwd=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiadh() {
	(
		cd ~ || exit
		cwd=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiadb() {
	(
		cd .. || exit
		cwd=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiadr() {
	(
		cd "$1" || exit
		cwd=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiadp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cwd=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiasc() {
	(
		cd . || exit
		cwd=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiash() {
	(
		cd ~ || exit
		cwd=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiasb() {
	(
		cd .. || exit
		cwd=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiasr() {
	(
		cd "$1" || exit
		cwd=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiasp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cwd=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiaec() {
	(
		cd . || exit
		cwd=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiaeh() {
	(
		cd ~ || exit
		cwd=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiaeb() {
	(
		cd .. || exit
		cwd=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiaer() {
	(
		cd "$1" || exit
		cwd=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpiaep() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cwd=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

mvaic() {
	(
		mvic "$1"
		cd . || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaih() {
	(
		mvih "$1"
		cd ~ || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaib() {
	(
		mvib "$1"
		cd .. || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvair() {
	(
		mvir "$1" "$2"
		cd "$1" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

mvaip() {
	(
		mvip "$1" "$2"
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

mvaidc() {
	(
		mvidc "$1"
		cd . || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaidh() {
	(
		mvidh "$1"
		cd ~ || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaidb() {
	(
		mvidb "$1"
		cd .. || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaidr() {
	(
		mvidr "$1" "$2"
		cd "$1" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

mvaidp() {
	(
		mvidp "$1" "$2"
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

mvaisc() {
	(
		mvisc "$1"
		cd . || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaish() {
	(
		mvish "$1"
		cd ~ || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaisb() {
	(
		mvisb "$1"
		cd .. || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaisr() {
	(
		mvisr "$1" "$2"
		cd "$1" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

mvaisp() {
	(
		mvisp "$1" "$2"
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

mvaiec() {
	(
		mviec "$1"
		cd . || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaieh() {
	(
		mvieh "$1"
		cd ~ || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaieb() {
	(
		mvieb "$1"
		cd .. || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaier() {
	(
		mvier "$1" "$2"
		cd "$1" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

mvaiep() {
	(
		mviep "$1" "$2"
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

cpaic() {
	(
		cpric "$1"
		cd . || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaih() {
	(
		cprih "$1"
		cd ~ || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaib() {
	(
		cprib "$1"
		cd .. || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpair() {
	(
		cprir "$1" "$2"
		cd "$1" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

cpaip() {
	(
		cprip "$1" "$2"
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

cpaidc() {
	(
		cpridc "$1"
		cd . || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaidh() {
	(
		cpridh "$1"
		cd ~ || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaidb() {
	(
		cpridb "$1"
		cd .. || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaidr() {
	(
		cpridr "$1" "$2"
		cd "$1" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

cpaidp() {
	(
		cpridp "$1" "$2"
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

cpaisc() {
	(
		cprisc "$1"
		cd . || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaish() {
	(
		cprish "$1"
		cd ~ || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaisb() {
	(
		cprisb "$1"
		cd .. || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaisr() {
	(
		cprisr "$1" "$2"
		cd "$1" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

cpaisp() {
	(
		cprisp "$1" "$2"
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

cpaiec() {
	(
		cpriec "$1"
		cd . || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaieh() {
	(
		cprieh "$1"
		cd ~ || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaieb() {
	(
		cprieb "$1"
		cd .. || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaier() {
	(
		cprier "$1" "$2"
		cd "$1" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

cpaiep() {
	(
		cpriep "$1" "$2"
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

mvycr() {
	mv -- "$2" "$1"/
}

mvucr() {
	mv -- "$1"/"$2"
}

mvycp() {
	mv -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

mvucp() {
	mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

mvyhr() {
	mv -- "$2" "$1"/
}

mvuhr() {
	mv -- "$1"/"$2"
}

mvyhp() {
	mv -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

mvuhp() {
	mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

mvybr() {
	mv -- "$2" "$1"/
}

mvubr() {
	mv -- "$1"/"$2"
}

mvybp() {
	mv -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

mvubp() {
	mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

cpycr() {
	cp -- "$2" "$1"/
}

cpucr() {
	cp -- "$1"/"$2"
}

cpycp() {
	cp -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cpucp() {
	cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

cpyhr() {
	cp -- "$2" "$1"/
}

cpuhr() {
	cp -- "$1"/"$2"
}

cpyhp() {
	cp -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cpuhp() {
	cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

cpybr() {
	cp -- "$2" "$1"/
}

cpubr() {
	cp -- "$1"/"$2"
}

cpybp() {
	cp -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cpubp() {
	cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

cprycr() {
	cp -r -- "$2" "$1"/
}

cprucr() {
	cp -r -- "$1"/"$2"
}

cprycp() {
	cp -r -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cprucp() {
	cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

cpryhr() {
	cp -r -- "$2" "$1"/
}

cpruhr() {
	cp -r -- "$1"/"$2"
}

cpryhp() {
	cp -r -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cpruhp() {
	cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

cprybr() {
	cp -r -- "$2" "$1"/
}

cprubr() {
	cp -r -- "$1"/"$2"
}

cprybp() {
	cp -r -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cprubp() {
	cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

mvyacr() {
	(
		cd "$1" || exit
		cwd=$(pwd)
		cd . || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mvyacp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cwd=$(pwd)
		cd . || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mvyahr() {
	(
		cd "$1" || exit
		cwd=$(pwd)
		cd ~ || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mvyahp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cwd=$(pwd)
		cd ~ || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mvyabr() {
	(
		cd "$1" || exit
		cwd=$(pwd)
		cd .. || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

mvyabp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cwd=$(pwd)
		cd .. || exit
		for f in *; do
			mv -- "$f" "$cwd"/
		done
	)
}

cpyacr() {
	(
		cd "$1" || exit
		cwd=$(pwd)
		cd . || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpyacp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cwd=$(pwd)
		cd . || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpyahr() {
	(
		cd "$1" || exit
		cwd=$(pwd)
		cd ~ || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpyahp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cwd=$(pwd)
		cd ~ || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpyabr() {
	(
		cd "$1" || exit
		cwd=$(pwd)
		cd .. || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

cpyabp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cwd=$(pwd)
		cd .. || exit
		for f in *; do
			cp -r -- "$f" "$cwd"/
		done
	)
}

rmp() {
	rm -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

rmrp() {
	rm -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

rmrfp() {
	rm -rf -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

mkdirp() {
	mkdir -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

mkdirpp() {
	mkdir -p -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

mvipt() {
	mvip "${PROOT_TERMUX:-termux}" "$1"
}

mvipu() {
	mvip "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvipd() {
	mvip "${PROOT_DEBIAN:-debian}" "$1"
}

mvipub() {
	mvip "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvipdb() {
	mvip "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvidpt() {
	mvidp "${PROOT_TERMUX:-termux}" "$1"
}

mvidpu() {
	mvidp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvidpd() {
	mvidp "${PROOT_DEBIAN:-debian}" "$1"
}

mvidpub() {
	mvidp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvidpdb() {
	mvidp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvispt() {
	mvisp "${PROOT_TERMUX:-termux}" "$1"
}

mvispu() {
	mvisp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvispd() {
	mvisp "${PROOT_DEBIAN:-debian}" "$1"
}

mvispub() {
	mvisp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvispdb() {
	mvisp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mviept() {
	mviep "${PROOT_TERMUX:-termux}" "$1"
}

mviepu() {
	mviep "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mviepd() {
	mviep "${PROOT_DEBIAN:-debian}" "$1"
}

mviepub() {
	mviep "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mviepdb() {
	mviep "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvopt() {
	mvop "${PROOT_TERMUX:-termux}" "$1"
}

mvopu() {
	mvop "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvopd() {
	mvop "${PROOT_DEBIAN:-debian}" "$1"
}

mvopub() {
	mvop "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvopdb() {
	mvop "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvodpt() {
	mvodp "${PROOT_TERMUX:-termux}" "$1"
}

mvodpu() {
	mvodp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvodpd() {
	mvodp "${PROOT_DEBIAN:-debian}" "$1"
}

mvodpub() {
	mvodp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvodpdb() {
	mvodp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvospt() {
	mvosp "${PROOT_TERMUX:-termux}" "$1"
}

mvospu() {
	mvosp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvospd() {
	mvosp "${PROOT_DEBIAN:-debian}" "$1"
}

mvospub() {
	mvosp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvospdb() {
	mvosp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvoept() {
	mvoep "${PROOT_TERMUX:-termux}" "$1"
}

mvoepu() {
	mvoep "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvoepd() {
	mvoep "${PROOT_DEBIAN:-debian}" "$1"
}

mvoepub() {
	mvoep "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvoepdb() {
	mvoep "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpipt() {
	cpip "${PROOT_TERMUX:-termux}" "$1"
}

cpipu() {
	cpip "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpipd() {
	cpip "${PROOT_DEBIAN:-debian}" "$1"
}

cpipub() {
	cpip "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpipdb() {
	cpip "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpidpt() {
	cpidp "${PROOT_TERMUX:-termux}" "$1"
}

cpidpu() {
	cpidp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpidpd() {
	cpidp "${PROOT_DEBIAN:-debian}" "$1"
}

cpidpub() {
	cpidp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpidpdb() {
	cpidp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpispt() {
	cpisp "${PROOT_TERMUX:-termux}" "$1"
}

cpispu() {
	cpisp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpispd() {
	cpisp "${PROOT_DEBIAN:-debian}" "$1"
}

cpispub() {
	cpisp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpispdb() {
	cpisp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpiept() {
	cpiep "${PROOT_TERMUX:-termux}" "$1"
}

cpiepu() {
	cpiep "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpiepd() {
	cpiep "${PROOT_DEBIAN:-debian}" "$1"
}

cpiepub() {
	cpiep "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpiepdb() {
	cpiep "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpopt() {
	cpop "${PROOT_TERMUX:-termux}" "$1"
}

cpopu() {
	cpop "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpopd() {
	cpop "${PROOT_DEBIAN:-debian}" "$1"
}

cpopub() {
	cpop "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpopdb() {
	cpop "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpodpt() {
	cpodp "${PROOT_TERMUX:-termux}" "$1"
}

cpodpu() {
	cpodp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpodpd() {
	cpodp "${PROOT_DEBIAN:-debian}" "$1"
}

cpodpub() {
	cpodp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpodpdb() {
	cpodp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpospt() {
	cposp "${PROOT_TERMUX:-termux}" "$1"
}

cpospu() {
	cposp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpospd() {
	cposp "${PROOT_DEBIAN:-debian}" "$1"
}

cpospub() {
	cposp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpospdb() {
	cposp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpoept() {
	cpoep "${PROOT_TERMUX:-termux}" "$1"
}

cpoepu() {
	cpoep "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpoepd() {
	cpoep "${PROOT_DEBIAN:-debian}" "$1"
}

cpoepub() {
	cpoep "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpoepdb() {
	cpoep "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpript() {
	cprip "${PROOT_TERMUX:-termux}" "$1"
}

cpripu() {
	cprip "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpripd() {
	cprip "${PROOT_DEBIAN:-debian}" "$1"
}

cpripub() {
	cprip "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpripdb() {
	cprip "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpridpt() {
	cpridp "${PROOT_TERMUX:-termux}" "$1"
}

cpridpu() {
	cpridp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpridpd() {
	cpridp "${PROOT_DEBIAN:-debian}" "$1"
}

cpridpub() {
	cpridp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpridpdb() {
	cpridp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cprispt() {
	cprisp "${PROOT_TERMUX:-termux}" "$1"
}

cprispu() {
	cprisp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cprispd() {
	cprisp "${PROOT_DEBIAN:-debian}" "$1"
}

cprispub() {
	cprisp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cprispdb() {
	cprisp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpriept() {
	cpriep "${PROOT_TERMUX:-termux}" "$1"
}

cpriepu() {
	cpriep "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpriepd() {
	cpriep "${PROOT_DEBIAN:-debian}" "$1"
}

cpriepub() {
	cpriep "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpriepdb() {
	cpriep "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpropt() {
	cprop "${PROOT_TERMUX:-termux}" "$1"
}

cpropu() {
	cprop "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpropd() {
	cprop "${PROOT_DEBIAN:-debian}" "$1"
}

cpropub() {
	cprop "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpropdb() {
	cprop "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cprodpt() {
	cprodp "${PROOT_TERMUX:-termux}" "$1"
}

cprodpu() {
	cprodp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cprodpd() {
	cprodp "${PROOT_DEBIAN:-debian}" "$1"
}

cprodpub() {
	cprodp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cprodpdb() {
	cprodp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cprospt() {
	cprosp "${PROOT_TERMUX:-termux}" "$1"
}

cprospu() {
	cprosp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cprospd() {
	cprosp "${PROOT_DEBIAN:-debian}" "$1"
}

cprospub() {
	cprosp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cprospdb() {
	cprosp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cproept() {
	cproep "${PROOT_TERMUX:-termux}" "$1"
}

cproepu() {
	cproep "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cproepd() {
	cproep "${PROOT_DEBIAN:-debian}" "$1"
}

cproepub() {
	cproep "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cproepdb() {
	cproep "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mviapt() {
	mviap "${PROOT_TERMUX:-termux}" "$1"
}

mviapu() {
	mviap "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mviapd() {
	mviap "${PROOT_DEBIAN:-debian}" "$1"
}

mviapub() {
	mviap "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mviapdb() {
	mviap "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mviadpt() {
	mviadp "${PROOT_TERMUX:-termux}" "$1"
}

mviadpu() {
	mviadp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mviadpd() {
	mviadp "${PROOT_DEBIAN:-debian}" "$1"
}

mviadpub() {
	mviadp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mviadpdb() {
	mviadp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mviaspt() {
	mviasp "${PROOT_TERMUX:-termux}" "$1"
}

mviaspu() {
	mviasp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mviaspd() {
	mviasp "${PROOT_DEBIAN:-debian}" "$1"
}

mviaspub() {
	mviasp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mviaspdb() {
	mviasp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mviaept() {
	mviaep "${PROOT_TERMUX:-termux}" "$1"
}

mviaepu() {
	mviaep "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mviaepd() {
	mviaep "${PROOT_DEBIAN:-debian}" "$1"
}

mviaepub() {
	mviaep "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mviaepdb() {
	mviaep "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpiapt() {
	cpiap "${PROOT_TERMUX:-termux}" "$1"
}

cpiapu() {
	cpiap "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpiapd() {
	cpiap "${PROOT_DEBIAN:-debian}" "$1"
}

cpiapub() {
	cpiap "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpiapdb() {
	cpiap "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpiadpt() {
	cpiadp "${PROOT_TERMUX:-termux}" "$1"
}

cpiadpu() {
	cpiadp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpiadpd() {
	cpiadp "${PROOT_DEBIAN:-debian}" "$1"
}

cpiadpub() {
	cpiadp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpiadpdb() {
	cpiadp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpiaspt() {
	cpiasp "${PROOT_TERMUX:-termux}" "$1"
}

cpiaspu() {
	cpiasp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpiaspd() {
	cpiasp "${PROOT_DEBIAN:-debian}" "$1"
}

cpiaspub() {
	cpiasp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpiaspdb() {
	cpiasp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpiaept() {
	cpiaep "${PROOT_TERMUX:-termux}" "$1"
}

cpiaepu() {
	cpiaep "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpiaepd() {
	cpiaep "${PROOT_DEBIAN:-debian}" "$1"
}

cpiaepub() {
	cpiaep "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpiaepdb() {
	cpiaep "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvaipt() {
	mvaip "${PROOT_TERMUX:-termux}" "$1"
}

mvaipu() {
	mvaip "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvaipd() {
	mvaip "${PROOT_DEBIAN:-debian}" "$1"
}

mvaipub() {
	mvaip "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvaipdb() {
	mvaip "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvaidpt() {
	mvaidp "${PROOT_TERMUX:-termux}" "$1"
}

mvaidpu() {
	mvaidp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvaidpd() {
	mvaidp "${PROOT_DEBIAN:-debian}" "$1"
}

mvaidpub() {
	mvaidp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvaidpdb() {
	mvaidp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvaispt() {
	mvaisp "${PROOT_TERMUX:-termux}" "$1"
}

mvaispu() {
	mvaisp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvaispd() {
	mvaisp "${PROOT_DEBIAN:-debian}" "$1"
}

mvaispub() {
	mvaisp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvaispdb() {
	mvaisp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvaiept() {
	mvaiep "${PROOT_TERMUX:-termux}" "$1"
}

mvaiepu() {
	mvaiep "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvaiepd() {
	mvaiep "${PROOT_DEBIAN:-debian}" "$1"
}

mvaiepub() {
	mvaiep "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvaiepdb() {
	mvaiep "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpaipt() {
	cpaip "${PROOT_TERMUX:-termux}" "$1"
}

cpaipu() {
	cpaip "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpaipd() {
	cpaip "${PROOT_DEBIAN:-debian}" "$1"
}

cpaipub() {
	cpaip "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpaipdb() {
	cpaip "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpaidpt() {
	cpaidp "${PROOT_TERMUX:-termux}" "$1"
}

cpaidpu() {
	cpaidp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpaidpd() {
	cpaidp "${PROOT_DEBIAN:-debian}" "$1"
}

cpaidpub() {
	cpaidp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpaidpdb() {
	cpaidp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpaispt() {
	cpaisp "${PROOT_TERMUX:-termux}" "$1"
}

cpaispu() {
	cpaisp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpaispd() {
	cpaisp "${PROOT_DEBIAN:-debian}" "$1"
}

cpaispub() {
	cpaisp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpaispdb() {
	cpaisp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpaiept() {
	cpaiep "${PROOT_TERMUX:-termux}" "$1"
}

cpaiepu() {
	cpaiep "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpaiepd() {
	cpaiep "${PROOT_DEBIAN:-debian}" "$1"
}

cpaiepub() {
	cpaiep "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpaiepdb() {
	cpaiep "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

rmpt() {
	rmp "${PROOT_TERMUX:-termux}" "$1"
}

rmpu() {
	rmp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

rmpd() {
	rmp "${PROOT_DEBIAN:-debian}" "$1"
}

rmpub() {
	rmp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

rmpdb() {
	rmp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

rmrpt() {
	rmrp "${PROOT_TERMUX:-termux}" "$1"
}

rmrpu() {
	rmrp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

rmrpd() {
	rmrp "${PROOT_DEBIAN:-debian}" "$1"
}

rmrpub() {
	rmrp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

rmrpdb() {
	rmrp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

rmrfpt() {
	rmrfp "${PROOT_TERMUX:-termux}" "$1"
}

rmrfpu() {
	rmrfp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

rmrfpd() {
	rmrfp "${PROOT_DEBIAN:-debian}" "$1"
}

rmrfpub() {
	rmrfp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

rmrfpdb() {
	rmrfp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mkdirpt() {
	mkdirp "${PROOT_TERMUX:-termux}" "$1"
}

mkdirpu() {
	mkdirp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mkdirpd() {
	mkdirp "${PROOT_DEBIAN:-debian}" "$1"
}

mkdirpub() {
	mkdirp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mkdirpdb() {
	mkdirp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mkdirppt() {
	mkdirpp "${PROOT_TERMUX:-termux}" "$1"
}

mkdirppu() {
	mkdirpp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mkdirppd() {
	mkdirpp "${PROOT_DEBIAN:-debian}" "$1"
}

mkdirppub() {
	mkdirpp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mkdirppdb() {
	mkdirpp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvypt() {
	mvycp "${PROOT_TERMUX:-termux}" "$1"
}

mvypu() {
	mvycp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvypd() {
	mvycp "${PROOT_DEBIAN:-debian}" "$1"
}

mvypub() {
	mvycp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvypdb() {
	mvycp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvydpt() {
	mvyhp "${PROOT_TERMUX:-termux}" "$1"
}

mvydpu() {
	mvyhp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvydpd() {
	mvyhp "${PROOT_DEBIAN:-debian}" "$1"
}

mvydpub() {
	mvyhp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvydpdb() {
	mvyhp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvyspt() {
	mvybp "${PROOT_TERMUX:-termux}" "$1"
}

mvyspu() {
	mvybp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvyspd() {
	mvybp "${PROOT_DEBIAN:-debian}" "$1"
}

mvyspub() {
	mvybp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvyspdb() {
	mvybp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvupt() {
	mvucp "${PROOT_TERMUX:-termux}" "$1"
}

mvupu() {
	mvucp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvupd() {
	mvucp "${PROOT_DEBIAN:-debian}" "$1"
}

mvupub() {
	mvucp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvupdb() {
	mvucp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvudpt() {
	mvuhp "${PROOT_TERMUX:-termux}" "$1"
}

mvudpu() {
	mvuhp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvudpd() {
	mvuhp "${PROOT_DEBIAN:-debian}" "$1"
}

mvudpub() {
	mvuhp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvudpdb() {
	mvuhp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvuspt() {
	mvubp "${PROOT_TERMUX:-termux}" "$1"
}

mvuspu() {
	mvubp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvuspd() {
	mvubp "${PROOT_DEBIAN:-debian}" "$1"
}

mvuspub() {
	mvubp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvuspdb() {
	mvubp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpypt() {
	cpycp "${PROOT_TERMUX:-termux}" "$1"
}

cpypu() {
	cpycp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpypd() {
	cpycp "${PROOT_DEBIAN:-debian}" "$1"
}

cpypub() {
	cpycp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpypdb() {
	cpycp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpydpt() {
	cpyhp "${PROOT_TERMUX:-termux}" "$1"
}

cpydpu() {
	cpyhp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpydpd() {
	cpyhp "${PROOT_DEBIAN:-debian}" "$1"
}

cpydpub() {
	cpyhp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpydpdb() {
	cpyhp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpyspt() {
	cpybp "${PROOT_TERMUX:-termux}" "$1"
}

cpyspu() {
	cpybp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpyspd() {
	cpybp "${PROOT_DEBIAN:-debian}" "$1"
}

cpyspub() {
	cpybp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpyspdb() {
	cpybp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpupt() {
	cpucp "${PROOT_TERMUX:-termux}" "$1"
}

cpupu() {
	cpucp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpupd() {
	cpucp "${PROOT_DEBIAN:-debian}" "$1"
}

cpupub() {
	cpucp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpupdb() {
	cpucp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpudpt() {
	cpuhp "${PROOT_TERMUX:-termux}" "$1"
}

cpudpu() {
	cpuhp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpudpd() {
	cpuhp "${PROOT_DEBIAN:-debian}" "$1"
}

cpudpub() {
	cpuhp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpudpdb() {
	cpuhp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpuspt() {
	cpubp "${PROOT_TERMUX:-termux}" "$1"
}

cpuspu() {
	cpubp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpuspd() {
	cpubp "${PROOT_DEBIAN:-debian}" "$1"
}

cpuspub() {
	cpubp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpuspdb() {
	cpubp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cprypt() {
	cprycp "${PROOT_TERMUX:-termux}" "$1"
}

cprypu() {
	cprycp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cprypd() {
	cprycp "${PROOT_DEBIAN:-debian}" "$1"
}

cprypub() {
	cprycp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cprypdb() {
	cprycp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cprydpt() {
	cpryhp "${PROOT_TERMUX:-termux}" "$1"
}

cprydpu() {
	cpryhp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cprydpd() {
	cpryhp "${PROOT_DEBIAN:-debian}" "$1"
}

cprydpub() {
	cpryhp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cprydpdb() {
	cpryhp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpryspt() {
	cprybp "${PROOT_TERMUX:-termux}" "$1"
}

cpryspu() {
	cprybp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpryspd() {
	cprybp "${PROOT_DEBIAN:-debian}" "$1"
}

cpryspub() {
	cprybp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpryspdb() {
	cprybp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cprupt() {
	cprucp "${PROOT_TERMUX:-termux}" "$1"
}

cprupu() {
	cprucp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cprupd() {
	cprucp "${PROOT_DEBIAN:-debian}" "$1"
}

cprupub() {
	cprucp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cprupdb() {
	cprucp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cprudpt() {
	cpruhp "${PROOT_TERMUX:-termux}" "$1"
}

cprudpu() {
	cpruhp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cprudpd() {
	cpruhp "${PROOT_DEBIAN:-debian}" "$1"
}

cprudpub() {
	cpruhp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cprudpdb() {
	cpruhp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpruspt() {
	cprubp "${PROOT_TERMUX:-termux}" "$1"
}

cpruspu() {
	cprubp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpruspd() {
	cprubp "${PROOT_DEBIAN:-debian}" "$1"
}

cpruspub() {
	cprubp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpruspdb() {
	cprubp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvyapt() {
	mvyacp "${PROOT_TERMUX:-termux}" "$1"
}

mvyapu() {
	mvyacp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvyapd() {
	mvyacp "${PROOT_DEBIAN:-debian}" "$1"
}

mvyapub() {
	mvyacp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvyapdb() {
	mvyacp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvyadpt() {
	mvyahp "${PROOT_TERMUX:-termux}" "$1"
}

mvyadpu() {
	mvyahp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvyadpd() {
	mvyahp "${PROOT_DEBIAN:-debian}" "$1"
}

mvyadpub() {
	mvyahp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvyadpdb() {
	mvyahp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvyaspt() {
	mvyabp "${PROOT_TERMUX:-termux}" "$1"
}

mvyaspu() {
	mvyabp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvyaspd() {
	mvyabp "${PROOT_DEBIAN:-debian}" "$1"
}

mvyaspub() {
	mvyabp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvyaspdb() {
	mvyabp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpyapt() {
	cpyacp "${PROOT_TERMUX:-termux}" "$1"
}

cpyapu() {
	cpyacp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpyapd() {
	cpyacp "${PROOT_DEBIAN:-debian}" "$1"
}

cpyapub() {
	cpyacp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpyapdb() {
	cpyacp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpyadpt() {
	cpyahp "${PROOT_TERMUX:-termux}" "$1"
}

cpyadpu() {
	cpyahp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpyadpd() {
	cpyahp "${PROOT_DEBIAN:-debian}" "$1"
}

cpyadpub() {
	cpyahp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpyadpdb() {
	cpyahp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpyaspt() {
	cpyabp "${PROOT_TERMUX:-termux}" "$1"
}

cpyaspu() {
	cpyabp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpyaspd() {
	cpyabp "${PROOT_DEBIAN:-debian}" "$1"
}

cpyaspub() {
	cpyabp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpyaspdb() {
	cpyabp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvaypt() {
	mvaycp "${PROOT_TERMUX:-termux}" "$1"
}

mvaypu() {
	mvaycp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvaypd() {
	mvaycp "${PROOT_DEBIAN:-debian}" "$1"
}

mvaypub() {
	mvaycp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvaypdb() {
	mvaycp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvaydpt() {
	mvayhp "${PROOT_TERMUX:-termux}" "$1"
}

mvaydpu() {
	mvayhp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvaydpd() {
	mvayhp "${PROOT_DEBIAN:-debian}" "$1"
}

mvaydpub() {
	mvayhp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvaydpdb() {
	mvayhp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

mvayspt() {
	mvaybp "${PROOT_TERMUX:-termux}" "$1"
}

mvayspu() {
	mvaybp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

mvayspd() {
	mvaybp "${PROOT_DEBIAN:-debian}" "$1"
}

mvayspub() {
	mvaybp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

mvayspdb() {
	mvaybp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpaypt() {
	cpaycp "${PROOT_TERMUX:-termux}" "$1"
}

cpaypu() {
	cpaycp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpaypd() {
	cpaycp "${PROOT_DEBIAN:-debian}" "$1"
}

cpaypub() {
	cpaycp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpaypdb() {
	cpaycp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpaydpt() {
	cpayhp "${PROOT_TERMUX:-termux}" "$1"
}

cpaydpu() {
	cpayhp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpaydpd() {
	cpayhp "${PROOT_DEBIAN:-debian}" "$1"
}

cpaydpub() {
	cpayhp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpaydpdb() {
	cpayhp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

cpayspt() {
	cpaybp "${PROOT_TERMUX:-termux}" "$1"
}

cpayspu() {
	cpaybp "${PROOT_UBUNTU:-ubuntu}" "$1"
}

cpayspd() {
	cpaybp "${PROOT_DEBIAN:-debian}" "$1"
}

cpayspub() {
	cpaybp "${PROOT_UBUNTUBOX:-ubuntubox}" "$1"
}

cpayspdb() {
	cpaybp "${PROOT_DEBIANBOX:-debianbox}" "$1"
}

pdct() {
	cd "/data/data/com.termux/files/usr/var/lib/proot-distro/containers/${PROOT_TERMUX:-termux}/rootfs/root" || return
}

pdcu() {
	cd "/data/data/com.termux/files/usr/var/lib/proot-distro/containers/${PROOT_UBUNTU:-ubuntu}/rootfs/root" || return
}

pdcd() {
	cd "/data/data/com.termux/files/usr/var/lib/proot-distro/containers/${PROOT_DEBIAN:-debian}/rootfs/root" || return
}

pdcub() {
	cd "/data/data/com.termux/files/usr/var/lib/proot-distro/containers/${PROOT_UBUNTUBOX:-ubuntubox}/rootfs/root" || return
}

pdcdb() {
	cd "/data/data/com.termux/files/usr/var/lib/proot-distro/containers/${PROOT_DEBIANBOX:-debianbox}/rootfs/root" || return
}

mvagcp() {
	mvaic "$1"
	gacp "$2"
}

cpagcp() {
	cpaic "$1"
	gacp "$2"
}

mvigcp() {
	mvic "$1"
	gacp "$2"
}

cpigcp() {
	cpric "$1"
	gacp "$2"
}

mviagcp() {
	mviac
	gacp "$1"
}

cpiagcp() {
	cpiac "*"
	gacp "$1"
}

mvagcdp() {
	mvaic "$1"
	gacdp "$2"
}

cpagcdp() {
	cpaic "$1"
	gacdp "$2"
}

mvigcdp() {
	mvic "$1"
	gacdp "$2"
}

cpigcdp() {
	cpric "$1"
	gacdp "$2"
}

mviagcdp() {
	mviac
	gacdp "$1"
}

cpiagcdp() {
	cpiac "*"
	gacdp "$1"
}

mvadgcp() {
	mvadic "$1"
	gacp "$2"
}

cpadgcp() {
	cpadic "$1"
	gacp "$2"
}

mvidgcp() {
	mvidc "$1"
	gacp "$2"
}

cpidgcp() {
	cpridc "$1"
	gacp "$2"
}

mviadgcp() {
	mviadc
	gacp "$1"
}

cpiadgcp() {
	cpiadc "*"
	gacp "$1"
}

mvadgcdp() {
	mvadic "$1"
	gacdp "$2"
}

cpadgcdp() {
	cpadic "$1"
	gacdp "$2"
}

mvidgcdp() {
	mvidc "$1"
	gacdp "$2"
}

cpidgcdp() {
	cpridc "$1"
	gacdp "$2"
}

mviadgcdp() {
	mviadc
	gacdp "$1"
}

cpiadgcdp() {
	cpiadc "*"
	gacdp "$1"
}

mvasgcp() {
	mvasic "$1"
	gacp "$2"
}

cpasgcp() {
	cpasic "$1"
	gacp "$2"
}

mvisgcp() {
	mvisc "$1"
	gacp "$2"
}

cpisgcp() {
	cprisc "$1"
	gacp "$2"
}

mviasgcp() {
	mviasc
	gacp "$1"
}

cpiasgcp() {
	cpiasc "*"
	gacp "$1"
}

mvasgcdp() {
	mvasic "$1"
	gacdp "$2"
}

cpasgcdp() {
	cpasic "$1"
	gacdp "$2"
}

mvisgcdp() {
	mvisc "$1"
	gacdp "$2"
}

cpisgcdp() {
	cprisc "$1"
	gacdp "$2"
}

mviasgcdp() {
	mviasc
	gacdp "$1"
}

cpiasgcdp() {
	cpiasc "*"
	gacdp "$1"
}

mvaegcp() {
	mvaeic "$1"
	gacp "$2"
}

cpaegcp() {
	cpaeic "$1"
	gacp "$2"
}

mviegcp() {
	mviec "$1"
	gacp "$2"
}

cpiegcp() {
	cpriec "$1"
	gacp "$2"
}

mviaegcp() {
	mviaec
	gacp "$1"
}

cpiaegcp() {
	cpiaec "*"
	gacp "$1"
}

mvaegcdp() {
	mvaeic "$1"
	gacdp "$2"
}

cpaegcdp() {
	cpaeic "$1"
	gacdp "$2"
}

mviegcdp() {
	mviec "$1"
	gacdp "$2"
}

cpiegcdp() {
	cpriec "$1"
	gacdp "$2"
}

mviaegcdp() {
	mviaec
	gacdp "$1"
}

cpiaegcdp() {
	cpiaec "*"
	gacdp "$1"
}

scnnn() {
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio "$@"
}

scnna() {
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen "$@"
}

scnan() {
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio "$@"
}

scnaa() {
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen "$@"
}

scdnn() {
	export DISPLAY="$1"
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio "$@"
}

scdna() {
	export DISPLAY="$1"
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen "$@"
}

scdan() {
	export DISPLAY="$1"
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio "$@"
}

scdaa() {
	export DISPLAY="$1"
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen "$@"
}

scznn() {
	export DISPLAY=':0'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio "$@"
}

sczna() {
	export DISPLAY=':0'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen "$@"
}

sczan() {
	export DISPLAY=':0'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio "$@"
}

sczaa() {
	export DISPLAY=':0'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen "$@"
}

scfnn() {
	export DISPLAY=':1'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio "$@"
}

scfna() {
	export DISPLAY=':1'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen "$@"
}

scfan() {
	export DISPLAY=':1'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio "$@"
}

scfaa() {
	export DISPLAY=':1'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen "$@"
}

scnnnn() {
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display "$@"
}

scnnnsa() {
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display --start-app "$@"
}

scnnnlc() {
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display --start-app app.lawnchair "$@"
}

scnnan() {
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display "$@"
}

scnnasa() {
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display --start-app "$@"
}

scnnalc() {
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display --start-app app.lawnchair "$@"
}

scnann() {
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display "$@"
}

scnansa() {
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display --start-app "$@"
}

scnanlc() {
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display --start-app app.lawnchair "$@"
}

scnaan() {
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display "$@"
}

scnaasa() {
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display --start-app "$@"
}

scnaalc() {
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display --start-app app.lawnchair "$@"
}

scdnnn() {
	export DISPLAY="$1"
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display "$@"
}

scdnnsa() {
	export DISPLAY="$1"
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display --start-app "$@"
}

scdnnlc() {
	export DISPLAY="$1"
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display --start-app app.lawnchair "$@"
}

scdnan() {
	export DISPLAY="$1"
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display "$@"
}

scdnasa() {
	export DISPLAY="$1"
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display --start-app "$@"
}

scdnalc() {
	export DISPLAY="$1"
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display --start-app app.lawnchair "$@"
}

scdann() {
	export DISPLAY="$1"
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display "$@"
}

scdansa() {
	export DISPLAY="$1"
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display --start-app "$@"
}

scdanlc() {
	export DISPLAY="$1"
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display --start-app app.lawnchair "$@"
}

scdaan() {
	export DISPLAY="$1"
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display "$@"
}

scdaasa() {
	export DISPLAY="$1"
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display --start-app "$@"
}

scdaalc() {
	export DISPLAY="$1"
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display --start-app app.lawnchair "$@"
}

scznnn() {
	export DISPLAY=':0'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display "$@"
}

scznnsa() {
	export DISPLAY=':0'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display --start-app "$@"
}

scznnlc() {
	export DISPLAY=':0'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display --start-app app.lawnchair "$@"
}

scznan() {
	export DISPLAY=':0'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display "$@"
}

scznasa() {
	export DISPLAY=':0'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display --start-app "$@"
}

scznalc() {
	export DISPLAY=':0'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display --start-app app.lawnchair "$@"
}

sczann() {
	export DISPLAY=':0'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display "$@"
}

sczansa() {
	export DISPLAY=':0'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display --start-app "$@"
}

sczanlc() {
	export DISPLAY=':0'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display --start-app app.lawnchair "$@"
}

sczaan() {
	export DISPLAY=':0'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display "$@"
}

sczaasa() {
	export DISPLAY=':0'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display --start-app "$@"
}

sczaalc() {
	export DISPLAY=':0'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display --start-app app.lawnchair "$@"
}

scfnnn() {
	export DISPLAY=':1'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display "$@"
}

scfnnsa() {
	export DISPLAY=':1'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display --start-app "$@"
}

scfnnlc() {
	export DISPLAY=':1'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display --start-app app.lawnchair "$@"
}

scfnan() {
	export DISPLAY=':1'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display "$@"
}

scfnasa() {
	export DISPLAY=':1'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display --start-app "$@"
}

scfnalc() {
	export DISPLAY=':1'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display --start-app app.lawnchair "$@"
}

scfann() {
	export DISPLAY=':1'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display "$@"
}

scfansa() {
	export DISPLAY=':1'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display --start-app "$@"
}

scfanlc() {
	export DISPLAY=':1'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display --start-app app.lawnchair "$@"
}

scfaan() {
	export DISPLAY=':1'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display "$@"
}

scfaasa() {
	export DISPLAY=':1'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display --start-app "$@"
}

scfaalc() {
	export DISPLAY=':1'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display --start-app app.lawnchair "$@"
}
