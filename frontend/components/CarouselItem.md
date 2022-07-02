CarouselItem example

[**COMPLEX TYPE**]

```vue

<template>
  <div class="h-fit ">
    <CarouselItem :carousel-images="carouselImages" :is-complex="true"></CarouselItem>
  </div>
</template>
<script>

export default {
  data() {
    return {
      carouselImages: [
        {
          heroImage: 'https://api.lorem.space/image/game?w=1920&h=1080',
          name: 'item4',
          description: 'brief description',
          date: 'Wednesday 17',
          time: '20.30',
          link: 'https://google.com'
        }, {
          heroImage: 'https://api.lorem.space/image/movie?w=1920&h=1080',
          name: 'item5',
          description: 'brief description',
          date: 'Wednesday 17',
          time: '20.30',
          link: 'https://google.com'
        }, {
          heroImage: 'https://api.lorem.space/image/album?w=1920&h=1080',
          name: 'item6',
          description: 'brief description',
          date: 'Wednesday 17',
          time: '20.30',
          link: 'https://google.com'
        }],
    }
  }
}
</script>
```

[**SIMPLE TYPE**]:

```vue

<template>
  <div class="h-fit">
    <CarouselItem :carousel-images="carouselImages2" :is-complex="false"></CarouselItem>
  </div>
</template>
<script>

export default {
  data() {
    return {
      carouselImages2: [
        {
          image: 'https://api.lorem.space/image/drink?w=1920&h=1080'
        }, {
          image: 'https://api.lorem.space/image/burger?w=1920&h=1080'
        }, {
          image: 'https://api.lorem.space/image/car?w=1920&h=1080'
        }],
    }
  }
}
</script>
```
