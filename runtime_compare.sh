#!/bin/bash
echo "Running Go benchmark..."
go_time=$(go run main.go | grep -o '[0-9.]*' | head -1)

echo "Running Javascript benchmark..."
js_time=$(node main.js | grep -o '[0-9.]*' | head -1)

echo "---- Comparison ----"
echo "Go: ${go_time} ms" > result.txt
echo "JavaScript: ${js_time} ms" >> result.txt
echo "Fuck when the calculation is so high the go absolutely wins"
