# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#

init = ->
	new Highcharts.Chart
		chart:
			renderTo: "annual"
		title:
			text: "Projects per Month"
		xAxis:
			type: "date"
		yAxis:
			title:
				text: "No. of Project/s"
		series: [
			data: [1, 3, 1, 5, 2, 7]
		]


$(document).ready(init)
$(document).on 'page:load', init
