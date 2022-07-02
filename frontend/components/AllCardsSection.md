AllCardsSection example

[**DEFAULT TYPE**]

```vue

<template>
  <AllCardsSection :elements="elements"></AllCardsSection>
</template>
<script>

export default {
  data() {
    return {
      elements: [
        {
          name: "Card",
          heroImage: "https://api.lorem.space/image/burger?w=1000&h=1000",
          id: 1
        },
        {
          name: "Card",
          heroImage: "https://api.lorem.space/image/burger?w=1000&h=1000",
          id: 2
        },
        {
          name: "Card",
          heroImage: "https://api.lorem.space/image/burger?w=1000&h=1000",
          id: 3
        }
      ]
    }
  }

}
</script>

```

[**ITINERARY TYPE**]

```vue

<template>
  <AllCardsSection :elements="elements" :page-type="'itineraries'"></AllCardsSection>
</template>
<script>

export default {
  data() {
    return {
      elements: [{
        description: 'brief description',
        tags: [{name: 'RELAX'}],
        duration: 6,
        stops: [
          {heroImage: 'https://api.lorem.space/image/game?w=1920&h=1080'},
          {heroImage: 'https://api.lorem.space/image/game?w=1920&h=1080'},
          {heroImage: 'https://api.lorem.space/image/game?w=1920&h=1080'}
        ],
        name: "Card",
        heroImage: "https://api.lorem.space/image/burger?w=1000&h=1000",
        id: 1
      },
      ]
    }
  }

}
</script>
```
