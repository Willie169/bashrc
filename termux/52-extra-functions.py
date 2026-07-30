#!/usr/bin/python3

file = open("bashrc.d/52-extra-functions.sh", "w")

def lr(x):
    return range(0, len(x))

op = ["mv", "cp", "cp -r"]
opStr = ["mv", "cp", "cpr"]
aop = ["mv", "cp -r"]
aopStr = ["mv", "cp"]
iop = ["mv", "cpr"]
iopStr = ["mv", "cp"]
remote = ["$DOW", "$DOC", "$SCR", "$EMU"]
remoteStr = ["", "d", "s", "e"]
local = [".", "~", ".."]
localStr = ["c", "h", "b"]
tlocal = ["\"$1\"", "\"$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root\""]
tlocalStr = ["r", "p"]
pop = ["mvi", "mvo", "cpi", "cpo", "cpri", "cpro", "mvia", "cpia", "mvai", "cpai"]
pup = ["mvy", "mvu", "cpy", "cpu", "cpry", "cpru", "mvya", "cpya", "mvay", "cpay"]
npop = ["rm", "rmr", "rmrf", "mkdir", "mkdirp"]
proot = ["termux", "ubuntu", "debian", "ubuntubox", "debianbox"]
prootStr = ["t", "u", "d", "ub", "db"]

for i in lr(op):
    for j in lr(remote):
        for k in lr(local):
            file.write(opStr[i] + "i" + remoteStr[j] + localStr[k] + "() {\n  " + op[i] + " -- \"" + remote[j] + "\"/\"$1\" " + local[k] + "/\n}\n\n")
            file.write(opStr[i] + "o" + remoteStr[j] + localStr[k] + "() {\n  " + op[i] + " -- " + local[k] + "/\"$1\" \"" + remote[j] + "\"/\n}\n\n")
        for k in lr(tlocal):
             file.write(opStr[i] + "i" + remoteStr[j] + tlocalStr[k] + "() {\n  " + op[i] + " -- \"" + remote[j] + "\"/\"$2\" " + tlocal[k] + "/\n}\n\n")
             file.write(opStr[i] + "o" + remoteStr[j] + tlocalStr[k] + "() {\n  " + op[i] + " -- " + tlocal[k] + "/\"$2\" \"" + remote[j] + "\"/\n}\n\n")

for i in lr(aop):
    for j in lr(remote):
        for k in lr(local):
            file.write(aopStr[i] + "ia" + remoteStr[j] + localStr[k] + "() {\n  (\n  cd " + local[k] + "\n  LOCAL=$(pwd)\n  cd "  + remote[j] + "\n  for f in *; do\n    " + aop[i] + " -- \"$f\" \"$LOCAL\"/\n  done\n  )\n}\n\n")
        for k in lr(tlocal):
             file.write(aopStr[i] + "ia" + remoteStr[j] + tlocalStr[k] + "() {\n  (\n  cd " + tlocal[k] + "\n  tlocal=$(pwd)\n  cd "  + remote[j] + "\n  for f in *; do\n    " + aop[i] + " -- \"$f\" \"$tlocal\"/\n  done\n  )\n}\n\n")

for i in lr(iop):
    for j in lr(remote):
        for k in lr(local):
            file.write(iopStr[i] + "ai" + remoteStr[j] + localStr[k] + "() {\n  (\n  " + iop[i] + "i" + remoteStr[j] + localStr[k] + " \"$1\"\n  cd " + local[k] + "\n  cp -r -- \"$1\"/* ./\n  rm -r \"$1\"\n  )\n}\n\n")
        for k in lr(tlocal):
            file.write(iopStr[i] + "ai" + remoteStr[j] + tlocalStr[k] + "() {\n  (\n  " + iop[i] + "i" + remoteStr[j] + tlocalStr[k] + " \"$1\" \"$2\"\n  cd " + tlocal[k] + "\n  cp -r -- \"$2\"/* ./\n  rm -r \"$2\"\n  )\n}\n\n")

for i in lr(op):
    for j in lr(local):
        for k in lr(tlocal):
            file.write(opStr[i] + "y" + localStr[j] + tlocalStr[k] + "() {\n  " + op[i] + " -- \"$2\" " + tlocal[k] + "/\n}\n\n")
            file.write(opStr[i] + "u" + localStr[j] + tlocalStr[k] + "() {\n  " + op[i] + " -- " + tlocal[k] + "/\"$2\"\n}\n\n")

for i in lr(aop):
    for j in lr(local):
        for k in lr(tlocal):
            file.write(aopStr[i] + "ya" + localStr[j] + tlocalStr[k] + "() {\n  (\n  cd " + tlocal[k] + "\n  LOCAL=$(pwd)\n  cd "  + local[j] + "\n  for f in *; do\n    " + aop[i] + " -- \"$f\" \"$LOCAL\"/\n  done\n  )\n}\n\n")

file.write("""rmp() {
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
""")

for i in lr(pop):
    for j in lr(remote):
        for k in lr(proot):
            file.write(pop[i] + remoteStr[j] + "p" + prootStr[k] + "(){\n  if [ -n \"$" + proot[k].upper() + "\" ]; then\n    " + pop[i] + remoteStr[j] + "p \"$" + proot[k].upper() + "\" \"$1\"\n  else\n    " + pop[i] + remoteStr[j] + "p \"" + proot[k] + "\" \"$1\"\n  fi\n}\n\n")

for i in lr(npop):
    for k in lr(proot):
        file.write(npop[i] + "p" + prootStr[k] + "(){\n  if [ -n \"$" + proot[k].upper() + "\" ]; then\n    " + npop[i] + "p \"$" + proot[k].upper() + "\" \"$1\"\n  else\n    " + npop[i] + "p \"" + proot[k] + "\" \"$1\"\n  fi\n}\n\n")

for i in lr(pup):
    for j in lr(local):
        for k in lr(proot):
            file.write(pup[i] + remoteStr[j] + "p" + prootStr[k] + "(){\n  if [ -n \"$" + proot[k].upper() + "\" ]; then\n    " + pup[i] + localStr[j] + "p \"$" + proot[k].upper() + "\" \"$1\"\n  else\n    " + pup[i] + localStr[j] + "p \"" + proot[k] + "\" \"$1\"\n  fi\n}\n\n")

gacp = """mvaAgcp() {
  mvaAic "$1"
  gacp "$2"
}

cpaAgcp() {
  cpaAic "$1"
  gacp "$2"
}

mviAgcp() {
  mviAc "$1"
  gacp "$2"
}

cpiAgcp() {
  cpriAc "$1"
  gacp "$2"
}

mviaAgcp() {
  mviaAc
  gacp "$1"
}

cpiaAgcp() {
  cpiaAc "*"
  gacp "$1"
}
"""

for i in remoteStr:
    file.write(gacp.replace("A", i))

A = ["n", "d", "z", "f"]
B = ["", '\n  export DISPLAY="$1"', "\n  export DISPLAY=':0'", "\n  export DISPLAY=':1'"]
C = ["n", "a"]
DA = ["", "\n  adb connect localhost:5555"]
DB = ["", " -s localhost:5555"]
E = ["n", "a"]
F = [" --no-audio", ""]
eG = ["", " --new-display"]
G = [[""], ["n", "sa", "lc"]]
H = [[""], ["", " --start-app", " --start-app app.lawnchair"]]

for eg in lr(eG):
    for a in lr(A):
        for c in lr(C):
            for e in lr(E):
                for g in lr(G[eg]):
                  file.write("sc" + A[a] + C[c] + E[e] + G[eg][g] + "(){" + B[a] + DA[c] + "\n  unset GALLIUM_DRIVER\n  scrcpy" + DB[c] + " --video-codec=h265 --fullscreen" + F[e] + eG[eg] + H[eg][g] + ' "$@"\n}\n\n')

file.close()
