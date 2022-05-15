<template>
  <footer class="footer w-full justify-center">
    <div class="grid-cols-12">
      <div class="col-span-2 flex w-full" />
      <div class="col-span-4 bg-base-100 w-full drop-shadow-lg rounded-xl card">
        <div class="grid grid-rows-2 grid-cols-12 gap-2 w-full">
          <div class="col-span-3 row-span-2">
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
          <div class="w-full row-span-2" />
          <div class="col-span-2">
            <NuxtLink to="/home">
              <p :class="$nuxt.$route.name==='home' ? 'underline decoration-2 decoration-sky-500' : ''">
                Home
              </p>
            </NuxtLink>
          </div>
          <div class="col-span-2">
            <NuxtLink to="itinerary">
              <p :class="$nuxt.$route.name==='itinerary' ? 'underline decoration-2 decoration-sky-500' : ''">
                Itinerary
              </p>
            </NuxtLink>
          </div>
          <div class="col-span-2">
            <NuxtLink to="about">
              <p :class="$nuxt.$route.name==='about' ? 'underline decoration-2 decoration-sky-500' : ''">
                About Us
              </p>
            </NuxtLink>
          </div>
          <div class="col-span-2 row-span-2">
            <NuxtLink to="privacy">
              <p :class="$nuxt.$route.name==='privacy' ? 'underline decoration-2 decoration-sky-500' : ''">
                Privacy
                Policy
              </p>
            </NuxtLink>
          </div>
          <div class="col-span-2">
            <NuxtLink to="events">
              <p :class="$nuxt.$route.name==='events' ? 'underline decoration-2 decoration-sky-500' : ''">
                Events
              </p>
            </NuxtLink>
          </div>
          <div class="col-span-2">
            <NuxtLink to="pois">
              <p :class="$nuxt.$route.name==='pois' ? 'underline decoration-2 decoration-sky-500' : ''">
                Point of
                Interest
              </p>
            </NuxtLink>
          </div>
          <div class="col-span-2">
            <NuxtLink to="contacts">
              <p :class="$nuxt.$route.name==='contacts' ? 'underline decoration-2 decoration-sky-500' : ''">
                Contacts
              </p>
            </NuxtLink>
          </div>
        </div>
      </div>
      <div class="flex w-full" />
      <div class="col-span-3 flex w-full">
        <div class="p-2 grid grid-rows-2 grid-flow-col gap-2 h-full">
          <div class="text-center">
            <p>Follow Us</p>
          </div>
          <div class="w-fit mx-auto flex items-center fill-black">
            <div class="mx-4">
              <IconsSocialFacebookIcon width="1.5rem" height="1.5rem" />
            </div>
            <div class="mx-4">
              <IconsSocialInstagramIcon width="1.5rem" height="1.5rem" />
            </div>
            <div class="mx-4">
              <IconsSocialTwitterIcon width="1.5rem" height="1.5rem" />
            </div>
            <div class="mx-4">
              <IconsSocialYoutubeIcon width="1.5rem" height="1.5rem" />
            </div>
          </div>
        </div>
      </div>
      <div class="col-span-2 flex w-full" />
    </div>
    </div>
  </footer>
</template>

<script>

export default {
  name: 'FooterNav'
}
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Montserrat&display=swap');

.footer {
  font-family: 'Montserrat', sans-serif;
  position: fixed;
  display: block;
  bottom: 0;
  background: linear-gradient(
    to top,
    #f05a28 0%,
    #f05a28 50%,
    white 50%,
    white 100%
  );
}
</style>
