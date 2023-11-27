.PHONY: build build-web clean run run-web

clean:
	@rm -rf build*/

build:
	@cmake -S . -B build/ -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
	@cmake --build build/

build-web:
	@emcmake cmake -S . -B build-web/ -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
	@cmake --build build-web/

run-web:
	@./build-web/run_webassembly.py
	@echo "Build complete, visit localhost:8000."

run:
	@./build/ftxui-starter