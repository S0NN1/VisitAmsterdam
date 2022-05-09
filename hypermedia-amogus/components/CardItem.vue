<template>
  <div v-if="isFigure" class="card w-96 bg-base-100 shadow-xl">
    <figure><img :src="object.image" alt="object.name"></figure>
    <!--    <div class="card-body">-->
    <!--      <h2 class="card-title">-->
    <!--        Shoes!-->
    <!--      </h2>-->
    <!--      <p>If a dog chews shoes whose shoes does he choose?</p>-->
    <!--      <div class="card-actions justify-end">-->
    <!--        <button class="btn btn-primary">-->
    <!--          Buy Now-->
    <!--        </button>-->
    <!--      </div>-->
    <!--    </div>-->
  </div>
  <div v-else class="card w-96 bg-base-100 shadow-xl">
    <figure><img src="https://via.placeholder.com/1920x1080" alt="Shoes"></figure>
    <!--    <div class="card-body">-->
    <!--      <h2 class="card-title">-->
    <!--        Shoes!-->
    <!--      </h2>-->
    <!--      <p>If a dog chews shoes whose shoes does he choose?</p>-->
    <!--      <div class="card-actions justify-end">-->
    <!--        <button class="btn btn-primary">-->
    <!--          Buy Now-->
    <!--        </button>-->
    <!--      </div>-->
    <!--    </div>-->
  </div>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  props: {
    isFigure: {
      type: Boolean,
      default: true
    },
    object: {
      type: Object,
      default: () => {
      }
    }
  },
  data () {
    return {}
  },
  methods: {}
})
</script>
