#!/bin/bash
mkdir -p cucumber_output
#cucumber --require features --require ./bdd-helper --format pretty --format html --out cucumber_output/report.html
parallel_cucumber features/test/demo.feature -n 2 --group-by scenarios -o "--require features --require ./bdd-helper --format pretty --format html --out cucumber_output/report.html"