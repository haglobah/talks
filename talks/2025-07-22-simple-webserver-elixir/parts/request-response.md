---
layout: header
---

::header::
<Heading>Web: Accessing a Server</Heading>

::main::

<div class="absolute left-45 top-25"
     v-click="['1', '2']">
<Transform :scale="2">

```mermaid
sequenceDiagram
        actor Client
        actor DNS
        actor B as beathagenlocher.com
        Client->>DNS: dig beathagenlocher.com
```

</Transform>
</div>
<div class="absolute left-45 top-25"
     v-click="['2', '3']">
<Transform :scale="2">

```mermaid
sequenceDiagram
        actor Client
        actor DNS
        actor B as beathagenlocher.com
        Client->>DNS: dig beathagenlocher.com
        DNS->>Client: 217.197.84.140
```

</Transform>
</div>
<div class="absolute left-45 top-25"
     v-click="['3', '4']">
<Transform :scale="2">

```mermaid
sequenceDiagram
        actor Client
        actor DNS
        actor B as beathagenlocher.com
        Client->>DNS: dig beathagenlocher.com
        DNS->>Client: 217.197.84.140
        Client->>B: GET / 217.194.84.140
```

</Transform>
</div>
<div class="absolute left-45 top-25"
     v-click="4">
<Transform :scale="2">

```mermaid
sequenceDiagram
        actor Client
        actor DNS
        actor B as beathagenlocher.com
        Client->>DNS: dig beathagenlocher.com
        DNS->>Client: 217.197.84.140
        Client->>B: GET / 217.194.84.140
        B->>Client: 200 OK
```

</Transform>
</div>
