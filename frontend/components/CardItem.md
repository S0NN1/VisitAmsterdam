CardItem example

[**FIGURE TYPE**]

```vue

<template>
  <div class="h-fit ">
    <CardItem :object="object" :card-type="'FIGURE'"></CardItem>
  </div>
</template>
<script>

export default {
  data() {
    return {
      object: {
        heroImage: "https://api.lorem.space/image/burger?w=450&h=220",
        name: "Card"
      }
    }
  }
}
</script>
```

[**EVENT TYPE**]:

```vue

<template>
  <CardItem :object="object" :card-type="'EVENT'"></CardItem>
</template>
<script>

export default {
  data() {
    return {
      object: {
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

[**MULTIPLE TYPE**]:

```vue

<template>
  <div class="grid grid-cols-1 md:grid-cols-2 flex gap-3">
    <CardItem class=" flex box-shadow-card flex w-fit" :object="object" :card-type="'MULTIPLE'"></CardItem>
    <CardItem class=" flex box-shadow-card flex w-fit" :object="object2" :card-type="'MULTIPLE'"></CardItem>
  </div>
</template>
<script>

export default {
  data() {
    return {
      object: {
        name: "Card",
        heroImage: "https://api.lorem.space/image/burger?w=100&h=100",
      },
      object2: {
        name: "Card2",
        heroImage: "https://api.lorem.space/image/pizza?w=100&h=100",
      }
    }
  }
}
</script>
```

[**SEARCH TYPE**]:

```vue

<template>
  <CardItem class="w-fit" :object="object" :card-type="'SEARCH'"></CardItem>
</template>
<script>

export default {
  data() {
    return {
      object: {
        description: "A single event description",
        name: "Card",
        type: "Service",
        heroImage: 'https://api.lorem.space/image/drink?w=250&h=100'
      }
    }
  }
}
</script>
```

[**COMPLEX TYPE**]:

```vue

<template>
  <CardItem class="w-fit" :object="object" :card-type="'COMPLEX'"></CardItem>
</template>
<script>

export default {
  data() {
    return {
      object: {
        description: "A single event description",
        name: "Card",
        stops: [
          {heroImage: 'https://api.lorem.space/image/car?w=250&h=100'},
          {heroImage: 'https://api.lorem.space/image/car?w=250&h=100'},
          {heroImage: 'https://api.lorem.space/image/car?w=250&h=100'}
        ]
      }
    }
  }
}
</script>
```
