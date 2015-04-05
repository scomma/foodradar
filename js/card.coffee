---
---

radar_config =
    w: 240
    h: 240

foo = (data, index=0) ->
    sample = {}
    for key, value of data
        sample[key] = value[index]
    console.log sample
    d3.select('#food-name').html(sample.foodNameTH)
    candidate = ['water', 'protein', 'fat', 'carbohydrate', 'fiberInsoluble']
    transform = (it) ->
        ({axis: key, value: v} for key, v of it when key in candidate)
    it = [transform(sample)]
    RadarChart.draw("#radar-chart-#{index}", it, radar_config)

$.getJSON 'data/foodNutrition.json', (data) ->
    foo(data, 0)
    foo(data, 1)
