<template>
  <div>
    <div class="container mx-auto w-11/12 lg:w-10/12 justify-center mt-20 mb-20">
      <h1>History of Amsterdam</h1>
      <div class="grid grid-cols-1 lg:grid-cols-2">
        <div class="px-4">
          <h2 class="mt-4">
            1200-1585: The Early History
          </h2>
          <p class="lg:m-4 text-justify">
            Amsterdam was founded as a fishing village around the thirteenth century. Amsterdam developed round a dam in
            the Amstel river at the end of the 12th century. The name Amstelledamme occurs for the first time in the
            toll concession of Floris V, Count of Holland, dated October 27, 1275. During the 14th, but especially the
            15th century, Amsterdam underwent a rapid development, which laid the foundation for the Golden Age. Only
            very few medieval buildings survive today. Some examples: the Old and New Churches and the Houten Huis
            (Wooden House) at the Begijnhof. Throughout the Middle Ages houses were generally built of wood, a
            vulnerable type of construction material. The famous Houten Huis is no exception to this rule. Consequently,
            most of them were destroyed. Nevertheless, a surprisingly large number of Amsterdam dwellings still have
            timber frames.
          </p>
        </div>
        <div class="flex w-full justify-center px-4">
          <CardItem type="FIGURE" :object="amsterdamHistory[0]" />
        </div>

        <div class="flex w-full justify-center mt-8 px-4">
          <CardItem type="FIGURE" :object="amsterdamHistory[1]" />
        </div>
        <div class="mt-8 px-4">
          <h2 class="mt-4">
            1585-1672: The Golden Age of Amsterdam
          </h2>
          <p class="lg:m-4 text-justify">
            The period 1585-1672, the Golden Age, was the hey-day of Amsterdam's commercial success. At the time
            Amsterdam was the staple market of the world. During this period the characteristic Amsterdam cityscape
            developed; the 1613 and 1663 urban expansions still determine the city's characteristic appearance. Some of
            the most important historic buildings date back to this period, e.g. the town hall in the Dam Square (now
            the Royal Palace), the Westerkerk, Zuiderkerk, as well as a large number of canal houses among which De
            Dolfijn (Dolphin), De Gecroonde Raep (Crowned Turnip), the Bartolotti Huis, the Huis met de Hoofden (House
            with the Heads), the Poppenhuis, Kloveniersburgwal 95 (commissioned by the Poppen family), the Trippenhuis
            (built for the Trip family), the Van Raey-huizen, Keizersgracht 672-674, and Sweedenrijk, Herengracht 462.
          </p>
        </div>

        <div class="mt-8 px-4">
          <h2 class="mt-8">
            1672-1795: An Age of Gold and Silver
          </h2>
          <p class="lg:m-4 text-justify">
            The year 1672 was a year of disaster for the Dutch Republic with the French and English attacking
            simultaneously. The Golden Age had come to an end. Nevertheless, Amsterdam managed to consolidate its
            prosperity during the period 1672-1795 in spite of the predicament the Republic found itself in. The city
            remained a major staple market and managed to retain its position as the financial centre of Europe. Whereas
            the Golden Age was primarily a period of pitch and tar, the new era is better characterised as an age of
            gold and silver. The large number of dwellings built at this time, both simple ones and rich canal houses,
            reflect the city’s prosperity. As a result the majority of the houses located in the city centre date back
            to the 18th rather than the 17th century. Some examples: Huis Van Brienen, Herengracht 284, Huis De Vicq-De
            Steur, OZ Voorburgwal 237, Zeevrugt and Saxenburg, Keizersgracht 224.
          </p>
        </div>

        <div class="flex w-full justify-center mt-8 px-4">
          <CardItem type="FIGURE" :object="amsterdamHistory[2]" />
        </div>

        <div class="flex w-full justify-center mt-8 px-4">
          <CardItem type="FIGURE" :object="amsterdamHistory[3]" />
        </div>
        <div class="mt-8 px-4">
          <h2 class="mt-8">
            1795-1813: Recession and Decline
          </h2>
          <p class="lg:m-4 text-justify">
            In 1795 the government of the patrician oligarchies was overthrown and the old Republic ceased to exist.
            Soon the French were to occupy the country. During the period 1795-1813 Amsterdam suffered badly from the
            economic recession, a state of affairs reflected by the stagnation of the demographic development. Many
            houses were vacant and some even collapsed for lack of maintenance. Fortunately some facades and interiors
            dating back to the Empire period survive today.
          </p>
        </div>

        <div class="mt-8 px-4">
          <h2 class="mt-8">
            1813-1940: Recovery and Expansion beyond the Singelgracht
          </h2>
          <p class="lg:m-4 text-justify">
            The period 1813-1940 is marked by economic recovery and, from 1870 onwards, by expansion. The increasing
            wealth brought about a rapid population growth. This development was primarily the result of the Industrial
            Revolution which triggered off a New Golden Age. The city now ventured into the area beyond the
            Singelgracht. Large poorly built working-class neighbourhoods were built. The period 1920-1940 was a time of
            economic recession. Therefore it is all the more remarkable that the so-called Ring 20-40 compares
            favourably to the 19th century jerry-building. This was also the period of large-scale damage to the
            historical city centre; canals were filled in and new traffic breakthroughs were realised.
          </p>
        </div>
        <div class="flex w-full justify-center mt-8 px-4">
          <CardItem type="FIGURE" :object="amsterdamHistory[4]" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'AboutPage',
  data () {
    return {
      amsterdamHistory: [
        {
          heroImage: 'https://images.unsplash.com/photo-1580679047323-855ab261a52b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=80'
        },
        {
          heroImage: 'https://images.unsplash.com/photo-1534351590666-13e3e96b5017?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=80'
        },
        {
          heroImage: 'https://images.unsplash.com/photo-1468436385273-8abca6dfd8d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=80'
        },
        {
          heroImage: 'https://images.unsplash.com/photo-1576924542622-772281b13aa8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=80'
        },
        {
          heroImage: 'https://images.unsplash.com/photo-1549701455-d0d42354b009?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=80'
        }

      ]
    }
  }
}
</script>

<style scoped>

</style>
