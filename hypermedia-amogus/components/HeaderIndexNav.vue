<template>
  <div class="w-full flex">
    <div class="flex w-full drop-shadow-lg rounded-xl">
      <div class="w-3/12 p-4">
        <svg id="a" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 2500 735.36" width="4rem">
          <defs>
            <style>.b {
              fill: white;
              }</style>
          </defs>
          <path
            class="b"
            d="M2353.24,735.36l-220.53-220.53-220.53,220.53-147.15-147.15,220.53-220.53-220.53-220.53L1912.18,0l220.53,220.53L2353.24,0l146.76,147.55-220.53,220.53,220.53,220.53-146.76,146.76Zm-1765.43,0l-220.53-220.53-220.14,220.53L0,588.21l220.53-220.53L0,147.55,147.15,.39l220.53,220.53L588.21,.39l146.76,147.15-220.53,220.53,220.53,220.53-147.15,146.76Zm883.3,0l-220.53-220.53-220.14,220.53-147.15-147.15,220.53-220.53-220.53-220.53L1030.46,0l220.53,220.53L1471.52,0l146.76,147.55-220.53,220.53,220.53,220.53-147.15,146.76Z"
          />
        </svg>
      </div>

      <div class="flex w-9/12 justify-end">
        <div class="w-9/12">
          <ul class="menu menu-horizontal p-0 text-sm text-white">
            <li class="mx-4">
              <NuxtLink to="home">
                <b>Home</b>
              </NuxtLink>
            </li>
            <li class="mx-5">
              <NuxtLink to="events">
                <b>Events</b>
                <!--              <svg class="fill-current" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24">
                                <path d="M7.41,8.58L12,13.17L16.59,8.58L18,10L12,16L6,10L7.41,8.58Z"/>
                              </svg>-->
              </NuxtLink>
            </li>
            <li class="mx-5">
              <NuxtLink to="/itineraries">
                <b>Itineraries</b>
              </NuxtLink>
            </li>
            <li class="mx-5">
              <NuxtLink to="pointsOfInterest">
                <b>Point of Interests</b>
              </NuxtLink>
            </li>
            <li class="mx-5">
              <NuxtLink to="services">
                <b>Services</b>
              </NuxtLink>
            </li>
            <li class="mx-5">
              <NuxtLink to="#">
                <b>About</b>
              </NuxtLink>
            </li>
            <li class="mx-5">
              <NuxtLink to="/tos">
                <b>Terms of Use</b>
              </NuxtLink>
            </li>
          </ul>
        </div>
        <div class="w-fit flex items-center fill-white">
          <div class="mx-4">
            <PhoneIcon width="1.5rem" height="1.5rem" />
          </div>
          <div class="mx-4">
            <QuestionIcon width="1.5rem" height="1.5rem" />
          </div>
          <div class="mx-4">
            <WorldwideIcon width="1.5rem" height="1.5rem" />
          </div>
          <div class="mx-4">
            <UserIcon width="1.5rem" height="1.5rem" />
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import PhoneIcon from '@/components/icons/PhoneIcon'
import QuestionIcon from '@/components/icons/QuestionIcon'
import WorldwideIcon from '@/components/icons/WorldwideIcon'
import UserIcon from '@/components/icons/UserIcon'

export default {
  name: 'HeaderIndexNav',
  components: {
    UserIcon,
    WorldwideIcon,
    QuestionIcon,
    PhoneIcon
  }
}
</script>

<style scoped>

</style>
