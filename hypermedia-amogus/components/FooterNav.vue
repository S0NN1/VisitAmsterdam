<template>
  <footer class="footer p-10 text-base-content">
    <div class="w-4/5 m-auto flex justify-around items-stretch">
      <div class="w-3/5 bg-base-100 drop-shadow-[0_-10px_8px_rgba(0,0,0,0.08)] rounded-3xl">
        <div class="p-2 grid grid-rows-2 grid-flow-col gap-2 h-full">
<!--          <div class="w-auto row-span-2 mx-0"></div>-->
          <div class="mr-4 my-auto row-span-2 col-span-2 border-r-2 border-[#F2D742]">
            <div class="w-4/5 mx-auto items-center justify-center">
              <svg id="a" class="" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 2500 735.36">
                <defs>
                  <style>.b {
                    fill: #f05a28;
                    }</style>
                </defs>
                <path
                  class="b"
                  d="M2353.24,735.36l-220.53-220.53-220.53,220.53-147.15-147.15,220.53-220.53-220.53-220.53L1912.18,0l220.53,220.53L2353.24,0l146.76,147.55-220.53,220.53,220.53,220.53-146.76,146.76Zm-1765.43,0l-220.53-220.53-220.14,220.53L0,588.21l220.53-220.53L0,147.55,147.15,.39l220.53,220.53L588.21,.39l146.76,147.15-220.53,220.53,220.53,220.53-147.15,146.76Zm883.3,0l-220.53-220.53-220.14,220.53-147.15-147.15,220.53-220.53-220.53-220.53L1030.46,0l220.53,220.53L1471.52,0l146.76,147.55-220.53,220.53,220.53,220.53-147.15,146.76Z"
                />
              </svg>
            </div>
          </div>
<!--          <div class="divider divider-horizontal w-auto row-span-2 mx-0 before:bg-[#F2D742] after:bg-[#F2D742]"></div>-->
          <div>
            <NuxtLink to="/">
              <p :class="$nuxt.$route.name==='home' ? 'underline decoration-2 decoration-sky-500' : ''">Home</p>
            </NuxtLink>
          </div>
          <div>
            <NuxtLink to="events">
              <p :class="$nuxt.$route.name==='events' ? 'underline decoration-2 decoration-sky-500' : ''">Events</p>
            </NuxtLink>
          </div>
          <div>
            <NuxtLink to="itinerary">
              <p :class="$nuxt.$route.name==='itinerary' ? 'underline decoration-2 decoration-sky-500' : ''">Itinerary</p>
            </NuxtLink>
          </div>
          <div>
            <NuxtLink to="pois">
              <p :class="$nuxt.$route.name==='pois' ? 'underline decoration-2 decoration-sky-500' : ''">Point of Interest</p>
            </NuxtLink>
          </div>
          <div>
            <NuxtLink to="about">
              <p :class="$nuxt.$route.name==='about' ? 'underline decoration-2 decoration-sky-500' : ''">About Us</p>
            </NuxtLink>
          </div>
          <div>
            <NuxtLink to="contacts">
              <p :class="$nuxt.$route.name==='contacts' ? 'underline decoration-2 decoration-sky-500' : ''">Contacts</p>
            </NuxtLink>
          </div>
          <div>
            <NuxtLink to="privacy">
              <p :class="$nuxt.$route.name==='privacy' ? 'underline decoration-2 decoration-sky-500' : ''">Privacy Policy</p>
            </NuxtLink>
          </div>
        </div>
      </div>

      <div class="w-1/5 bg-base-100 drop-shadow-[0_-10px_8px_rgba(0,0,0,0.08)] rounded-3xl">
        <div class="p-2 grid grid-rows-2 grid-flow-col gap-2 h-full">
          <div class="text-center">
            <p>Follow Us</p>
          </div>
          <div class="w-fit mx-auto flex items-center fill-black">
            <div class="mx-4">
              <FacebookIcon width="1.5rem" height="1.5rem" />
            </div>
            <div class="mx-4">
              <InstagramIcon width="1.5rem" height="1.5rem" />
            </div>
            <div class="mx-4">
              <TwitterIcon width="1.5rem" height="1.5rem" />
            </div>
            <div class="mx-4">
              <YoutubeIcon width="1.5rem" height="1.5rem" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>
</template>

<script>
import FacebookIcon from '@/components/icons/social/FacebookIcon'
import InstagramIcon from '@/components/icons/social/InstagramIcon'
import TwitterIcon from '@/components/icons/social/TwitterIcon'
import YoutubeIcon from '@/components/icons/social/YoutubeIcon'

export default {
  name: 'FooterNav',
  components: { FacebookIcon, InstagramIcon, TwitterIcon, YoutubeIcon }
}
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Montserrat&display=swap');
.footer {
  font-family: 'Montserrat', sans-serif;
  position: fixed;
  display: block;
  bottom:0;
  background: linear-gradient(
    to top,
    #f05a28 0%,
    #f05a28 50%,
    white 50%,
    white 100%
  );
}
</style>
