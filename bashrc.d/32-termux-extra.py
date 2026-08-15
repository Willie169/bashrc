from pathlib import Path

p = Path(Path(__file__).resolve().parent /
         "32-termux-extra.sh")
p.touch(exist_ok=True)

with open(p, "w", encoding="utf-8") as file:

    file.write(
        "#!/usr/bin/env bash\n# shellcheck disable=2103\n\n")
    file.write(
        r'''[[ "${HOME}" != '/data/data/com.termux/files/home' ]] && [[ "${PREFIX:-}" != '/data/data/com.termux/files/usr' ]] && return''' +
        '\n\n')

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
    tlocal = [
        "\"$1\"",
        "\"$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root\""]
    tlocalStr = ["r", "p"]
    pop = [
        "mvi",
        "mvo",
        "cpi",
        "cpo",
        "cpri",
        "cpro",
        "mvia",
        "cpia",
        "mvai",
        "cpai"]
    pup = [
        "mvy",
        "mvu",
        "cpy",
        "cpu",
        "cpry",
        "cpru",
        "mvya",
        "cpya",
        "mvay",
        "cpay"]
    npop = ["rm", "rmr", "rmrf", "mkdir", "mkdirp"]
    proot = ["termux", "ubuntu", "debian", "ubuntubox", "debianbox"]
    prootStr = ["t", "u", "d", "ub", "db"]

    for i in lr(op):
        for j in lr(remote):
            for k in lr(local):
                file.write(
                    opStr[i] +
                    "i" +
                    remoteStr[j] +
                    localStr[k] +
                    "() {\n\tfor f in \"$@\"; do\n\t\t" +
                    op[i] +
                    " -- \"" +
                    remote[j] +
                    "\"/\"$f\" " +
                    local[k] +
                    "/\n\tdone\n}\n\n")
                file.write(
                    opStr[i] +
                    "o" +
                    remoteStr[j] +
                    localStr[k] +
                    "() {\n\tfor f in \"$@\"; do\n\t\t" +
                    op[i] +
                    " -- " +
                    local[k] +
                    "/\"$f\" \"" +
                    remote[j] +
                    "\"/\n\tdone\n}\n\n")
            for k in lr(tlocal):
                file.write(
                    opStr[i] +
                    "i" +
                    remoteStr[j] +
                    tlocalStr[k] +
                    "() {\n\t" +
                    op[i] +
                    " -- \"" +
                    remote[j] +
                    "\"/\"$2\" " +
                    tlocal[k] +
                    "/\n}\n\n")
                file.write(
                    opStr[i] +
                    "o" +
                    remoteStr[j] +
                    tlocalStr[k] +
                    "() {\n\t" +
                    op[i] +
                    " -- " +
                    tlocal[k] +
                    "/\"$2\" \"" +
                    remote[j] +
                    "\"/\n}\n\n")

    for i in lr(aop):
        for j in lr(remote):
            for k in lr(local):
                file.write(
                    aopStr[i] +
                    "ia" +
                    remoteStr[j] +
                    localStr[k] +
                    "() {\n\t(\n\t\tcd " +
                    local[k] +
                    " || exit\n\t\tcwd=$(pwd)\n\t\tcd \"" +
                    remote[j] +
                    "\" || exit\n\t\tfor f in *; do\n\t\t\t" +
                    aop[i] +
                    " -- \"$f\" \"$cwd\"/\n\t\tdone\n\t)\n}\n\n")
            for k in lr(tlocal):
                file.write(
                    aopStr[i] +
                    "ia" +
                    remoteStr[j] +
                    tlocalStr[k] +
                    "() {\n\t(\n\t\tcd " +
                    tlocal[k] +
                    " || exit\n\t\tcwd=$(pwd)\n\t\tcd \"" +
                    remote[j] +
                    "\" || exit\n\t\tfor f in *; do\n\t\t\t" +
                    aop[i] +
                    " -- \"$f\" \"$cwd\"/\n\t\tdone\n\t)\n}\n\n")

    for i in lr(iop):
        for j in lr(remote):
            for k in lr(local):
                file.write(
                    iopStr[i] +
                    "ai" +
                    remoteStr[j] +
                    localStr[k] +
                    "() {\n\t(\n\t\t" +
                    iop[i] +
                    "i" +
                    remoteStr[j] +
                    localStr[k] +
                    " \"$1\"\n\t\tcd " +
                    local[k] +
                    " || exit\n\t\tcp -r -- \"$1\"/* ./\n\t\trm -r \"$1\"\n\t)\n}\n\n")
            for k in lr(tlocal):
                file.write(
                    iopStr[i] +
                    "ai" +
                    remoteStr[j] +
                    tlocalStr[k] +
                    "() {\n\t(\n\t\t" +
                    iop[i] +
                    "i" +
                    remoteStr[j] +
                    tlocalStr[k] +
                    " \"$1\" \"$2\"\n\t\tcd " +
                    tlocal[k] +
                    " || exit\n\t\tcp -r -- \"$2\"/* ./\n\t\trm -r \"$2\"\n\t)\n}\n\n")

    for i in lr(op):
        for j in lr(local):
            for k in lr(tlocal):
                file.write(
                    opStr[i] +
                    "y" +
                    localStr[j] +
                    tlocalStr[k] +
                    "() {\n\t" +
                    op[i] +
                    " -- \"$2\" " +
                    tlocal[k] +
                    "/\n}\n\n")
                file.write(
                    opStr[i] +
                    "u" +
                    localStr[j] +
                    tlocalStr[k] +
                    "() {\n\t" +
                    op[i] +
                    " -- " +
                    tlocal[k] +
                    "/\"$2\"\n}\n\n")

    for i in lr(aop):
        for j in lr(local):
            for k in lr(tlocal):
                file.write(
                    aopStr[i] +
                    "ya" +
                    localStr[j] +
                    tlocalStr[k] +
                    "() {\n\t(\n\t\tcd " +
                    tlocal[k] +
                    " || exit\n\t\tcwd=$(pwd)\n\t\tcd " +
                    local[j] +
                    " || exit\n\t\tfor f in *; do\n\t\t\t" +
                    aop[i] +
                    " -- \"$f\" \"$cwd\"/\n\t\tdone\n\t)\n}\n\n")

    file.write("""rmp() {
\trm -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

rmrp() {
\trm -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

rmrfp() {
\trm -rf -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

mkdirp() {
\tmkdir -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

mkdirpp() {
\tmkdir -p -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

""")

    for i in lr(pop):
        for j in lr(remote):
            for k in lr(proot):
                file.write(
                    pop[i] +
                    remoteStr[j] +
                    "p" +
                    prootStr[k] +
                    "() {\n\t" +
                    pop[i] +
                    remoteStr[j] +
                    "p \"${PROOT_" +
                    proot[k].upper() +
                    ":-" +
                    proot[k] +
                    "}\" \"$1\"\n}\n\n")

    for i in lr(npop):
        for k in lr(proot):
            file.write(
                npop[i] +
                "p" +
                prootStr[k] +
                "() {\n\t" +
                npop[i] +
                "p \"${PROOT_" +
                proot[k].upper() +
                ":-" +
                proot[k] +
                "}\" \"$1\"\n}\n\n")

    for i in lr(pup):
        for j in lr(local):
            for k in lr(proot):
                file.write(
                    pup[i] +
                    remoteStr[j] +
                    "p" +
                    prootStr[k] +
                    "() {\n\t" +
                    pup[i] +
                    localStr[j] +
                    "p \"${PROOT_" +
                    proot[k].upper() +
                    ":-" +
                    proot[k] +
                    "}\" \"$1\"\n}\n\n")

    for k in lr(proot):
        file.write(
            "pdc" +
            prootStr[k] +
            "() {\n\tcd \"/data/data/com.termux/files/usr/var/lib/proot-distro/containers/${PROOT_" +
            proot[k].upper() +
            ":-" +
            proot[k] +
            "}/rootfs/root\" || return\n}\n\n")

    gacp = """mvaAgB() {
\tmvaAic "$1"
\tgaB "$2"
}

cpaAgB() {
\tcpaAic "$1"
\tgaB "$2"
}

mviAgB() {
\tmviAc "$1"
\tgaB "$2"
}

cpiAgB() {
\tcpriAc "$1"
\tgaB "$2"
}

mviaAgB() {
\tmviaAc
\tgaB "$1"
}

cpiaAgB() {
\tcpiaAc "*"
\tgaB "$1"
}

"""

    gbStr = ["c", "cd", "cp", "cdp"]

    for i in remoteStr:
        for j in gbStr:
            file.write(gacp.replace("A", i).replace("B", j))

    A = ["n", "d", "z", "f"]
    B = [
        "",
        '\n\texport DISPLAY="$1"',
        "\n\texport DISPLAY=':0'",
        "\n\texport DISPLAY=':1'"]
    C = ["n", "a"]
    DA = ["", "\n\tadb connect localhost:5555"]
    DB = ["", " -s localhost:5555"]
    E = ["n", "a"]
    F = [" --no-audio", ""]
    eG = ["", " --new-display"]
    G = [[""], ["n", "sa"]]
    H = [[""], ["", " --start-app"]]

    for eg in lr(eG):
        for a in lr(A):
            for c in lr(C):
                for e in lr(E):
                    for g in lr(G[eg]):
                        file.write(
                            "sc" +
                            A[a] +
                            C[c] +
                            E[e] +
                            G[eg][g] +
                            "() {" +
                            B[a] +
                            DA[c] +
                            "\n\tunset GALLIUM_DRIVER\n\tscrcpy" +
                            DB[c] +
                            " --video-codec=h265 --fullscreen" +
                            F[e] +
                            eG[eg] +
                            H[eg][g] +
                            ' "$@"\n}\n\n')

with open(p, "rb") as file:
    data = file.read()

p.write_bytes(p.read_bytes().rstrip(b"\n") + b"\n")
