mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))

REGISTRY_NAME := "zolotyh"
IMAGE_NAME := $(current_dir)
IMAGE_VERSION := "9.6"

all: build
.PHONY : all

build:
	@echo BUILD IMAGES
	@(docker build -t ${REGISTRY_NAME}/${IMAGE_NAME}:${IMAGE_VERSION} .)
