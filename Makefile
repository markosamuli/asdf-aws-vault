PRE_COMMIT_HOOKS=.git/hooks/pre-commit
DIR=$(shell pwd)

.PHONY: test
test:
	@asdf plugin-test aws-vault ${DIR} "aws-vault --version"

.PHONY: lint
lint: $(PRE_COMMIT_HOOKS)
	@pre-commit run -a

.PHONY: install-git-hooks
install-git-hooks: $(PRE_COMMIT_HOOKS)

$(PRE_COMMIT_HOOKS):
	@pre-commit install --install-hooks
