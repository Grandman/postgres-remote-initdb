#!/usr/bin/env sh
set -ex

TEMP_FILE=/tmp/postgres-remote-initdb.sql
ON_ERROR_STOP=${ON_ERROR_STOP:-0}

curl --silent --compressed -H "Accept-Encoding: deflate" "${SRC_URL}" > "${TEMP_FILE}"
psql --variable=ON_ERROR_STOP="${ON_ERROR_STOP}" --username="${POSTGRES_USER}" --file="${TEMP_FILE}" "${POSTGRES_DB}"
rm "${TEMP_FILE}"
