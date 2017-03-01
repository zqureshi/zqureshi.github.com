PUBLISH_OPTS = --no-preserve --exclude='.git*' --exclude='Makefile' --exclude='*.swp'

.PHONY: publish clean

publish:
	s3cmd $(PUBLISH_OPTS) sync ./ s3://zqureshi-in

clean:
	s3cmd -rf rm s3://zqureshi-in
