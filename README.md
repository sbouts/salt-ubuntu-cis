# Ubuntu hardening based on CIS standards using Salt
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

# Dry-run the state
sudo salt 'node01' state.apply test=True
```
