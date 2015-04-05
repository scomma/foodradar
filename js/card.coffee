---
---

radar_config =
    w: 240
    h: 240

radar = (data, index=0) ->
    sample = {}
    for key, value of data
        sample[key] = value[index]
    candidate = ['water', 'protein', 'fat', 'carbohydrate', 'fiberInsoluble']
    transform = (it) ->
        ({axis: key, value: v} for key, v of it when key in candidate)
    it = [transform(sample)]
    RadarChart.draw("#radar-chart-#{index}", it, radar_config)

card = (index=0) ->
    "<div class=\"item\"><div id=\"radar-chart-#{index}\"></div></div>"

$ ->
    $.getJSON 'data/foodNutrition.json', (data) ->
        no_foods = data.foodNameTH.length
        $('#foods').html(card(index) for index in [0..no_foods])
        for index in [0..no_foods]
            radar(data, index)
