---
layout: left-right-header
---

::header::

<Heading>Server: HTTP</Heading>

::left::

<div v-click>
```shell
$ curl example.com
<!doctype html>
<html>
  ...
</html>
```
</div>

<div v-click>
```shell
$ curl --verbose example.com
...
```
</div>

<div v-click>
```shell
$ curl --verbose example.com:80
...
```
</div>

<div v-click>
```shell
$ curl --verbose "telnet://example.com:80"
...
```
</div>
