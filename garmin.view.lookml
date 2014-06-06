- view: garmin
  fields:

  - dimension: activity_name
    sql: ${TABLE}.Activity_Name

  - dimension: activity_type
    sql: ${TABLE}.Activity_Type

  - dimension: ampm
    sql: ${TABLE}.ampm

  - dimension: avg_hr
    sql: ${TABLE}.Avg_HR

  - dimension: avg_speedavg_pace
    type: number
    sql: ${TABLE}."Avg_Speed(Avg Pace)"

  - dimension: avg_strokes
    sql: ${TABLE}.Avg_Strokes

  - dimension: avg_swolf
    sql: ${TABLE}.Avg_SWOLF

  - dimension: best_efficiency
    sql: ${TABLE}.Best_Efficiency

  - dimension: best_swolf
    sql: ${TABLE}.Best_SWOLF

  - dimension: calories
    sql: ${TABLE}.Calories

  - dimension_group: combidate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.combidate

  - dimension: course
    sql: ${TABLE}.Course

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date

  - dimension: day
    sql: ${TABLE}.day

  - dimension: distance
    type: number
    sql: ${TABLE}.Distance

  - dimension: elevation_gain
    sql: ${TABLE}.Elevation_Gain

  - dimension: favorite
    sql: ${TABLE}.Favorite

  - dimension: max_hr
    sql: ${TABLE}.Max_HR

  - dimension: max_speedbest_pace
    type: number
    sql: ${TABLE}."Max_Speed(Best Pace)"

  - dimension: min_strokes
    sql: ${TABLE}.Min_Strokes

  - dimension: month
    sql: ${TABLE}.month

  - dimension: monthnum
    type: int
    sql: ${TABLE}.monthnum

  - dimension_group: origdate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.origdate

  - dimension: start
    sql: ${TABLE}.Start

  - dimension_group: time
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Time

  - dimension_group: time_orig
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.time_orig

  - dimension: total_strokes
    sql: ${TABLE}.Total_Strokes

  - dimension: training_effect
    sql: ${TABLE}.Training_Effect

  - dimension: year
    sql: ${TABLE}.year

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - activity_name

