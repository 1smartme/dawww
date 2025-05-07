document.getElementById("registrationForm").addEventListener("submit", function (e) {
  e.preventDefault();

  const user = {
    name: document.getElementById("name").value,
    email: document.getElementById("email").value,
    password: document.getElementById("password").value,
    phone: document.getElementById("phone").value,
    age: document.getElementById("age").value,
    gender: document.getElementById("gender").value
  };

  // Simulate AJAX POST with fetch-style logic
  fakePostRequest(user).then(() => {
    alert("User registered successfully!");
    window.location.href = "users.html";
  });
});

function fakePostRequest(user) {
  return new Promise((resolve) => {
    let users = JSON.parse(localStorage.getItem("users")) || [];
    users.push(user);
    localStorage.setItem("users", JSON.stringify(users));
    setTimeout(resolve, 500);
  });
}
