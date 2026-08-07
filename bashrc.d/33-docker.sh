#!/usr/bin/env bash

if [[ "$(awk '$5=="/" {print $1}' 2>/dev/null </proc/1/mountinfo)" != "$(awk '$5=="/" {print $1}' 2>/dev/null </proc/$$/mountinfo)" ]] || [[ "$HOME" == '/data/data/com.termux/files/home' ]] || [[ "${PREFIX:-}" == '/data/data/com.termux/files/usr' ]]; then
	return
fi

typetype_up() {
	(cd ~/typetype-stack && docker compose -f docker-compose.yml --env-file .env up "$@")
}

typetype_stop() {
	(cd ~/typetype-stack && docker compose -f docker-compose.yml stop "$@")
}

typetype_down() {
	(cd ~/typetype-stack && docker compose -f docker-compose.yml down "$@")
}

stirlingpdf_up() {
	(cd ~/stirlingpdf && docker compose up -d "$@")
}

stirlingpdf_stop() {
	(cd ~/stirlingpdf && docker compose stop "$@")
}

stirlingpdf_down() {
	(cd ~/stirlingpdf && docker compose down "$@")
}

open_notebook_up() {
	(cd ~/open-notebook && docker compose up -d "$@")
}

open_notebook_stop() {
	(cd ~/open-notebook && docker compose stop "$@")
}

open_notebook_down() {
	(cd ~/open-notebook && docker compose down "$@")
}

litellm_up() {
	(cd ~/litellm && docker compose up -d "$@")
}

litellm_stop() {
	(cd ~/litellm && docker compose stop "$@")
}

litellm_down() {
	(cd ~/litellm && docker compose down "$@")
}
