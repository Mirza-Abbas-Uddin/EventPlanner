<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-PC1usyi/S+JkKj+sNgz1aeNBPx+o02GX6Svaj8RudcVgOiv69h2B4z+w3lOD4bbbnjgk6i9XnjDvM8s20WV7GA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <title>Document</title>
</head>
<style>
  header {
    height: 15vh;
    background-color: #FFF8F8;
    color: white;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 2rem;
  }

  header div {
    font-size: 2rem;
  }

  nav ul {
    list-style: none;
    display: flex;
  }

  nav li {
    margin-right: 5rem;
    color: #000000;
  }

  nav a {
    color: #000000;
    text-decoration: none;
    font-size: 20px;
  }

  .dropdown {
    display: none;
    position: absolute;
    top: 90px;
    left: 90%;
    z-index: 1;
  }

  .dropdown button {
    display: block;
    width: 100%;
    text-align: center;
    background-color: #fff;
    border: none;
    border-bottom: 1px solid #ccc;
    padding: 10px;
    cursor: pointer;
  }

  .dropdown button:hover {
    background-color: #f9f9f9;
  }

  .dropdown button:last-child {
    border-bottom: none;
  }
</style>

<body>
  <header>
    <div>
      <p style="color: #996F1D;">&#9733Event Planner</p>
    </div>
    <div style="display: flex; align-items: center;">
      <div style="margin-right: 2rem;">🔔</div>
      <div><img src="Images/user-profile.jpg" alt="User Profile" style="width: 50px; height: 50px; border-radius: 50%;"></div>
    </div>
    <nav>
      <ul style="list-style: none; display: flex;">
        <li style="margin-right: 4rem;"><a href="#">Home</a></li>
        <li style="margin-right: 4rem;"><a href="#">About</a></li>
        <li style="margin-right: 4rem;"><a href="#" id="services-btn">Services</a></li>
        <div id="services-dropdown" class="dropdown">
          <button><a href="#">Birthay</a></button>
          <button><a href="#">Wedding</a></button>
          <button><a href="#">Corporate</a></button>
          <button><a href="#">Home Party</a></button>
          <button><a href="#">Surprise Party</a></button>
          <button><a href="#">Customized Plans</a></button>
        </div>
        <li style="margin-right: 4rem;"><a href="#">Contact</a></li>
        <li><a href="#" id="more-btn">More</a></li>
        <div id="more-dropdown" class="dropdown">
          <button><a href="#">Sign Up</a></button>
          <button><a href="#">Log In</a></button>
          <button><a href="#">Search</a></button>
          <button><a href="#">Profile</a></button>
          <button><a href="#">Wishlist</a></button>
          <button><a href="#">FAQ</a></button>
        </div>
      </ul>
    </nav>
  </header>
</body>
<script>
 // Get the Services and More buttons and dropdown menus
var servicesBtn = document.getElementById("services-btn");
var servicesDropdown = document.getElementById("services-dropdown");
var moreBtn = document.getElementById("more-btn");
var moreDropdown = document.getElementById("more-dropdown");

// Add a click event listener to the Services button
servicesBtn.addEventListener("click", function() {
  // Toggle the visibility of the Services dropdown menu
  if (servicesDropdown.style.display === "block") {
    servicesDropdown.style.display = "none";
  } else {
    servicesDropdown.style.display = "block";
  }
});

// Add a click event listener to the more button
 moreBtn.addEventListener("click", function() {
  // Toggle the visibility of the more dropdown menu
  if (moreDropdown.style.display === "block") {
    moreDropdown.style.display = "none";
  } else {
    moreDropdown.style.display = "block";
  }
});

// Close the dropdown menus when the user clicks outside of them
document.addEventListener("click", function(event) {
  if (!event.target.matches("#services-btn") && !event.target.matches("#services-dropdown button")) {
    servicesDropdown.style.display = "none";
  }
  if (!event.target.matches("#more-btn") && !event.target.matches("#more-dropdown button")) {
    productsDropdown.style.display = "none";
  }
});
</script>
</html>