HeroImage example

[**DEFAULT**]

```vue

<template>
  <div class="h-fit ">
    <HeroImage/>
  </div>
</template>
<script>

export default {}
</script>
```

[**TITLE**]

```vue

<template>
  <div class="h-fit ">
    <HeroImage :title="title"/>
  </div>
</template>
<script>

export default {
  data() {
    return {
      title: 'Title test'
    }
  }
}
</script>
```
