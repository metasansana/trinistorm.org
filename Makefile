
.DELETE_ON_ERROR:

assets/css/sana.css: $(shell find src -type f)
	mkdir -p $(dir $@);
	./node_modules/.bin/lessc \
	src/less/sana.less \
	| ./node_modules/.bin/cleancss > $@
