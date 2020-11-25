function deleteProfile() {
	if (confirm("Do You Want to Delete Profile?")) {
		window.location.href = "../php/profile.php";
	} else {
		window.location.href = "../html/Profile.html";
	}
}

function updateProfile() {
	document.querySelector(".frameShow").classList.add("hide");
	document.querySelector(".frameProfile").classList.remove("hide");
	console.log("Is The Button Presses update");
}

function showFriends() {
	document.querySelector(".frameProfile").classList.add("hide");
	document.querySelector(".frameShow").classList.remove("hide");
	console.log("Is The Button Presses show");
}

function logout() {
	confirm("Do you wanna Logout ? ") ? window.location.href = "../php/logout.php" : windows.location.href = "../html/Profile.html";
}