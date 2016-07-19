#!/usr/bin/env bash

#clean old report
rm -fr report

#kill browsers since some unexpected error
kill -9 $(ps -ef|grep -E 'Safari|firefox|Chrome'|grep -v grep|awk '{print $2}')

#ps -ef | grep '{$1}' | grep -v grep | awk '{print $2}' | xargs kill -9
