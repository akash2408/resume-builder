var share_btn = document.getElementById("share-btn");
share_btn.addEventListener("click", (function(e) {
    e.preventDefault(),
    navigator.clipboard.writeText(window.location.origin + e.target.href),
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