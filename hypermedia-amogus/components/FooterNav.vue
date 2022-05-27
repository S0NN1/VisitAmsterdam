<template>
  <footer class="footer w-full justify-center p-5">
    <div class="grid grid-cols-12">
      <div class="col-span-2 flex w-full" />
      <div class="col-span-8 flex">
        <div class="grid grid-cols-12">
          <div class="col-span-8 h-16 bg-base-100 w-full box-shadow-card rounded-3xl">
            <div class="grid grid-rows-2 grid-cols-5 gap-2 p-2 h-full flex">
              <div class="row-span-2 flex border-r-2 border-r-warning items-center mr-3">
                <IconsSiteLogo class="m-3" width="auto" height="75%" />
              </div>
              <NuxtLink class="flex" to="/home">
                <p
                  class="text-sm font-medium truncate text-error"
                >
                  <b>Home</b>
                </p>
              </NuxtLink>
              <NuxtLink class="flex" to="/itineraries">
                <p
                  class="text-sm font-medium truncate"
                >
                  Itineraries
                </p>
              </NuxtLink>
              <NuxtLink class="flex" to="/services">
                <p
                  class="text-sm font-medium truncate"
                >
                  Services
                </p>
              </NuxtLink>
              <NuxtLink class="flex" to="/contacts">
                <p
                  class="text-sm font-medium truncate"
                >
                  Contacts
                </p>
              </NuxtLink>
              <NuxtLink class="flex" to="/events">
                <p
                  class="text-sm font-medium truncate"
                >
                  Events
                </p>
              </NuxtLink>
              <NuxtLink class="flex" to="/points-of-interest">
                <p
                  class="text-sm font-medium truncate"
                >
                  Points of
                  Interest
                </p>
              </NuxtLink>
              <NuxtLink class="flex" to="/about">
                <p
                  class="text-sm font-medium truncate"
                >
                  About Us
                </p>
              </NuxtLink>
              <NuxtLink class="flex" to="tos">
                <p
                  class="text-sm font-medium truncate"
                >
                  Privacy
                  Policy
                </p>
              </NuxtLink>
            </div>
          </div>
          <div class="flex col-span-1" />
          <div class="col-span-3 h-16 bg-base-100 w-full box-shadow-card rounded-3xl">
            <div class="grid grid-cols-5 w-full p-1 h-full align-middle">
              <div class="flex" />
              <div class="col-span-3 grid grid-cols-6 grid-rows-3 w-full h-full items-center">
                <div class="col-span-6">
                  <p class="text-center text-sm truncate">
                    Follow Us
                  </p>
                </div>
                <div class="flex col-span-6 row-span-2 justify-center">
                  <IconsSocialFacebookIcon
                    class="rounded-full icon-footer fill-white p-1 aspect-square mx-auto my-auto h-fit"
                    width="1.7rem"
                    height="1.7rem"
                  />
                  <IconsSocialInstagramIcon
                    class="rounded-full icon-footer fill-white p-1 aspect-square mx-auto my-auto h-fit"
                    width="1.7rem"
                    height="1.7rem"
                  />
                  <IconsSocialTwitterIcon
                    class="rounded-full icon-footer fill-white p-1 aspect-square mx-auto my-auto h-fit"
                    width="1.7rem"
                    height="1.7rem"
                  />
                  <IconsSocialYoutubeIcon
                    class="rounded-full icon-footer fill-white p-1 aspect-square mx-auto my-auto h-fit"
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
.footer {
  position: fixed;
  display: block;
  bottom: 0;
  background: linear-gradient(
    to top,
    #f05a28 0%,
    #f05a28 50%,
    transparent 50%,
    transparent 100%
  );
}
</style>
