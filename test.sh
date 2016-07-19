#!/usr/bin/env bash
mkdir -p report

#export DRIVER="firefox"

bundle exec parallel_cucumber features

cd report && report_builder