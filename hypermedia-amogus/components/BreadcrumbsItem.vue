<template>
  <div class="flex w-full justify-start mt-10 mb-10">
    <NuxtLink to="/home">
      <span class="text-base text-secondary">Home</span>
    </NuxtLink>
    <div
      v-for="(crumb, index) in crumbs"
      :key="index"
    >
      <span class="text-base text-secondary">&nbsp;>&nbsp;</span>
      <NuxtLink :to="crumb.path">
        <span class="text-base text-secondary">{{
          $route.fullPath === crumb.path && title !== null ? title : crumb.title
        }}</span>
      </NuxtLink>
    </div>
  </div>
</template>
<script lang="ts">
import Vue from 'vue'

const titleCase = require('ap-style-title-case')
export default Vue.extend({
  props: {
    title: {
      type: String,
      default: null
    }
  },
  computed: {
    crumbs () {
      const fullPath = this.$route.fullPath
      const params = fullPath.startsWith('/')
        ? fullPath.substring(1).split('/')
        : fullPath.split('/')
      const crumbs: Object[] = []
      let path = ''
      params.forEach((param) => {
        path = `${path}/${param}`
        const match = this.$router.match(path)
        if (match.name !== null) {
          crumbs.push({
            title: titleCase(param.replace(/-/g, ' ')),
            ...match
          })
        }
      })
      return crumbs
    }
  }
})
</script>

<style scoped>
</style>
