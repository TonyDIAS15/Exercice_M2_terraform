# =========== REPRODUCTIVITE AND HARDENING ============
SHELL := /bin/bash
.SHELLFLAGS := -eu -o pipefail -c
# =========== COLOR ANSI ================
INFO_COLOR := \033[36;1m
WARNING_COLOR := \033[33;1m
ERROR := \033[31;1m
RESET_COLOR := \033[0m
# =======================================

.PHONY: help
.DEFAULT_GOAL := help

help: ## show help
	@grep -E "^[a-z0-9A-Z._-]+:.*?## .*$$" $(MAKEFILE_LIST) |\
	 sort | awk 'BEGIN {FS=":.*?##"} {printf "$(INFO_COLOR)%-20s$(RESET_COLOR)%s\n", $$1, $$2}'
