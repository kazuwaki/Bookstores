/*global $*/
console.log(1)
	$(document).on ("turbolinks:load", function(){
		const buttons = document.querySelectorAll(".btn") //全てのbtnを
		for(const button of buttons) {										//繰り返し処理
		button.addEventListener("click", function() {
    		const currentDiv = button.closest("div");
    		currentDiv.style.display = "none";

    		const id = button.getAttribute("href");

    		const nextDiv = document.querySelector(id);
    		nextDiv.classList.add("fit");
    		nextDiv.style.display = "block";
		})
		}
	});