# Public Tap Maintenance

This tap and the companion app are public. All tracked files, commit/tag messages,
release notes and installer binaries must use generic examples and role wording.
Never include employer/customer/colleague names, internal hosts, proxy URLs,
service/repository names, ticket keys, Slack channels or company branding names.
Use `example.invalid` and synthetic, metadata-free fixtures; never force-add data.

Before committing, verify `git config user.name` is `sichgeis` and
`git config user.email` is `25384988+sichgeis@users.noreply.github.com`.
Use that identity for commits and annotated tags. Do not alter global settings.
Before pushing run `python3 scripts/check-public-hygiene.py --history` and
`python3 scripts/test-public-hygiene.py`. Private deny terms belong only in
untracked `.git/info/hygiene-denylist`, one literal per line. Without a list the
script checks generic identities, emails, paths and hostnames. Before releases,
scan optimized app strings with `--binary <executable>` and inspect metadata.

Preserve user work. Do not force-push or rewrite history unless the owner
explicitly authorizes a data-removal scrub; record its reason and evidence in
the companion app's run tracker. Updating cask version/checksum requires the
companion app release approval and independent asset-download verification.
Never remove quarantine, reset permissions, read keys or launch/kill apps in hooks.
