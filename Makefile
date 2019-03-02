WHEEL_FILE = $(wildcard dist/*.whl)

generate:
	python3 setup.py sdist bdist_wheel

install:
	pip3 install ${WHEEL_FILE}[dev]

uninstall:
	pip3 uninstall -y propose

spec:
	pytest test

setup: generate install

reload: uninstall generate install
