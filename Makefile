# Alternative GNU Make workspace makefile autogenerated by Premake

ifndef config
  config=debug_win32
endif

ifndef verbose
  SILENT = @
endif

ifeq ($(config),debug_win32)
  WavefrontObjParserTest_config = debug_win32

else ifeq ($(config),debug_linux)
  WavefrontObjParserTest_config = debug_linux

else ifeq ($(config),release_win32)
  WavefrontObjParserTest_config = release_win32

else ifeq ($(config),release_linux)
  WavefrontObjParserTest_config = release_linux

else
  $(error "invalid configuration $(config)")
endif

PROJECTS := WavefrontObjParserTest

.PHONY: all clean help $(PROJECTS) 

all: $(PROJECTS)

WavefrontObjParserTest:
ifneq (,$(WavefrontObjParserTest_config))
	@echo "==== Building WavefrontObjParserTest ($(WavefrontObjParserTest_config)) ===="
	@${MAKE} --no-print-directory -C . -f WavefrontObjParserTest.make config=$(WavefrontObjParserTest_config)
endif

clean:
	@${MAKE} --no-print-directory -C . -f WavefrontObjParserTest.make clean

help:
	@echo "Usage: make [config=name] [target]"
	@echo ""
	@echo "CONFIGURATIONS:"
	@echo "  debug_win32"
	@echo "  debug_linux"
	@echo "  release_win32"
	@echo "  release_linux"
	@echo ""
	@echo "TARGETS:"
	@echo "   all (default)"
	@echo "   clean"
	@echo "   WavefrontObjParserTest"
	@echo ""
	@echo "For more information, see https://github.com/premake/premake-core/wiki"