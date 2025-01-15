---
layout: mono-header
---

::main::

<div v-click class="my-10 w-prose">

Functional Programming is a <em>programming style</em> in which one models the real world as a pure function.  
You can write a functional program in almost every language—all you need are first class functions. Closures, immutable data and recursion help, too.  
Writing functionally makes programs more declarative, simpler and less coupled <em>by default.</em>

</div>

<Highlight v-click class="text-center">
  Functional Programming is a big jump.
</Highlight>

---
layout: mono-header
---

::header::

<Heading>4 | A jump</Heading>

::main::

<div class="grid grid-cols-5 gap-2 w-full items-start" style="grid-template-rows: 1fr 0.5fr;">
  <div class="flex flex-col overflow-hidden">
    <Highlight class="text-sienna mb-4 text-center">Early days</Highlight>
    <img class="object-cover h-full rounded my-1" src="https://upload.wikimedia.org/wikipedia/commons/d/d3/Glen_Beck_and_Betty_Snyder_program_the_ENIAC_in_building_328_at_the_Ballistic_Research_Laboratory.jpg" />
  </div>
  <div class="flex flex-col overflow-hidden">
    <Highlight class="text-sienna mb-4 text-center">Assembly</Highlight>

<div class="h-60">

```asm
pushq %rbp
movq %rsp, %rbp

movq $0, obs(%rip)

leaq obs(%rip), %rdi
call add_objs

leaq res(%rip), %rdi
leaq obs(%rip), %rsi
call calc

movq %rbp, %rsp
popq %rbp
ret
```

</div>
</div>
  <div class="flex flex-col shrink overflow-hidden">
    <Highlight class="text-sienna mb-4 text-center">C</Highlight>

```c
char *result = NULL;
t_large *obs = NULL;
add_objs(obs);
calc(result, obs);

return (result);
```

  </div>
  <div class="flex flex-col shrink  overflow-hidden">
    <Highlight class="text-sienna mb-4 text-center">Java</Highlight>

  <div class="h-60">
    
```java
ObjectManager objectManager =
  new ObjectManager();
objectManager.addObjects();

Calculator calculator =
  new Calculator();
String result =
  calculator.calculate(
    objectManager.getObjects()
  );

System.out.println(result);
```

</div>
</div>
  <div class="flex flex-col overflow-hidden">
    <Highlight class="text-sienna mb-4 text-center">Elixir</Highlight>

```elixir
large_objects =
  init_objects()
result =
  compute(
    large_objects,
    fn x -> x * x end)
```
  
  </div>
  <div class="">
  </div>
  <v-clicks>
  <div class="flex flex-col list-none">
    <li><Highlight>+</Highlight> text; <br> different machines</li>
    <li><Highlight>-</Highlight> control over machine</li>
  </div>
  <div class="flex flex-col list-none">
    <li><Highlight>+</Highlight> procedures; <br> different architectures</li>
    <li><Highlight>-</Highlight> registers</li>
  </div>
  <div class="flex flex-col list-none">
    <li><Highlight>+</Highlight> objects; classes</li>
    <li><Highlight>-</Highlight> pointers; <Code>malloc()</Code></li>
  </div>
  <div class="flex flex-col list-none">
    <li><Highlight>+</Highlight> just about everything</li>
    <li><Highlight>-</Highlight> just about everything</li>
  </div>
  </v-clicks>
</div>

---
layout: mono-header
---

::header::

<Heading>4 | A Jump </Heading>

::main::

<div class="grid grid-cols-2 h-full w-full self-start">
  <div class="flex flex-col">
    <Highlight class="text-sienna text-center">Turing Machine</Highlight>
 
<ul class="mx-10 list-disc">
  <li>has state</li>
  <li>We mutate the state to get a result</li>
</ul>
    
  </div>
  <div class="flex flex-col">
    <Highlight class="text-sienna text-center">Lambda Calculus</Highlight>
<ul class="mx-10 list-disc">
  <li>doesn't have state</li>
  <li>We create functions, evaluate them, and get a result.</li>
</ul>
  </div>
</div>
