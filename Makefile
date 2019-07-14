PRE_COMMIT_HOOKS=.git/hooks/pre-commit
DIR=$(shell pwd)

.PHONY: test
test:
	@asdf plugin-test aws-vault ${DIR} "aws-vault --version"

.PHONY: lint
lint: $(PRE_COMMIT_HOOKS)
	@pre-commit run -a

$(PRE_COMMIT_HOOKS):
	@pre-commit install
