# Makefile — lower the core FML stdlib to Lua
#
# Requires fml-parser to be installed:
#   pip install "fml_parser @ git+https://github.com/TowerCrawlerAI/fml-parser@main"
# or locally (dev):
#   pip install -e /path/to/fml-parser
#
# Usage:
#   make              # build/stdlib.lua (default)
#   make lower        # same
#   make clean        # remove build/stdlib.lua

CORE_INDEX  := core/index.md
BUILD_DIR   := build
STDLIB_LUA  := $(BUILD_DIR)/stdlib.lua

.PHONY: all lower clean

all: lower

lower: $(STDLIB_LUA)

$(STDLIB_LUA): $(shell find core -name '*.md')
	@mkdir -p $(BUILD_DIR)
	python3 -m fml_parser --stdlib-module $(CORE_INDEX) -o $(STDLIB_LUA)
	@echo "Lowered $(CORE_INDEX) -> $(STDLIB_LUA) ($$(wc -l < $(STDLIB_LUA)) lines)"

clean:
	rm -f $(STDLIB_LUA)
