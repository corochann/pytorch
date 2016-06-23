# Add main target here - setup.py doesn't understand the need to recompile
# after generic files change
.PHONY: all clean torch

all: torch install

torch:
	python3 setup.py build

install:
	python3 setup.py install

clean:
	@rm -rf build
	@rm -rf dist
	@rm -rf torch.egg-info
	@rm -rf tools/__pycache__
	@rm -rf torch/csrc/generic/TensorMethods.cpp
