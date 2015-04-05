---
---

$ ->
  $('.index').isotope
    itemSelector: '.item'

    masonry:
      columnWidth: 240
      gutter: 20

    getSortData: cal: '.cal'
    sortBy: 'cal'
    sortAscending: false
