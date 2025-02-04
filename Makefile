

.PHONY: docs-setup
docs-setup: ##@Docs Setup environment for building and serving the documentation.
	@if ! command -v python3 &> /dev/null
		then echo "python3 could not be found. Please install it and try again."
		exit 1
		fi
	@if ! command -v pip3 &> /dev/null
		then echo "pip3 could not be found. Please install it and try again."
		exit 1
		fi
	$(shell pip3 install -r requirements.txt)

.PHONY: docs
docs: ##@Docs Build and serve docs locally. Needs mkdocs and python3.
	mkdocs serve

HELP_FUN = \
	%help; while(<>){push@{$$help{$$2//'options'}},[$$1,$$3] \
	if/^([\w-_]+)\s*:.*\#\#(?:@(\w+))?\s(.*)$$/}; \
	print"\033[1m$$_:\033[0m\n", map"  \033[36m$$_->[0]\033[0m".(" "x(20-length($$_->[0])))."$$_->[1]\n",\
	@{$$help{$$_}},"\n" for keys %help; \

.PHONY: help
help: ##@General Show this help
	@echo -e "Usage: make \033[36m<target>\033[0m\n"
	@perl -e '$(HELP_FUN)' $(MAKEFILE_LIST)
