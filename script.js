
let tasks = [];

const updateDashboard = () => {
  const total = tasks.length;
  const completed = tasks.filter(t => t.done).length;
  const ongoing = tasks.filter(t => !t.done).length;
  const today = tasks.filter(t => t.date === new Date().toISOString().split("T")[0]).length;
  document.getElementById("totalTasks").textContent = total;
  document.getElementById("completedTasks").textContent = completed;
  document.getElementById("ongoingTasks").textContent = ongoing;
  document.getElementById("todayTasks").textContent = today;
  const percent = total ? (completed / total) * 100 : 0;
  document.getElementById("progressBar").style.width = `${percent}%`;
};

const renderTasks = () => {
  const tbody = document.getElementById("taskTableBody");
  tbody.innerHTML = "";
  const search = document.getElementById("searchTask").value.toLowerCase();
  const priority = document.getElementById("filterPriority").value;

  tasks
    .filter(task => {
      return (
        task.name.toLowerCase().includes(search) &&
        (priority === "" || task.priority === priority)
      );
    })
    .forEach((task, index) => {
      const tr = document.createElement("tr");
      tr.innerHTML = `
        <td class="border p-2 ${task.done ? 'line-through text-gray-400' : ''}">${task.name}</td>
        <td class="border p-2 ${task.done ? 'line-through text-gray-400' : ''}">${task.description}</td>
        <td class="border p-2">${task.date}</td>
        <td class="border p-2">${task.priority}</td>
        <td class="border p-2 flex gap-2 justify-center">
          <button onclick="completeTask(${index})" class="px-2 py-1 text-sm bg-green-500 text-white rounded hover:bg-green-600">Terminer</button>
          <button onclick="deleteTask(${index})" class="px-2 py-1 text-sm bg-red-500 text-white rounded hover:bg-red-600">Supprimer</button>
        </td>
      `;
      tbody.appendChild(tr);
    });

  updateDashboard();
};

const deleteTask = (index) => {
  tasks.splice(index, 1);
  renderTasks();
};

const completeTask = (index) => {
  tasks[index].done = true;
  renderTasks();
};

document.getElementById("openModal").addEventListener("click", () => {
  document.getElementById("taskModal").classList.remove("hidden");
});

document.getElementById("closeModal").addEventListener("click", () => {
  document.getElementById("taskModal").classList.add("hidden");
});

document.getElementById("saveTask").addEventListener("click", () => {
  const name = document.getElementById("taskName").value.trim();
  const description = document.getElementById("taskDescription").value.trim();
  const date = document.getElementById("taskDate").value;
  const priority = document.getElementById("taskPriority").value;

  if (name && description && date && priority) {
    tasks.push({ name, description, date, priority, done: false });
    renderTasks();
    document.getElementById("taskModal").classList.add("hidden");
    document.getElementById("taskName").value = "";
    document.getElementById("taskDescription").value = "";
    document.getElementById("taskDate").value = "";
    document.getElementById("taskPriority").value = "Haute";
  }
});

document.getElementById("searchTask").addEventListener("input", renderTasks);
document.getElementById("filterPriority").addEventListener("change", renderTasks);
