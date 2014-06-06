- dashboard: dash
  title: Dash
  layout: tile
  tile_size: 100

#  filters:

  elements:

  - name: cycling_history
    title: Keith's cycling history
    type: looker_line
    base_view: garmin
    dimensions: [garmin.monthnum]
    pivots: [garmin.year]
    measures: [garmin.total_distance]
    filters:
      garmin.year: -2008,-2009,-2010
      garmin.activity_type: Cycling
    sorts: [garmin.monthnum]
    limit: 500
    width: 12
    height: 5
    legend_align:
    hide_legend:
    stacking:
    x_axis_label: Month Number
    x_axis_datetime:
    x_axis_datetime_label:
    x_axis_label_rotation:
    y_axis_orientation:
    y_axis_combined:
    y_axis_labels: Distance (miles)
    y_axis_min:
    y_axis_max:
    hide_points:
    
  - name: cycling_by_month
    title: "Keith's Cycling by month"
    type: looker_area
    base_view: garmin
    dimensions: [garmin.combidate_month]
    measures: [garmin.total_distance]
    filters:
      garmin.year: -2008,-2009,-2010
      garmin.activity_type: Cycling
    sorts: [garmin.combidate_month]
    limit: 500
    width: 12
    height: 5
    legend_align:
    hide_legend:
    stacking:
    x_axis_label:
    x_axis_datetime:
    x_axis_datetime_label:
    x_axis_label_rotation:
    y_axis_orientation:
    y_axis_combined:
    y_axis_labels: Distance (miles)
    y_axis_min:
    y_axis_max:
    hide_points:


  - name: distance_by_year
    title: "Keith's activities by year"
    type: looker_column
    base_view: garmin
    dimensions: [garmin.year]
    pivots: [garmin.activity_type]
    measures: [garmin.total_distance]
    filters:
      garmin.year: -2008,-2009,-2010
    sorts: [garmin.year]
    limit: 500
    width: 10
    height: 5
    legend_align:
    hide_legend:
    stacking: normal
    x_axis_label:
    x_axis_datetime:
    x_axis_datetime_label:
    x_axis_label_rotation:
    y_axis_orientation:
    y_axis_combined:
    y_axis_labels: Distance (miles)
    y_axis_min:
    y_axis_max:

