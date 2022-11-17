window.addEventListener("message", function (event) {
    if (event.data.action == "show") {
        speed = event.data.speed

        if (speed === null) {
            document.querySelector(".speed").style.display = "none";
        } else {
            document.querySelector(".limit").textContent = speed;
            document.querySelector(".speed").style.display = "block";
        }

        document.querySelector(".speedsign").style.display = "block";
    } else if (event.data.action == "hide") {
        document.querySelector(".speedsign").style.display = "none";
    }
});