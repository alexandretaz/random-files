#!/bin/bash

for i in `\ls *pas`;do fpc $i || exit ;done
