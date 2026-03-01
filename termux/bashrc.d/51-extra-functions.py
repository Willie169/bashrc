# 51-extra-functions.py

f = open("51-extra-functions.sh", "w")
 
def lr(x):
    return range(0, len(x))

op = ["mv", "cp", "cp -r"]
opStr = ["mv", "cp", "cpr"]
iop = ["mv", "cp -r"]
iopStr = ["mv", "cp"]
remote = ["/storage/emulated/0/Download/", "/storage/emulated/0/Documents/", "/storage/emulated/0/Scripts/"]
remoteStr = ["", "d", "s"]
local = [".", "~", ".."]
localStr = ["c", "h", "b"]
tlocal = ["\"$1\"", "\"$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root\""]
tlocalStr = ["r", "p"]
pop = ["mvi", "mvo", "cpi", "cpo", "cpri", "cpro", "mvai", "cpai"]
pup = ["mvy", "mvu", "cpy", "cpu", "cpry", "cpru", "mvay", "cpay"]
npop = ["rmp", "rmrp", "rmrf", "mkdir", "mkdirp"]
proot = ["termux", "ubuntu", "debian", "ubuntubox", "debianbox"]
prootStr = ["t", "u", "d", "ub", "db"]

for i in lr(op):
    for j in lr(remote):
        for k in lr(local):
            f.write(opStr[i] + "i" + remoteStr[j] + localStr[k] + "() {\n  for f in \"" + remote[j] + "$1\"; do\n    " + op[i] + " -- \"$f\" " + local[k] + "/\n  done\n}\n\n")
            f.write(opStr[i] + "o" + remoteStr[j] + localStr[k] + "() {\n  for f in \"" + remote[j] + "$1\"; do\n    " + op[i] + " -- " + local[k] + "/\"$f\" \n  done\n}\n\n")

for i in lr(op):
    for j in lr(remote):
        for k in lr(tlocal):
            f.write(opStr[i] + "i" + remoteStr[j] + tlocalStr[k] + "() {\n  for f in \"" + remote[j] + "$2\"; do\n    " + op[i] + " -- \"$f\" " + tlocal[k] + "/\n  done\n}\n\n")
            f.write(opStr[i] + "o" + remoteStr[j] + tlocalStr[k] + "() {\n  for f in \"" + remote[j] + "$2\"; do\n    " + op[i] + " -- " + tlocal[k] + "/\"$f\" \n  done\n}\n\n")

for i in lr(iop):
    for j in lr(remote):
        for k in lr(local):
            f.write(iopStr[i] + "ai" + remoteStr[j] + localStr[k] + "() {\n  for f in \"" + remote[j] + "$1\"; do\n    " + iop[i] + " -- \"$f\" " + local[k] + "/\n    cp -r -- " + local[k] + "/\"$f\"/* " + local[k] + "/\n    rm -r -- " + local[k] + "/\"$f\"\n  done\n}\n\n")

for i in lr(iop):
    for j in lr(remote):
        for k in lr(tlocal):
            f.write(iopStr[i] + "ai" + remoteStr[j] + tlocalStr[k] + "() {\n  for f in \"" + remote[j] + "$2\"; do\n    " + iop[i] + " -- \"$f\" " + tlocal[k] + "/\n    cp -r -- " + tlocal[k] + "/\"$f\"/* " + tlocal[k] + "/\n    rm -r -- " + tlocal[k] + "/\"$f\"\n  done\n}\n\n")

f.write("""rmp() {
  rm "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root/$2"
}

rmrp() {
  rm -r "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root/$2"
}

rmrfp() {
  rm -rf "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root/$2"
}

mkdirp() {
  mkdir "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root/$2"
}

mkdirpp() {
  mkdir -p "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root/$2"
}
""")

for i in lr(op):
    for j in lr(local):
        for k in lr(tlocal):
            f.write(opStr[i] + "y" + localStr[j] + tlocalStr[k] + "() {\n  for f in " + local[j] + "/\"$1\"; do\n    " + op[i] + " -- \"$f\" " + tlocal[k] + "/\n  done\n}\n\n")
            f.write(opStr[i] + "u" + localStr[j] + tlocalStr[k] + "() {\n  for f in " + local[j] + "/\"$1\"; do\n    " + op[i] + " -- " + tlocal[k] + "/\"$f\" \n  done\n}\n\n")

for i in lr(iop):
    for j in lr(local):
        for k in lr(tlocal):
            f.write(iopStr[i] + "ay" + localStr[j] + tlocalStr[k] + "() {\n  for f in " + local[j] + "/\"$1\"; do\n    " + iop[i] + " -- \"$f\" " + tlocal[k] + "/\n    cp -r -- " + tlocal[k] + "/\"$f\"/* " + tlocal[k] + "/\n    rm -r -- " + tlocal[k] + "/\"$f\"\n  done\n}\n\n")

for i in lr(pop):
    for j in lr(remote):
        for k in lr(proot):
            f.write(pop[i] + remoteStr[j] + "p" + prootStr[k] + "(){\n  if [ -n \"$" + proot[k].upper() + "\" ]; then\n    " + pop[i] + remoteStr[j] + "p \"$" + proot[k].upper() + "\" \"$1\"\n  else\n    " + pop[i] + remoteStr[j] + "p \"" + proot[k] + "\" \"$1\"\n  fi\n}\n\n")

for i in lr(npop):
    for k in lr(proot):
        f.write(npop[i] + "p" + prootStr[k] + "(){\n  if [ -n \"$" + proot[k].upper() + "\" ]; then\n    " + npop[i] + "p \"$" + proot[k].upper() + "\" \"$1\"\n  else\n    " + npop[i] + "p \"" + proot[k] + "\" \"$1\"\n  fi\n}\n\n")

for i in lr(pup):
    for j in lr(local):
        for k in lr(proot):
            f.write(pup[i] + remoteStr[j] + "p" + prootStr[k] + "(){\n  if [ -n \"$" + proot[k].upper() + "\" ]; then\n    " + pup[i] + localStr[j] + "p \"$" + proot[k].upper() + "\" \"$1\"\n  else\n    " + pup[i] + localStr[j] + "p \"" + proot[k] + "\" \"$1\"\n  fi\n}\n\n")

f.write("""mvagcp() {
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
  mvic "*"
  gacp "$1"
}

cpiogcp() {
  cpric "*"
  gacp "$1"
}
""")

f.close()
