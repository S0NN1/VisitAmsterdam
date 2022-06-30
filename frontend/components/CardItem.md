CardItem [**FIGURE TYPE**] example :

```vue

<template>
  <div class="h-fit">
    <CardItem :object="object" :card-type="'FIGURE'"></CardItem>
    <div class="h-fit">
</template>
<script>
import heroImage from "./HeroImage";

export default {
  props: {
    object: {
      type: Object,
      default: {
        heroImage: "https://c.tenor.com/bFIgXs5AAvIAAAAC/skeleton-trumpet.gif",
        name: "Card"
      }
    }
  }
}
</script>
```

CardItem [**EVENT TYPE**] example :

```vue

<template>
  <CardItem :object="object" :card-type="'EVENT'"></CardItem>
</template>
<script>
import heroImage from "./HeroImage";

export default {
  props: {
    object: {
      type: Object,
      default: {
        description: "A single event description",
        name: "Card",
        date: "01/01/2023",
        time: '10:30'
      }
    }
  }
}
</script>
```
