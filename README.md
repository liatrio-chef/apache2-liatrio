apache2-liatrio Cookbook
========================
This is a simple example wrapper cookbook that installs apache2 and configures it to serve Hygieia UI and reverse proxy Hygieia API.

Requirements
------------
Berkshelf

Vagrant

Usage
-----
#### apache2-liatrio::default

`vagrant up`

or 

Just include `apache2-liatrio` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[apache2-liatrio]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Drew Holt <drew@liatrio.com>
