# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



sayHello = () -> (
	container = document.getElementById('container');
	period = container.getElementbyId('period');
	period.innerHTML = "What's up everyone!!!"
);

