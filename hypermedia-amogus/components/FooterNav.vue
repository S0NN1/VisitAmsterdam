<template>
  <footer class="footer w-full justify-center p-5">
    <div class="grid grid-cols-12">
      <div class="col-span-2 flex w-full" />
      <div class="col-span-8 flex">
        <div class="grid grid-cols-12">
          <div class="col-span-7 h-16 bg-base-100 w-full box-shadow-card rounded-3xl">
            <div class="grid grid-rows-2 grid-cols-5 gap-2 p-2 h-full flex">
              <div class="row-span-2 flex border-r-2 border-r-warning items-center mr-3">
                <IconsSiteLogo class="m-3" width="auto" height="75%" />
              </div>
              <NuxtLink class="flex" to="/home">
                <p
                  class="text-sm font-medium text-error"
                >
                  <b>Home</b>
                </p>
              </NuxtLink>
              <NuxtLink class="flex" to="itinerary">
                <p
                  class="text-sm font-medium"
                >
                  Itinerary
                </p>
              </NuxtLink>
              <NuxtLink class="flex" to="about">
                <p
                  class="text-sm font-medium"
                >
                  About Us
                </p>
              </NuxtLink>
              <NuxtLink class="flex" to="privacy">
                <p
                  class="text-sm font-medium"
                >
                  Privacy
                  Policy
                </p>
              </NuxtLink>
              <NuxtLink class="flex" to="events">
                <p
                  class="text-sm font-medium"
                >
                  Events
                </p>
              </NuxtLink>
              <NuxtLink class="flex" to="pois">
                <p
                  class="text-sm font-medium"
                >
                  Point of
                  Interest
                </p>
              </NuxtLink>
              <NuxtLink class="flex" to="contacts">
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
            <div class="grid grid-cols-5 w-full p-1 h-full align-middle">
              <div class="flex" />
              <div class="col-span-3 grid grid-cols-6 grid-rows-3 w-full h-full items-center">
                <div class="col-span-6">
                  <p class="text-center text-sm">
                    Follow Us
                  </p>
                </div>
                <div class="flex col-span-6 row-span-2 justify-center">
                  <IconsSocialFacebookIcon
                    class="rounded-full icon-footer fill-white p-1 aspect-square mx-2"
                    width="1.7rem"
                    height="1.7rem"
                  />
                  <IconsSocialInstagramIcon
                    class="rounded-full icon-footer fill-white p-1 aspect-square mx-2"
                    width="1.7rem"
                    height="1.7rem"
                  />
                  <IconsSocialTwitterIcon
                    class="rounded-full icon-footer fill-white p-0 aspect-square mx-2"
                    width="1.7rem"
                    height="1.7rem"
                  />
                  <IconsSocialYoutubeIcon
                    class="rounded-full icon-footer fill-white p-1 aspect-square mx-2"
                    width="1.7rem"
                    height="1.7rem"
                  />
                </div>
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
