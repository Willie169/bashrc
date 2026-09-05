#!/usr/bin/env bash
# shellcheck disable=2103

[[ "$HOME" != '/data/data/com.termux/files/home' ]] && [[ "${PREFIX:-}" != '/data/data/com.termux/files/usr' ]] && return

mvic() {
  for f in "$@"; do
    mv -- "$DOW"/"$f" ./
  done
}

mvoc() {
  for f in "$@"; do
    mv -- ./"$f" "$DOW"/
  done
}

mvih() {
  for f in "$@"; do
    mv -- "$DOW"/"$f" ~/
  done
}

mvoh() {
  for f in "$@"; do
    mv -- ~/"$f" "$DOW"/
  done
}

mvib() {
  for f in "$@"; do
    mv -- "$DOW"/"$f" ../
  done
}

mvob() {
  for f in "$@"; do
    mv -- ../"$f" "$DOW"/
  done
}

mvir() {
  for f in "${@:2}"; do
    mv -- "$DOW"/"$f" "$1"/
  done
}

mvor() {
  for f in "${@:2}"; do
    mv -- "$1"/"$2" "$DOW"/
  done
}

mvip() {
  for f in "${@:2}"; do
    mv -- "$DOW"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

mvop() {
  for f in "${@:2}"; do
    mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOW"/
  done
}

mvidc() {
  for f in "$@"; do
    mv -- "$DOC"/"$f" ./
  done
}

mvodc() {
  for f in "$@"; do
    mv -- ./"$f" "$DOC"/
  done
}

mvidh() {
  for f in "$@"; do
    mv -- "$DOC"/"$f" ~/
  done
}

mvodh() {
  for f in "$@"; do
    mv -- ~/"$f" "$DOC"/
  done
}

mvidb() {
  for f in "$@"; do
    mv -- "$DOC"/"$f" ../
  done
}

mvodb() {
  for f in "$@"; do
    mv -- ../"$f" "$DOC"/
  done
}

mvidr() {
  for f in "${@:2}"; do
    mv -- "$DOC"/"$f" "$1"/
  done
}

mvodr() {
  for f in "${@:2}"; do
    mv -- "$1"/"$2" "$DOC"/
  done
}

mvidp() {
  for f in "${@:2}"; do
    mv -- "$DOC"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

mvodp() {
  for f in "${@:2}"; do
    mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOC"/
  done
}

mvisc() {
  for f in "$@"; do
    mv -- "$SCR"/"$f" ./
  done
}

mvosc() {
  for f in "$@"; do
    mv -- ./"$f" "$SCR"/
  done
}

mvish() {
  for f in "$@"; do
    mv -- "$SCR"/"$f" ~/
  done
}

mvosh() {
  for f in "$@"; do
    mv -- ~/"$f" "$SCR"/
  done
}

mvisb() {
  for f in "$@"; do
    mv -- "$SCR"/"$f" ../
  done
}

mvosb() {
  for f in "$@"; do
    mv -- ../"$f" "$SCR"/
  done
}

mvisr() {
  for f in "${@:2}"; do
    mv -- "$SCR"/"$f" "$1"/
  done
}

mvosr() {
  for f in "${@:2}"; do
    mv -- "$1"/"$2" "$SCR"/
  done
}

mvisp() {
  for f in "${@:2}"; do
    mv -- "$SCR"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

mvosp() {
  for f in "${@:2}"; do
    mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$SCR"/
  done
}

mviec() {
  for f in "$@"; do
    mv -- "$EMU"/"$f" ./
  done
}

mvoec() {
  for f in "$@"; do
    mv -- ./"$f" "$EMU"/
  done
}

mvieh() {
  for f in "$@"; do
    mv -- "$EMU"/"$f" ~/
  done
}

mvoeh() {
  for f in "$@"; do
    mv -- ~/"$f" "$EMU"/
  done
}

mvieb() {
  for f in "$@"; do
    mv -- "$EMU"/"$f" ../
  done
}

mvoeb() {
  for f in "$@"; do
    mv -- ../"$f" "$EMU"/
  done
}

mvier() {
  for f in "${@:2}"; do
    mv -- "$EMU"/"$f" "$1"/
  done
}

mvoer() {
  for f in "${@:2}"; do
    mv -- "$1"/"$2" "$EMU"/
  done
}

mviep() {
  for f in "${@:2}"; do
    mv -- "$EMU"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

mvoep() {
  for f in "${@:2}"; do
    mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$EMU"/
  done
}

cpic() {
  for f in "$@"; do
    cp -- "$DOW"/"$f" ./
  done
}

cpoc() {
  for f in "$@"; do
    cp -- ./"$f" "$DOW"/
  done
}

cpih() {
  for f in "$@"; do
    cp -- "$DOW"/"$f" ~/
  done
}

cpoh() {
  for f in "$@"; do
    cp -- ~/"$f" "$DOW"/
  done
}

cpib() {
  for f in "$@"; do
    cp -- "$DOW"/"$f" ../
  done
}

cpob() {
  for f in "$@"; do
    cp -- ../"$f" "$DOW"/
  done
}

cpir() {
  for f in "${@:2}"; do
    cp -- "$DOW"/"$f" "$1"/
  done
}

cpor() {
  for f in "${@:2}"; do
    cp -- "$1"/"$2" "$DOW"/
  done
}

cpip() {
  for f in "${@:2}"; do
    cp -- "$DOW"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

cpop() {
  for f in "${@:2}"; do
    cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOW"/
  done
}

cpidc() {
  for f in "$@"; do
    cp -- "$DOC"/"$f" ./
  done
}

cpodc() {
  for f in "$@"; do
    cp -- ./"$f" "$DOC"/
  done
}

cpidh() {
  for f in "$@"; do
    cp -- "$DOC"/"$f" ~/
  done
}

cpodh() {
  for f in "$@"; do
    cp -- ~/"$f" "$DOC"/
  done
}

cpidb() {
  for f in "$@"; do
    cp -- "$DOC"/"$f" ../
  done
}

cpodb() {
  for f in "$@"; do
    cp -- ../"$f" "$DOC"/
  done
}

cpidr() {
  for f in "${@:2}"; do
    cp -- "$DOC"/"$f" "$1"/
  done
}

cpodr() {
  for f in "${@:2}"; do
    cp -- "$1"/"$2" "$DOC"/
  done
}

cpidp() {
  for f in "${@:2}"; do
    cp -- "$DOC"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

cpodp() {
  for f in "${@:2}"; do
    cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOC"/
  done
}

cpisc() {
  for f in "$@"; do
    cp -- "$SCR"/"$f" ./
  done
}

cposc() {
  for f in "$@"; do
    cp -- ./"$f" "$SCR"/
  done
}

cpish() {
  for f in "$@"; do
    cp -- "$SCR"/"$f" ~/
  done
}

cposh() {
  for f in "$@"; do
    cp -- ~/"$f" "$SCR"/
  done
}

cpisb() {
  for f in "$@"; do
    cp -- "$SCR"/"$f" ../
  done
}

cposb() {
  for f in "$@"; do
    cp -- ../"$f" "$SCR"/
  done
}

cpisr() {
  for f in "${@:2}"; do
    cp -- "$SCR"/"$f" "$1"/
  done
}

cposr() {
  for f in "${@:2}"; do
    cp -- "$1"/"$2" "$SCR"/
  done
}

cpisp() {
  for f in "${@:2}"; do
    cp -- "$SCR"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

cposp() {
  for f in "${@:2}"; do
    cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$SCR"/
  done
}

cpiec() {
  for f in "$@"; do
    cp -- "$EMU"/"$f" ./
  done
}

cpoec() {
  for f in "$@"; do
    cp -- ./"$f" "$EMU"/
  done
}

cpieh() {
  for f in "$@"; do
    cp -- "$EMU"/"$f" ~/
  done
}

cpoeh() {
  for f in "$@"; do
    cp -- ~/"$f" "$EMU"/
  done
}

cpieb() {
  for f in "$@"; do
    cp -- "$EMU"/"$f" ../
  done
}

cpoeb() {
  for f in "$@"; do
    cp -- ../"$f" "$EMU"/
  done
}

cpier() {
  for f in "${@:2}"; do
    cp -- "$EMU"/"$f" "$1"/
  done
}

cpoer() {
  for f in "${@:2}"; do
    cp -- "$1"/"$2" "$EMU"/
  done
}

cpiep() {
  for f in "${@:2}"; do
    cp -- "$EMU"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

cpoep() {
  for f in "${@:2}"; do
    cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$EMU"/
  done
}

cpric() {
  for f in "$@"; do
    cp -r -- "$DOW"/"$f" ./
  done
}

cproc() {
  for f in "$@"; do
    cp -r -- ./"$f" "$DOW"/
  done
}

cprih() {
  for f in "$@"; do
    cp -r -- "$DOW"/"$f" ~/
  done
}

cproh() {
  for f in "$@"; do
    cp -r -- ~/"$f" "$DOW"/
  done
}

cprib() {
  for f in "$@"; do
    cp -r -- "$DOW"/"$f" ../
  done
}

cprob() {
  for f in "$@"; do
    cp -r -- ../"$f" "$DOW"/
  done
}

cprir() {
  for f in "${@:2}"; do
    cp -r -- "$DOW"/"$f" "$1"/
  done
}

cpror() {
  for f in "${@:2}"; do
    cp -r -- "$1"/"$2" "$DOW"/
  done
}

cprip() {
  for f in "${@:2}"; do
    cp -r -- "$DOW"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

cprop() {
  for f in "${@:2}"; do
    cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOW"/
  done
}

cpridc() {
  for f in "$@"; do
    cp -r -- "$DOC"/"$f" ./
  done
}

cprodc() {
  for f in "$@"; do
    cp -r -- ./"$f" "$DOC"/
  done
}

cpridh() {
  for f in "$@"; do
    cp -r -- "$DOC"/"$f" ~/
  done
}

cprodh() {
  for f in "$@"; do
    cp -r -- ~/"$f" "$DOC"/
  done
}

cpridb() {
  for f in "$@"; do
    cp -r -- "$DOC"/"$f" ../
  done
}

cprodb() {
  for f in "$@"; do
    cp -r -- ../"$f" "$DOC"/
  done
}

cpridr() {
  for f in "${@:2}"; do
    cp -r -- "$DOC"/"$f" "$1"/
  done
}

cprodr() {
  for f in "${@:2}"; do
    cp -r -- "$1"/"$2" "$DOC"/
  done
}

cpridp() {
  for f in "${@:2}"; do
    cp -r -- "$DOC"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

cprodp() {
  for f in "${@:2}"; do
    cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOC"/
  done
}

cprisc() {
  for f in "$@"; do
    cp -r -- "$SCR"/"$f" ./
  done
}

cprosc() {
  for f in "$@"; do
    cp -r -- ./"$f" "$SCR"/
  done
}

cprish() {
  for f in "$@"; do
    cp -r -- "$SCR"/"$f" ~/
  done
}

cprosh() {
  for f in "$@"; do
    cp -r -- ~/"$f" "$SCR"/
  done
}

cprisb() {
  for f in "$@"; do
    cp -r -- "$SCR"/"$f" ../
  done
}

cprosb() {
  for f in "$@"; do
    cp -r -- ../"$f" "$SCR"/
  done
}

cprisr() {
  for f in "${@:2}"; do
    cp -r -- "$SCR"/"$f" "$1"/
  done
}

cprosr() {
  for f in "${@:2}"; do
    cp -r -- "$1"/"$2" "$SCR"/
  done
}

cprisp() {
  for f in "${@:2}"; do
    cp -r -- "$SCR"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

cprosp() {
  for f in "${@:2}"; do
    cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$SCR"/
  done
}

cpriec() {
  for f in "$@"; do
    cp -r -- "$EMU"/"$f" ./
  done
}

cproec() {
  for f in "$@"; do
    cp -r -- ./"$f" "$EMU"/
  done
}

cprieh() {
  for f in "$@"; do
    cp -r -- "$EMU"/"$f" ~/
  done
}

cproeh() {
  for f in "$@"; do
    cp -r -- ~/"$f" "$EMU"/
  done
}

cprieb() {
  for f in "$@"; do
    cp -r -- "$EMU"/"$f" ../
  done
}

cproeb() {
  for f in "$@"; do
    cp -r -- ../"$f" "$EMU"/
  done
}

cprier() {
  for f in "${@:2}"; do
    cp -r -- "$EMU"/"$f" "$1"/
  done
}

cproer() {
  for f in "${@:2}"; do
    cp -r -- "$1"/"$2" "$EMU"/
  done
}

cpriep() {
  for f in "${@:2}"; do
    cp -r -- "$EMU"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

cproep() {
  for f in "${@:2}"; do
    cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$EMU"/
  done
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

mvagc() {
  mvaic "$1"
  gac "$2"
}

cpagc() {
  cpaic "$1"
  gac "$2"
}

mvigc() {
  mvic "$1"
  gac "$2"
}

cpigc() {
  cpric "$1"
  gac "$2"
}

mviagc() {
  mviac
  gac "$1"
}

cpiagc() {
  cpiac "*"
  gac "$1"
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

mvagcd() {
  mvaic "$1"
  gacd
}

cpagcd() {
  cpaic "$1"
  gacd
}

mvigcd() {
  mvic "$1"
  gacd
}

cpigcd() {
  cpric "$1"
  gacd
}

mviagcd() {
  mviac
  gacd
}

cpiagcd() {
  cpiac "*"
  gacd
}

mvagcdp() {
  mvaic "$1"
  gacdp
}

cpagcdp() {
  cpaic "$1"
  gacdp
}

mvigcdp() {
  mvic "$1"
  gacdp
}

cpigcdp() {
  cpric "$1"
  gacdp
}

mviagcdp() {
  mviac
  gacdp
}

cpiagcdp() {
  cpiac "*"
  gacdp
}

mvadgc() {
  mvadic "$1"
  gac "$2"
}

cpadgc() {
  cpadic "$1"
  gac "$2"
}

mvidgc() {
  mvidc "$1"
  gac "$2"
}

cpidgc() {
  cpridc "$1"
  gac "$2"
}

mviadgc() {
  mviadc
  gac "$1"
}

cpiadgc() {
  cpiadc "*"
  gac "$1"
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

mvadgcd() {
  mvadic "$1"
  gacd
}

cpadgcd() {
  cpadic "$1"
  gacd
}

mvidgcd() {
  mvidc "$1"
  gacd
}

cpidgcd() {
  cpridc "$1"
  gacd
}

mviadgcd() {
  mviadc
  gacd
}

cpiadgcd() {
  cpiadc "*"
  gacd
}

mvadgcdp() {
  mvadic "$1"
  gacdp
}

cpadgcdp() {
  cpadic "$1"
  gacdp
}

mvidgcdp() {
  mvidc "$1"
  gacdp
}

cpidgcdp() {
  cpridc "$1"
  gacdp
}

mviadgcdp() {
  mviadc
  gacdp
}

cpiadgcdp() {
  cpiadc "*"
  gacdp
}

mvasgc() {
  mvasic "$1"
  gac "$2"
}

cpasgc() {
  cpasic "$1"
  gac "$2"
}

mvisgc() {
  mvisc "$1"
  gac "$2"
}

cpisgc() {
  cprisc "$1"
  gac "$2"
}

mviasgc() {
  mviasc
  gac "$1"
}

cpiasgc() {
  cpiasc "*"
  gac "$1"
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

mvasgcd() {
  mvasic "$1"
  gacd
}

cpasgcd() {
  cpasic "$1"
  gacd
}

mvisgcd() {
  mvisc "$1"
  gacd
}

cpisgcd() {
  cprisc "$1"
  gacd
}

mviasgcd() {
  mviasc
  gacd
}

cpiasgcd() {
  cpiasc "*"
  gacd
}

mvasgcdp() {
  mvasic "$1"
  gacdp
}

cpasgcdp() {
  cpasic "$1"
  gacdp
}

mvisgcdp() {
  mvisc "$1"
  gacdp
}

cpisgcdp() {
  cprisc "$1"
  gacdp
}

mviasgcdp() {
  mviasc
  gacdp
}

cpiasgcdp() {
  cpiasc "*"
  gacdp
}

mvaegc() {
  mvaeic "$1"
  gac "$2"
}

cpaegc() {
  cpaeic "$1"
  gac "$2"
}

mviegc() {
  mviec "$1"
  gac "$2"
}

cpiegc() {
  cpriec "$1"
  gac "$2"
}

mviaegc() {
  mviaec
  gac "$1"
}

cpiaegc() {
  cpiaec "*"
  gac "$1"
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

mvaegcd() {
  mvaeic "$1"
  gacd
}

cpaegcd() {
  cpaeic "$1"
  gacd
}

mviegcd() {
  mviec "$1"
  gacd
}

cpiegcd() {
  cpriec "$1"
  gacd
}

mviaegcd() {
  mviaec
  gacd
}

cpiaegcd() {
  cpiaec "*"
  gacd
}

mvaegcdp() {
  mvaeic "$1"
  gacdp
}

cpaegcdp() {
  cpaeic "$1"
  gacdp
}

mviegcdp() {
  mviec "$1"
  gacdp
}

cpiegcdp() {
  cpriec "$1"
  gacdp
}

mviaegcdp() {
  mviaec
  gacdp
}

cpiaegcdp() {
  cpiaec "*"
  gacdp
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

scnnan() {
  unset GALLIUM_DRIVER
  scrcpy --video-codec=h265 --fullscreen --new-display "$@"
}

scnnasa() {
  unset GALLIUM_DRIVER
  scrcpy --video-codec=h265 --fullscreen --new-display --start-app "$@"
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
