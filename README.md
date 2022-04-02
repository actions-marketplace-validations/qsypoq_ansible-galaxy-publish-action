# ansible-galaxy-publish-action
Build & Publish collection to Ansible Galaxy server.

# Usage

See [action.yml](action.yml)

Basic, publish to https://galaxy.ansible.com:
```yaml
steps:
- uses: actions/checkout@v3

- name: Build & Publish collection to Ansible Galaxy
  uses: qsypoq/ansible-galaxy-publish-action@v0.0.3
  with:
    galaxy_token: ${{secrets.GALAXY_TOKEN}}
```

Support publishing to private galaxy server:
```yaml
steps:
- uses: actions/checkout@v3

- name: Build & Publish collection to Ansible Galaxy
  uses: qsypoq/ansible-galaxy-publish-action@v0.0.3
  with:
    galaxy_token: ${{secrets.GALAXY_TOKEN}}
    galaxy_server: yoururl
```
