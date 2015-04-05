---
---

$ ->
  setTimeout ->
    $('.index').isotope
      itemSelector: '.item'

      masonry:
        columnWidth: 240
        gutter: 20

      getSortData:
        cal: '.cal-amount parseInt'
        water: '.water parseInt'
        protein: '.protein parseInt'
        carbohydrate: '.carbohydrate parseInt'
        fiberInsoluble: '.fiberInsoluble parseInt'
        fat: '.fat parseInt'
      sortBy: 'cal'
      sortAscending: false
  , 1000
