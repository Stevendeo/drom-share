# Drom Share Directory

Versioned files for `drom`

## How to update

1. Modify the files you need to
2. Push in a branch
3. Test using `--share-version <local>:<branch>` where `<local>` is a remote
   to your local GIT repository from
   `$HOME/.config/drom/shares/7413cde042d5d886501c908e2ea77f6d`
   and `<branch>` is the branch you want to test
4. Edit the files:
   * `VERSION`: the new version of this branch
   * `LATEST`: a *stable* version that users are advised to use
   * `DROM_VERSION`: if `drom` must be upgraded to use this version
5. Push to `master` and remote tag the version

