# Ubuntu hardening based on CIS standards using Salt
## Issue with Salt GitFS
- https://www.reddit.com/r/saltstack/comments/sw54z2/faster_development_of_states_when_using_gitfs/
- https://clinta.github.io/salt-git-nogitfs/

## Links
- https://downloads.cisecurity.org/#/
- https://github.com/perfecto25/salt_cis_centos7

## Run this formula
### Debugging
```shell
# List nodes
salt-run manage.up

# List grains
sudo salt '*' grains.items

# Show files (incl. merged rootfs and gitfs)
sudo salt-run fileserver.dir_list

# Show sls
sudo salt 'node01' state.show_sls cis test=True

# Dry-run the state
sudo salt 'node01' state.apply cis test=True

```
