window.onload = function () {
  const users = JSON.parse(localStorage.getItem("users")) || [];
  const userList = document.getElementById("userList");

  if (users.length === 0) {
    userList.innerHTML = "<p>No users registered.</p>";
  } else {
    users.forEach((user) => {
      const div = document.createElement("div");
      div.className = "user-item";
      div.innerHTML = `
        <strong>Name:</strong> ${user.name}<br/>
        <strong>Email:</strong> ${user.email}<br/>
        <strong>Phone:</strong> ${user.phone}<br/>
        <strong>Age:</strong> ${user.age}<br/>
        <strong>Gender:</strong> ${user.gender}
      `;
      userList.appendChild(div);
    });
  }
};
