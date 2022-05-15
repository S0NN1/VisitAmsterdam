<template>
  <footer class="footer w-full justify-center p-5">
    <div class="grid grid-cols-12">
      <div class="col-span-2 flex w-full" />
      <div class="col-span-4 h-16 bg-base-100 w-full box-shadow-card rounded-3xl">
        <div class="grid grid-rows-2 grid-cols-12 gap-2 w-full p-2 h-full">
          <div class="col-span-4 row-span-2 flex items-center justify-center">
            <div class="grid grid-cols-4">
              <div class="col-span-2 flex items-center justify-center">
                <IconsSiteLogo width="auto" height="75%" />
              </div>
              <div class="col-span-2 flex items-center justify-center">
                <div class="divider divider-horizontal before:bg-warning after:bg-warning" />
              </div>
            </div>
          </div>
          <div class="col-span-2">
            <NuxtLink to="/home">
              <p
                class="text-sm font-medium"
              >
                Home
              </p>
            </NuxtLink>
          </div>
          <div class="col-span-2">
            <NuxtLink to="itinerary">
              <p
                class="text-sm font-medium"
              >
                Itinerary
              </p>
            </NuxtLink>
          </div>
          <div class="col-span-2">
            <NuxtLink to="about">
              <p
                class="text-sm font-medium"
              >
                About Us
              </p>
            </NuxtLink>
          </div>
          <div class="col-span-2 row-span-2">
            <NuxtLink to="privacy">
              <p
                class="text-sm font-medium"
              >
                Privacy
                Policy
              </p>
            </NuxtLink>
          </div>
          <div class="col-span-2">
            <NuxtLink to="events">
              <p
                class="text-sm font-medium"
              >
                Events
              </p>
            </NuxtLink>
          </div>
          <div class="col-span-2">
            <NuxtLink to="pois">
              <p
                class="text-sm font-medium"
              >
                Point of
                Interest
              </p>
            </NuxtLink>
          </div>
          <div class="col-span-2">
            <NuxtLink to="contacts">
              <p
                class="text-sm font-medium"
              >
                Contacts
              </p>
            </NuxtLink>
          </div>
        </div>
      </div>
      <div class="flex w-full" />
      <div class="col-span-2 h-16 bg-base-100 w-full box-shadow-card rounded-3xl">
        <div class="grid grid-cols-5 w-full p-2 h-full">
          <div class="flex" />
          <div class="col-span-3 grid grid-cols-4 grid-rows-2 w-full h-full align-middle">
            <div class="col-span-4">
              <p class="text-center">
                Follow Us
              </p>
            </div>
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
            <div class="flex" />
          </div>
        </div>
      </div>
      <div class="col-span-3 flex w-full" />
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
