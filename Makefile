all: test clean
clean:
	rm -v */*.log

test:
	bash -ec 'for d in */after.sh;do (cd $$(dirname $$d)  && echo testing $$(pwd) && ./after.sh ) ;done'
