.PHONY: build build-web clean run run-web

clean:
	@rm -rf build*/

build:
	@cmake -S . -B build/
	@cmake --build build/

build-web:
	@emcmake cmake -S . -B build-web/
	@cmake --build build-web/

run-web:
	@./build-web/run_webassembly.py
	@echo "Build complete, visit localhost:8000."

run:
	@./build/ftxui-starter