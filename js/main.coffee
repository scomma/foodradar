---
---

$ ->
  $('.index').isotope
    itemSelector: '.item'

    masonry:
      columnWidth: 240
      gutter: 10

    getSortData: cal: '.cal'
    sortBy: 'cal'
    sortAscending: false
