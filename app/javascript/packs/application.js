// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "stylesheets/application"

Rails.start()
Turbolinks.start()
ActiveStorage.start()
window.addEventListener("load", () => {
	var share_btn = document.getElementById("share-btn");
	share_btn.addEventListener("click", (function(e) {
	    e.preventDefault(),
	    navigator.clipboard.writeText(e.target.href),
	    e.target.innerText = "Copied!"
	}));

    var upload_btn = document.getElementById("profile_profile_image");
    upload_btn.addEventListener("change", (function(e) {
        if (e.target.files && e.target.files[0]) {
            var t = new FileReader;
            t.onload = function(e) {
                document.getElementById("image-preview").src = e.target.result
            }
            ,
            t.readAsDataURL(e.target.files[0])
        }
    }));
});