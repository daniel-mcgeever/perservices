#!/usr/bin/env bash
# Docker infra env for perservices

set -Eeuo pipefail

# ========= GLOBAL PATHS =========
export INFRA_ROOT="/srv/infra"
export INFRA_STACKS_DIR="${INFRA_ROOT}/stacks"
export INFRA_SCRIPTS_DIR="${INFRA_ROOT}/scripts"
export INFRA_BACKUP_DIR="${INFRA_ROOT}/backup"
export INFRA_SECRETS_DIR="${INFRA_ROOT}/secrets"

# ========= HOST / DOCKER CONTEXT =========
export DOCKER_CONTEXT_NAME="default"   # change if you ever use non-default contexts

# ========= EXISTING STACK LOCATIONS (LEGACY) =========
export OLD_APPS_DIR="/opt/apps"
export OLD_PORTAINER_AGENT_DIR="/opt/portainer_agent"

# ========= STACK NAMES (STANDARDISED) =========
export STACK_APPS_NAME="apps"
export STACK_HOMEBOX_NAME="homebox"
export STACK_HOME_NAME="home"
export STACK_PORTAINER_AGENT_NAME="portainer-agent"

# ========= PORTS (DOCUMENTATION) =========
export MEALIE_PORT_HOST="9925"
export MEALIE_PORT_CONTAINER="9000"

export HOMEBOX_PORT_HOST="9926"
export HOMEBOX_PORT_CONTAINER="7745"

export FIREFLY_PORT_HOST="9927"
export FIREFLY_PORT_CONTAINER="8080"

export HOME_PORT_HOST="8090"
export HOME_PORT_CONTAINER="80"

export PORTAINER_AGENT_PORT_HOST="9001"
export PORTAINER_AGENT_PORT_CONTAINER="9001"

# ========= GIT (FILL THESE IN) =========
# Set to your real infra repo
export GIT_REMOTE_URL="git@github.com:daniel-mcgeever/perservices.git"
export GIT_DEFAULT_BRANCH="main"

# ========= HELPER COMMANDS (DOCS ONLY) =========
# To inspect existing app secrets from legacy .env:
#   grep -E '^(POSTGRES_DB|POSTGRES_USER|POSTGRES_PASSWORD|MEALIE_SECRET|MEALIE_BASE_URL|FIREFLY_.*|HBOX_ALLOWED_HOSTS)=' "${OLD_APPS_DIR}/.env"
#
# To see current Postgres creds:
#   grep -E '^(POSTGRES_DB|POSTGRES_USER|POSTGRES_PASSWORD)=' "${OLD_APPS_DIR}/.env"
#
# To see current FIREFLY secret vars:
#   grep -E '^FIREFLY_' "${OLD_APPS_DIR}/.env"
