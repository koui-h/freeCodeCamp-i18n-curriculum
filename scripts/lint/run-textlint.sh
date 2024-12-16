#!/bin/bash

set -euC
#set -x

declare -A LANG_PATHS=(
	["ja"]="curriculum/challenges/japanese/"
)

function usage() {
	cat <<EOS
Usage:  ${0} [ja] [git|all]

  language: The language of the markdown files to lint.
    ja: Japanese

  target_files <git|all>
    git: Lint only the files that have been changed in the commit.
    all: Lint all files in the repository.

EOS
	exit 1
}

function parse_args() {
	if [[ $# != 2 ]]; then
		usage
	fi
	echo "${1} ${2}"
}

function run_textlint() {
	local -r _language="${1}"
	local -r _target_files="${2}"
	local -r TARGET_FOLDER="${LANG_PATHS[${_language}]}"
	local files=()

	if [[ "${_target_files}" == "git" ]]; then
		mapfile -t files < <(git diff --name-only HEAD "${TARGET_FOLDER}" | grep -E '\.md$')
	elif [[ "${_target_files}" == "all" ]]; then
		mapfile -t files < <(find "${TARGET_FOLDER}" -type f -name "*.md")
	else
		usage
	fi

	if [ ${#files[@]} -eq 0 ]; then
		echo "No markdown files to lint."
		exit 0
	fi

	SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[1]}")" && pwd)
	CONFIG_PATH="${SCRIPT_DIR}/.textlintrc.${_language}.json"

	for file in "${files[@]}"; do
		echo "Linting ${file}"
		bash -c "textlint --config ${CONFIG_PATH} ${file}" || true
	done
}

function main() {
	local -r _language="${1}"
	local -r _target_files="${2}"

	run_textlint "${_language}" "${_target_files}"
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
	read -r language target_files < <(parse_args "$@")
	main "${language}" "${target_files}"
fi
