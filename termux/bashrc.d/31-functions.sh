#!/data/data/com.termux/files/usr/bin/bash

phice() {
	(
		local port="${1:-5001}"
		cd ~/phice && uv run gunicorn -b 127.0.0.1:"$port" -w 4 "app:app"
	)
}

cyberchef() {
	(
		local port="${1:-8081}"
		sed -Ei "s/(listen[ \t]+)[0-9]*;/\1${port};/" "$PREFIX"/var/lib/proot-distro/containers/cyberchef/rootfs/etc/nginx/conf.d/default.conf
		proot-distro run cyberchef
		sed -Ei "s/(listen[ \t]+)[0-9]*;/\18081;/" "$PREFIX"/var/lib/proot-distro/containers/cyberchef/rootfs/etc/nginx/conf.d/default.conf
	)
}

stirlingpdf() {
	(
		local port="${1:-9000}"
		echo -e "server:\n  port: $port" | tee "$PREFIX"/var/lib/proot-distro/containers/stirling-pdf/rootfs/configs/custom_settings.yml >/dev/null
		proot-distro run stirling-pdf -e SECURITY_ENABLELOGIN=false -e LANGS=en_GB
		echo -e "server:\n  port: 9000" | tee "$PREFIX"/var/lib/proot-distro/containers/stirling-pdf/rootfs/configs/custom_settings.yml >/dev/null
	)
}

clean_disk() {
	rm -rf ~/.cache/*
	apt autoremove -y
	apt clean
	apt autoclean
	proot-distro clear-cache || true
}

update_vim_config() {
	(
		sh ~/.vim_runtime/update.sh
	)
}

update_nvim_config() {
	(
		sh ~/.config/nvim/update.sh
	)
}

update_tools() {
	(
		cd ~ || exit
		pip3 install pip-autoremove plotly pydub requests selenium==4.9.1 setuptools==81.0.0 sympy
		if [ -f ~/.local/bin/yt-dlp ]; then
			rm -f /.local/bin/yt-dlp
			gh_latest -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' yt-dlp/yt-dlp yt-dlp
			chmod +x yt-dlp
			mv yt-dlp ~/.local/bin/
		fi
		if [ -f ~/.local/bin/superhtml ]; then
			rm -f /.local/bin/superhtml
			gh_latest -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' kristoff-it/superhtml aarch64-linux.tar.xz
			xz -dc aarch64-linux.tar.xz | tar -xf - || true
			rm aarch64-linux.tar.xz*
			mv superhtml ~/.local/bin/
		fi
		if [ -f ~/.local/bin/rclone ]; then
			rm -f ~/.local/bin/rclone
			ARCH=$(uname -m)
			gh_latest -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' gulp79/rclone-extra rclone-android-all.zip
			unzip rclone-android-all.zip
			rm rclone-android-all.zip*
			if [[ "$ARCH" == "x86_64" ]]; then
				rm rclone-android-386
				mv rclone-android-amd64 rclone
				rm rclone-android-arm
				rm rclone-android-arm64
			elif [[ "$ARCH" =~ ^i[3-6]86$ ]]; then
				mv rclone-android-386 rclone
				rm rclone-android-amd64
				rm rclone-android-arm
				rm rclone-android-arm64
			elif [[ "$ARCH" == "aarch64" || "$ARCH" == "arm64" ]]; then
				rm rclone-android-386
				rm rclone-android-amd64
				rm rclone-android-arm
				mv rclone-android-arm64 rclone
			elif [[ "$ARCH" == arm* ]]; then
				rm rclone-android-386
				rm rclone-android-amd64
				mv rclone-android-arm rclone
				rm rclone-android-arm64
			else
				rm rclone-android-386
				rm rclone-android-amd64
				rm rclone-android-arm
				mv rm rclone-android-arm64 rclone
			fi
			mv rclone ~/.local/bin/
		fi
	)
}

update_bashrc() {
	(
		wget -qO- https://raw.githubusercontent.com/Willie169/bashrc/main/termux/install.sh | sh
	)
}

update_config() {
	update_vim_config
	update_nvim_config
}

update_pm() {
	pkg update
	pkg upgrade -y
	pkg autoremove -y
	pkg clean
	pkg autoclean
	uv self update
	uv tool upgrade --all
	npm update -g
}

update_all() {
	update_pm
	update_tools
	update_config
	update_bashrc
}

pdl() {
	cmd=(proot-distro login "$1" --redirect-ports --shared-tmp --isolated --get-proot-cmd)
	bind=(
		"/apex"
		"/data/app"
		"/data/dalvik-cache"
		"/data/misc/apexdata/com.android.art/dalvik-cache"
		"/linkerconfig/com.android.art/ld.config.txt"
		"/linkerconfig/ld.config.txt"
		"/odm"
		"/plat_property_contexts"
		"/product"
		"/property_contexts"
		"/system"
		"/system_ext"
		"/vendor"
		"/data/data/com.termux/files/usr/bin/am"
		"/data/data/com.termux/files/usr/bin/bash"
		"/data/data/com.termux/files/usr/bin/sh"
		"/data/data/com.termux/files/usr/bin/termux-am"
		"/data/data/com.termux/files/usr/bin/termux-am-socket"
		"/data/data/com.termux/files/usr/bin/termux-api-start"
		"/data/data/com.termux/files/usr/bin/termux-api-stop"
		"/data/data/com.termux/files/usr/bin/termux-apps-info-app-version-name"
		"/data/data/com.termux/files/usr/bin/termux-apps-info-app-version-name.bash"
		"/data/data/com.termux/files/usr/bin/termux-apps-info-app-version-name.sh"
		"/data/data/com.termux/files/usr/bin/termux-apps-info-env-variable"
		"/data/data/com.termux/files/usr/bin/termux-apps-info-env-variable.bash"
		"/data/data/com.termux/files/usr/bin/termux-apps-info-env-variable.sh"
		"/data/data/com.termux/files/usr/bin/termux-audio-info"
		"/data/data/com.termux/files/usr/bin/termux-backup"
		"/data/data/com.termux/files/usr/bin/termux-battery-status"
		"/data/data/com.termux/files/usr/bin/termux-brightness"
		"/data/data/com.termux/files/usr/bin/termux-call-log"
		"/data/data/com.termux/files/usr/bin/termux-camera-info"
		"/data/data/com.termux/files/usr/bin/termux-camera-photo"
		"/data/data/com.termux/files/usr/bin/termux-change-repo"
		"/data/data/com.termux/files/usr/bin/termux-chroot"
		"/data/data/com.termux/files/usr/bin/termux-clipboard-get"
		"/data/data/com.termux/files/usr/bin/termux-clipboard-set"
		"/data/data/com.termux/files/usr/bin/termux-contact-list"
		"/data/data/com.termux/files/usr/bin/termux-dialog"
		"/data/data/com.termux/files/usr/bin/termux-download"
		"/data/data/com.termux/files/usr/bin/termux-exec-ld-preload-lib"
		"/data/data/com.termux/files/usr/bin/termux-exec-system-linker-exec"
		"/data/data/com.termux/files/usr/bin/termux-fingerprint"
		"/data/data/com.termux/files/usr/bin/termux-fix-shebang"
		"/data/data/com.termux/files/usr/bin/termux-info"
		"/data/data/com.termux/files/usr/bin/termux-infrared-frequencies"
		"/data/data/com.termux/files/usr/bin/termux-infrared-transmit"
		"/data/data/com.termux/files/usr/bin/termux-job-scheduler"
		"/data/data/com.termux/files/usr/bin/termux-keystore"
		"/data/data/com.termux/files/usr/bin/termux-location"
		"/data/data/com.termux/files/usr/bin/termux-media-player"
		"/data/data/com.termux/files/usr/bin/termux-media-scan"
		"/data/data/com.termux/files/usr/bin/termux-microphone-record"
		"/data/data/com.termux/files/usr/bin/termux-nfc"
		"/data/data/com.termux/files/usr/bin/termux-notification"
		"/data/data/com.termux/files/usr/bin/termux-notification-channel"
		"/data/data/com.termux/files/usr/bin/termux-notification-list"
		"/data/data/com.termux/files/usr/bin/termux-notification-remove"
		"/data/data/com.termux/files/usr/bin/termux-open"
		"/data/data/com.termux/files/usr/bin/termux-open-url"
		"/data/data/com.termux/files/usr/bin/termux-reload-settings"
		"/data/data/com.termux/files/usr/bin/termux-reset"
		"/data/data/com.termux/files/usr/bin/termux-restore"
		"/data/data/com.termux/files/usr/bin/termux-saf-create"
		"/data/data/com.termux/files/usr/bin/termux-saf-dirs"
		"/data/data/com.termux/files/usr/bin/termux-saf-ls"
		"/data/data/com.termux/files/usr/bin/termux-saf-managedir"
		"/data/data/com.termux/files/usr/bin/termux-saf-mkdir"
		"/data/data/com.termux/files/usr/bin/termux-saf-read"
		"/data/data/com.termux/files/usr/bin/termux-saf-rm"
		"/data/data/com.termux/files/usr/bin/termux-saf-stat"
		"/data/data/com.termux/files/usr/bin/termux-saf-write"
		"/data/data/com.termux/files/usr/bin/termux-scoped-env-variable"
		"/data/data/com.termux/files/usr/bin/termux-scoped-env-variable.bash"
		"/data/data/com.termux/files/usr/bin/termux-scoped-env-variable.sh"
		"/data/data/com.termux/files/usr/bin/termux-sensor"
		"/data/data/com.termux/files/usr/bin/termux-setup-package-manager"
		"/data/data/com.termux/files/usr/bin/termux-setup-storage"
		"/data/data/com.termux/files/usr/bin/termux-share"
		"/data/data/com.termux/files/usr/bin/termux-sms-inbox"
		"/data/data/com.termux/files/usr/bin/termux-sms-list"
		"/data/data/com.termux/files/usr/bin/termux-sms-send"
		"/data/data/com.termux/files/usr/bin/termux-speech-to-text"
		"/data/data/com.termux/files/usr/bin/termux-storage-get"
		"/data/data/com.termux/files/usr/bin/termux-telephony-call"
		"/data/data/com.termux/files/usr/bin/termux-telephony-cellinfo"
		"/data/data/com.termux/files/usr/bin/termux-telephony-deviceinfo"
		"/data/data/com.termux/files/usr/bin/termux-toast"
		"/data/data/com.termux/files/usr/bin/termux-torch"
		"/data/data/com.termux/files/usr/bin/termux-tts-engines"
		"/data/data/com.termux/files/usr/bin/termux-tts-speak"
		"/data/data/com.termux/files/usr/bin/termux-usb"
		"/data/data/com.termux/files/usr/bin/termux-vibrate"
		"/data/data/com.termux/files/usr/bin/termux-volume"
		"/data/data/com.termux/files/usr/bin/termux-wake-lock"
		"/data/data/com.termux/files/usr/bin/termux-wake-unlock"
		"/data/data/com.termux/files/usr/bin/termux-wallpaper"
		"/data/data/com.termux/files/usr/bin/termux-wifi-connectioninfo"
		"/data/data/com.termux/files/usr/bin/termux-wifi-enable"
		"/data/data/com.termux/files/usr/bin/termux-wifi-scaninfo"
		"/data/data/com.termux/files/usr/libexec/termux"
		"/data/data/com.termux/files/usr/libexec/termux-am"
		"/data/data/com.termux/files/usr/libexec/termux-api"
		"/data/data/com.termux/files/usr/libexec/termux-api-broadcast"
		"/data/data/com.termux/files/usr/libexec/termux-callback"
		"/data/data/com.termux/files/usr/lib"
		"/data/data/com.termux/files/home/shared	/root/shared"
	)
	for item in "${bind[@]}"; do
		set -- "$item"
		first=$1
		second=$2
		[[ -e "$first" ]] || continue
		if [[ $# -ge 2 ]]; then
			cmd+=(--bind "$first:$second")
		else
			cmd+=(--bind "$first")
		fi
	done
	bash <("${cmd[@]}")
}

pdr() {
	cmd=(proot-distro run "$1" --redirect-ports --shared-tmp --isolated --get-proot-cmd)
	shift
	args=("$@")
	bind=(
		"/apex"
		"/data/app"
		"/data/dalvik-cache"
		"/data/misc/apexdata/com.android.art/dalvik-cache"
		"/linkerconfig/com.android.art/ld.config.txt"
		"/linkerconfig/ld.config.txt"
		"/odm"
		"/plat_property_contexts"
		"/product"
		"/property_contexts"
		"/system"
		"/system_ext"
		"/vendor"
		"/data/data/com.termux/files/usr/bin/am"
		"/data/data/com.termux/files/usr/bin/bash"
		"/data/data/com.termux/files/usr/bin/sh"
		"/data/data/com.termux/files/usr/bin/termux-am"
		"/data/data/com.termux/files/usr/bin/termux-am-socket"
		"/data/data/com.termux/files/usr/bin/termux-api-start"
		"/data/data/com.termux/files/usr/bin/termux-api-stop"
		"/data/data/com.termux/files/usr/bin/termux-apps-info-app-version-name"
		"/data/data/com.termux/files/usr/bin/termux-apps-info-app-version-name.bash"
		"/data/data/com.termux/files/usr/bin/termux-apps-info-app-version-name.sh"
		"/data/data/com.termux/files/usr/bin/termux-apps-info-env-variable"
		"/data/data/com.termux/files/usr/bin/termux-apps-info-env-variable.bash"
		"/data/data/com.termux/files/usr/bin/termux-apps-info-env-variable.sh"
		"/data/data/com.termux/files/usr/bin/termux-audio-info"
		"/data/data/com.termux/files/usr/bin/termux-backup"
		"/data/data/com.termux/files/usr/bin/termux-battery-status"
		"/data/data/com.termux/files/usr/bin/termux-brightness"
		"/data/data/com.termux/files/usr/bin/termux-call-log"
		"/data/data/com.termux/files/usr/bin/termux-camera-info"
		"/data/data/com.termux/files/usr/bin/termux-camera-photo"
		"/data/data/com.termux/files/usr/bin/termux-change-repo"
		"/data/data/com.termux/files/usr/bin/termux-chroot"
		"/data/data/com.termux/files/usr/bin/termux-clipboard-get"
		"/data/data/com.termux/files/usr/bin/termux-clipboard-set"
		"/data/data/com.termux/files/usr/bin/termux-contact-list"
		"/data/data/com.termux/files/usr/bin/termux-dialog"
		"/data/data/com.termux/files/usr/bin/termux-download"
		"/data/data/com.termux/files/usr/bin/termux-exec-ld-preload-lib"
		"/data/data/com.termux/files/usr/bin/termux-exec-system-linker-exec"
		"/data/data/com.termux/files/usr/bin/termux-fingerprint"
		"/data/data/com.termux/files/usr/bin/termux-fix-shebang"
		"/data/data/com.termux/files/usr/bin/termux-info"
		"/data/data/com.termux/files/usr/bin/termux-infrared-frequencies"
		"/data/data/com.termux/files/usr/bin/termux-infrared-transmit"
		"/data/data/com.termux/files/usr/bin/termux-job-scheduler"
		"/data/data/com.termux/files/usr/bin/termux-keystore"
		"/data/data/com.termux/files/usr/bin/termux-location"
		"/data/data/com.termux/files/usr/bin/termux-media-player"
		"/data/data/com.termux/files/usr/bin/termux-media-scan"
		"/data/data/com.termux/files/usr/bin/termux-microphone-record"
		"/data/data/com.termux/files/usr/bin/termux-nfc"
		"/data/data/com.termux/files/usr/bin/termux-notification"
		"/data/data/com.termux/files/usr/bin/termux-notification-channel"
		"/data/data/com.termux/files/usr/bin/termux-notification-list"
		"/data/data/com.termux/files/usr/bin/termux-notification-remove"
		"/data/data/com.termux/files/usr/bin/termux-open"
		"/data/data/com.termux/files/usr/bin/termux-open-url"
		"/data/data/com.termux/files/usr/bin/termux-reload-settings"
		"/data/data/com.termux/files/usr/bin/termux-reset"
		"/data/data/com.termux/files/usr/bin/termux-restore"
		"/data/data/com.termux/files/usr/bin/termux-saf-create"
		"/data/data/com.termux/files/usr/bin/termux-saf-dirs"
		"/data/data/com.termux/files/usr/bin/termux-saf-ls"
		"/data/data/com.termux/files/usr/bin/termux-saf-managedir"
		"/data/data/com.termux/files/usr/bin/termux-saf-mkdir"
		"/data/data/com.termux/files/usr/bin/termux-saf-read"
		"/data/data/com.termux/files/usr/bin/termux-saf-rm"
		"/data/data/com.termux/files/usr/bin/termux-saf-stat"
		"/data/data/com.termux/files/usr/bin/termux-saf-write"
		"/data/data/com.termux/files/usr/bin/termux-scoped-env-variable"
		"/data/data/com.termux/files/usr/bin/termux-scoped-env-variable.bash"
		"/data/data/com.termux/files/usr/bin/termux-scoped-env-variable.sh"
		"/data/data/com.termux/files/usr/bin/termux-sensor"
		"/data/data/com.termux/files/usr/bin/termux-setup-package-manager"
		"/data/data/com.termux/files/usr/bin/termux-setup-storage"
		"/data/data/com.termux/files/usr/bin/termux-share"
		"/data/data/com.termux/files/usr/bin/termux-sms-inbox"
		"/data/data/com.termux/files/usr/bin/termux-sms-list"
		"/data/data/com.termux/files/usr/bin/termux-sms-send"
		"/data/data/com.termux/files/usr/bin/termux-speech-to-text"
		"/data/data/com.termux/files/usr/bin/termux-storage-get"
		"/data/data/com.termux/files/usr/bin/termux-telephony-call"
		"/data/data/com.termux/files/usr/bin/termux-telephony-cellinfo"
		"/data/data/com.termux/files/usr/bin/termux-telephony-deviceinfo"
		"/data/data/com.termux/files/usr/bin/termux-toast"
		"/data/data/com.termux/files/usr/bin/termux-torch"
		"/data/data/com.termux/files/usr/bin/termux-tts-engines"
		"/data/data/com.termux/files/usr/bin/termux-tts-speak"
		"/data/data/com.termux/files/usr/bin/termux-usb"
		"/data/data/com.termux/files/usr/bin/termux-vibrate"
		"/data/data/com.termux/files/usr/bin/termux-volume"
		"/data/data/com.termux/files/usr/bin/termux-wake-lock"
		"/data/data/com.termux/files/usr/bin/termux-wake-unlock"
		"/data/data/com.termux/files/usr/bin/termux-wallpaper"
		"/data/data/com.termux/files/usr/bin/termux-wifi-connectioninfo"
		"/data/data/com.termux/files/usr/bin/termux-wifi-enable"
		"/data/data/com.termux/files/usr/bin/termux-wifi-scaninfo"
		"/data/data/com.termux/files/usr/libexec/termux"
		"/data/data/com.termux/files/usr/libexec/termux-am"
		"/data/data/com.termux/files/usr/libexec/termux-api"
		"/data/data/com.termux/files/usr/libexec/termux-api-broadcast"
		"/data/data/com.termux/files/usr/libexec/termux-callback"
		"/data/data/com.termux/files/usr/lib"
		"/data/data/com.termux/files/home/shared	/root/shared"
	)
	for item in "${bind[@]}"; do
		set -- "$item"
		first=$1
		second=$2
		[[ -e "$first" ]] || continue
		if [[ $# -ge 2 ]]; then
			cmd+=(--bind "$first:$second")
		else
			cmd+=(--bind "$first")
		fi
	done
	cmd+=(-- "${args[@]}")
	bash <("${cmd[@]}")
}
