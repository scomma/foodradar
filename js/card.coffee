---
---

radar_config =
    w: 300
    h: 300

sample =
    food: "กบ, แห้ง Frog, dried"
    kcal: 307
    water: 18.5
    protien: 42.2
    fat: 1.8
    carb: 30.4
    fibre: 0.4

d3.select('#food-name').html(sample.food)

candidate = ['water', 'protien', 'fat', 'carb', 'fibre']
transform = (it) ->
    ({axis: k, value: v} for k, v of it when k in candidate)

data = [transform(sample)]

RadarChart.draw("#rader", data, radar_config)
