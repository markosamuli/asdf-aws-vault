PRE_COMMIT_HOOKS=.git/hooks/pre-commit

.PHONY: lint
lint: $(PRE_COMMIT_HOOKS)
	@pre-commit run -a

$(PRE_COMMIT_HOOKS):
	@pre-commit install
