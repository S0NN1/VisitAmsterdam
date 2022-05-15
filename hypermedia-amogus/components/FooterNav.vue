<template>
  <footer class="footer w-full justify-center p-5">
    <div class="grid grid-cols-12">
      <div class="col-span-2 flex w-full" />
      <div class="col-span-8 flex">
        <div class="grid grid-cols-12">
          <div class="col-span-7 h-16 bg-base-100 w-full box-shadow-card rounded-3xl">
            <div class="grid grid-rows-2 grid-cols-5 gap-2 p-2 h-full flex justify-center">
              <div class="row-span-2 flex items-center justify-center">
                <IconsSiteLogo width="auto" height="75%" />
                <div class="divider divider-horizontal before:bg-warning after:bg-warning" />
              </div>
              <NuxtLink class="flex justify-center" to="/home">
                <p
                  class="text-sm font-medium"
                >
                  Home
                </p>
              </NuxtLink>
              <NuxtLink class="flex justify-center" to="itinerary">
                <p
                  class="text-sm font-medium"
                >
                  Itinerary
                </p>
              </NuxtLink>
              <NuxtLink class="flex justify-center" to="about">
                <p
                  class="text-sm font-medium"
                >
                  About Us
                </p>
              </NuxtLink>
              <NuxtLink class="flex justify-center" to="privacy">
                <p
                  class="text-sm font-medium"
                >
                  Privacy
                  Policy
                </p>
              </NuxtLink>
              <NuxtLink class="flex justify-center" to="events">
                <p
                  class="text-sm font-medium"
                >
                  Events
                </p>
              </NuxtLink>
              <NuxtLink class="flex justify-center" to="pois">
                <p
                  class="text-sm font-medium"
                >
                  Point of
                  Interest
                </p>
              </NuxtLink>
              <NuxtLink class="flex justify-center" to="contacts">
                <p
                  class="text-sm font-medium"
                >
                  Contacts
                </p>
              </NuxtLink>
            </div>
          </div>
          <div class="flex col-span-2" />
          <div class="col-span-3 h-16 bg-base-100 w-full box-shadow-card rounded-3xl">
            <div class="grid grid-cols-5 w-full p-2 h-full align-middle">
              <div class="flex" />
              <div class="col-span-3 grid grid-cols-4 grid-rows-2 w-full h-full">
                <div class="col-span-4">
                  <p class="text-center text-sm">
                    Follow Us
                  </p>
                </div>
                <div class="flex" />
                <div class="flex col-span-2 justify-center gap-2 grid-cols-4">
                  <IconsSocialFacebookIcon
                    class="rounded-full icon-footer fill-white p-1"
                    width="1.5rem"
                    height="1.5rem"
                  />
                  <IconsSocialInstagramIcon
                    class="rounded-full icon-footer fill-white p-1"
                    width="1.5rem"
                    height="1.5rem"
                  />
                  <IconsSocialTwitterIcon
                    class="rounded-full icon-footer fill-white p-0"
                    width="1.5rem"
                    height="1.5rem"
                  />
                  <IconsSocialYoutubeIcon
                    class="rounded-full icon-footer fill-white p-1"
                    width="1.5rem"
                    height="1.5rem"
                  />
                </div>

                <div class="flex" />
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-span-2 flex w-full" />
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
