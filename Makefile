PUBLISH_OPTS = --no-preserve --exclude='.git*'

.PHONY: publish

publish:
	s3cmd $(PUBLISH_OPTS) sync ./ s3://zqureshi-in
