<template>
  <footer class="footer w-full justify-center p-5 lg:fixed sm:bottom-0">
    <div class="grid grid-cols-12">
      <div class="flex w-full md:col-span-2" />
      <div class="flex w-full col-span-10 md:col-span-8">
        <div v-if="!mobile" class="flex grid grid-cols-12 w-full">
          <div class="col-span-8 h-20 bg-base-100 w-full box-shadow-card rounded-xl">
            <div class="grid grid-rows-2 grid-cols-5 gap-y-0 gap-x-3 p-2 h-full flex items-center">
              <div class="flex  h-full  row-span-2 col-span-2 items-center">
                <IconsSiteLogoIcon class="pr-5 mx-3 border-r-2 border-r-warning w-6/12" height="75%" />

                <div class="flex w-6/12 h-full w-full grid grid-rows-2 gap-y-0 gap-x-3 items-center">
                  <NuxtLink class="flex w-full ml-5" to="/home">
                    <p
                      class="text-sm font-medium truncate text-error"
                    >
                      <b>Home</b>
                    </p>
                  </NuxtLink>
                  <NuxtLink class="flex w-full ml-5" to="/events">
                    <p
                      class="text-sm font-medium truncate"
                    >
                      Events
                    </p>
                  </NuxtLink>
                </div>
              </div>

              <NuxtLink class="flex w-full" to="/itineraries">
                <p
                  class="text-sm font-medium truncate"
                >
                  Itineraries
                </p>
              </NuxtLink>
              <NuxtLink class="flex w-full" to="/services">
                <p
                  class="text-sm font-medium truncate"
                >
                  Services
                </p>
              </NuxtLink>
              <NuxtLink class="flex w-full" to="/contacts">
                <p
                  class="text-sm font-medium truncate"
                >
                  Contacts
                </p>
              </NuxtLink>
              <NuxtLink class="flex w-full" to="/points-of-interest">
                <p
                  class="text-sm font-medium truncate"
                >
                  Points of
                  Interest
                </p>
              </NuxtLink>
              <NuxtLink class="flex w-full" to="/about">
                <p
                  class="text-sm font-medium truncate"
                >
                  About
                </p>
              </NuxtLink>
              <NuxtLink class="flex w-full" to="tos">
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
          <div class="col-span-3 h-20 bg-base-100 w-full box-shadow-card rounded-xl">
            <div class="grid grid-cols-5 w-full p-1 h-full align-middle">
              <div class="flex" />
              <div class="col-span-3 grid grid-cols-6 grid-rows-3 w-full h-full items-center">
                <div class="col-span-6 mt-auto align-bottom">
                  <p class="text-center text-sm truncate">
                    Follow Us
                  </p>
                </div>
                <div class="flex col-span-6 row-span-2 justify-center">
                  <a
                    class="justify-center mx-auto my-auto"
                    href="https://www.facebook.com/iamsterdam/"
                    target="_blank"
                  >
                    <IconsSocialFacebookIcon
                      class="rounded-full icon-footer fill-white p-1 aspect-square h-fit"
                      height="1.7rem"
                      width="1.7rem"
                    />
                  </a>
                  <a
                    class="justify-center mx-auto my-auto"
                    href="https://www.instagram.com/iamsterdam/?hl=en"
                    target="_blank"
                  >
                    <IconsSocialInstagramIcon
                      class="rounded-full icon-footer fill-white p-1 aspect-square h-fit"
                      height="1.7rem"
                      width="1.7rem"
                    />
                  </a>

                  <a
                    class="justify-center mx-auto my-auto"
                    href="https://twitter.com/Iamsterdam?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"
                    target="_blank"
                  >
                    <IconsSocialTwitterIcon
                      class="rounded-full icon-footer fill-white p-1 aspect-square h-fit"
                      height="1.7rem"
                      width="1.7rem"
                    />
                  </a>

                  <a
                    class="justify-center mx-auto my-auto"
                    href="https://www.youtube.com/channel/UCWx6OvwjIbSDpoc3L0vVPIg"
                    target="_blank"
                  >
                    <IconsSocialYoutubeIcon
                      class="rounded-full icon-footer fill-white p-1 aspect-square  h-fit"
                      height="1.7rem"
                      width="1.7rem"
                    />
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div v-else class="h-72 bg-base-100 w-full box-shadow-card rounded-xl">
          <div class="flex w-full h-full grid grid-cols-2 grid-rows-7 gap-y-2 py-5 px-10">
            <NuxtLink class="flex w-full" to="/home">
              <p
                class="text-base font-medium truncate text-error"
              >
                <b>Home</b>
              </p>
            </NuxtLink>
            <NuxtLink class="flex w-full" to="/itineraries">
              <p
                class="text-base font-medium truncate"
              >
                Itineraries
              </p>
            </NuxtLink>
            <NuxtLink class="flex w-full" to="/events">
              <p
                class="text-base font-medium truncate"
              >
                Events
              </p>
            </NuxtLink>
            <NuxtLink class="flex w-full" to="/points-of-interest">
              <p
                class="text-base font-medium truncate"
              >
                Points of
                Interest
              </p>
            </NuxtLink>
            <NuxtLink class="flex w-full" to="/services">
              <p
                class="text-base font-medium truncate"
              >
                Services
              </p>
            </NuxtLink>
            <NuxtLink class="flex w-full" to="/contacts">
              <p
                class="text-base font-medium truncate"
              >
                Contacts
              </p>
            </NuxtLink>
            <NuxtLink class="flex w-full" to="/about">
              <p
                class="text-base font-medium truncate"
              >
                About Us
              </p>
            </NuxtLink>
            <NuxtLink class="flex w-full" to="tos">
              <p
                class="text-base font-medium truncate"
              >
                Privacy
                Policy
              </p>
            </NuxtLink>
            <div class="row-span-2 col-span-2 grid grid-rows-3 grid-cols-6 w-full border-t-2 border-neutral mt-2 pt-2">
              <div class="col-span-6">
                <p class="text-center text-sm truncate">
                  Follow Us
                </p>
              </div>
              <div class="flex col-span-6 row-span-2 justify-center mt-3">
                <IconsSocialFacebookIcon
                  class="rounded-full icon-footer fill-white p-1.5 aspect-square mx-auto my-auto h-fit"
                  height="2rem"
                  width="2rem"
                />
                <IconsSocialInstagramIcon
                  class="rounded-full icon-footer fill-white p-1.5 aspect-square mx-auto my-auto h-fit"
                  height="2rem"
                  width="2rem"
                />
                <IconsSocialTwitterIcon
                  class="rounded-full icon-footer fill-white p-1.5 aspect-square mx-auto my-auto h-fit"
                  height="2rem"
                  width="2rem"
                />
                <IconsSocialYoutubeIcon
                  class="rounded-full icon-footer fill-white p-1.5 aspect-square mx-auto my-auto h-fit"
                  height="2rem"
                  width="2rem"
                />
              </div>
              <div />
            </div>
          </div>

          <div :class="!mobile ? 'col-span-2' : ''" class="flex w-full" />
        </div>
      </div>
      <div class="flex w-full md:col-span-2" />
    </div>
  </footer>
</template>

<script>

export default {
  /**
   * Website footer containing landmarks and social links.
   */
  name: 'FooterNav',
  props: {
    /**
     * The flag used to specify mobile or desktop visualization of the component.
     * @values true, false
     */
    mobile: {
      type: Boolean,
      default: false
    }
  }
}
</script>

<style scoped>
.footer {
  display: block;
  background: linear-gradient(
    to top,
    #f05a28 0%,
    #f05a28 50%,
    transparent 50%,
    transparent 100%
  );
}

.icon-footer {
  background-color: #263049;
}

</style>
