/*global $*/
	$(function () {
		$(".btn").on("click", function () {
			$(this).closest("div").css("display", "none");
			var id = $(this).attr("href");
			$(this[id]).addClass("fit").show("slow");
		});
	});