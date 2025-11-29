.PHONY: all clean default install check pc test

default: check

update:
	prek auto-update

check: pc
pc:
	prek run -a

bumped:
	git cliff --bumped-version

# make release-tag_name
# make release-$(git cliff --bumped-version)-alpha.0
release-%: check
	git cliff -o CHANGELOG.md --tag $*
	prek run --files CHANGELOG.md || prek run --files CHANGELOG.md
	git add CHANGELOG.md
	git commit -m "chore(release): prepare for $*"
	git push
	git tag -a $* -m "chore(release): $*"
	git push origin $*
	git tag --verify $*
