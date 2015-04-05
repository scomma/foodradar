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

card = (data, index=0) ->
    "<div class=\"item\">
      <div id=\"radar-chart-#{index}\"></div>
      <div class=\"item-label\">
        <div class=\"cal\">
          #{data.calories[index]} <span class=\"unit\">kcal</span>
        </div>
        #{data.foodNameTH[index]}
      </div>
    </div>"

$ ->
    $.getJSON 'data/foodNutrition.json', (data) ->
        no_foods = data.foodNameTH.length
        $('#foods').html(card(data, index) for index in [0...no_foods])
        for index in [0...no_foods]
            radar(data, index)
