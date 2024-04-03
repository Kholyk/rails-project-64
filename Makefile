install:
	bundle install
lint:
	bundle exec rubocop
test:
	bundle exec rake test
.PHONY: test
slim-lint:
	bundle exec slim-lint app/views/