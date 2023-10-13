// Function to fetch and populate the list of users
function popularFuncionarios(data) {
    const funcionariosList = document.querySelector(".funcionarios-list");
    funcionariosList.innerHTML = "";

    // Sort users or employees data as needed
    data.sort((a, b) => a.id - b.id); // Example sorting by user ID

    // Show only a limited number of users, e.g., the first 3
    const funcionariosLimitados = data.slice(0, 3);

    // Display the total number of users
    const quantidadeFuncionarios = data.length;

    // Update the title with the total number of users
    const tituloFuncionarios = document.querySelector(".new-users h2");
    tituloFuncionarios.textContent = `Total de ${quantidadeFuncionarios} Funcionários`;

    funcionariosLimitados.forEach((funcionario) => {
        const userDiv = document.createElement("div");
        userDiv.classList.add("user");

        // You can customize this part to display user information
        userDiv.innerHTML = `
        <img src="https://cdn3.iconfinder.com/data/icons/avatars-business-human1/180/woman2-512.png">
            <h2>${funcionario.name}</h2>
            <p>Email: ${funcionario.email}</p>
        `;

        funcionariosList.appendChild(userDiv);
    });

    // Clear existing table rows
    const funcionarioTableBody = document.querySelector(
        "#funcionariosTable tbody"
    );
    funcionarioTableBody.innerHTML = "";

    funcionariosLimitados.forEach((item) => {
        const tr = document.createElement("tr");
        const trContent = `
            <td>${item.name}</td>
            <td>${item.email}</td>
            <td>${item.id_patrao}</td>
            <td class="${
                item.status === "Desativado" ? "danger" : "success"
            }">${item.status}</td>
            <td class="primary">Editar</td>
        `;
        tr.innerHTML = trContent;
        funcionarioTableBody.appendChild(tr);
    });
}

document.addEventListener("DOMContentLoaded", function () {
    // Fazer uma requisição para obter o ID do usuário logado
    fetch("/user-id1841651")
        .then((response) => response.json())
        .then((data) => {
            const userId = data.user_id;
            // Verificar se o ID do usuário é válido (não é nulo)
            if (userId !== null) {
                // Usar o ID do usuário no seu próximo fetch
                fetch(`/api/usuarios/${userId}/funcionarios`)
                    .then((response) => response.json())
                    .then((data) => {
                        popularFuncionarios(data);
                    })
                    .catch((error) => {
                        console.error("Error fetching user data:", error);
                    });
            } else {
                console.log(
                    "Usuário não está autenticado ou ID de usuário inválido."
                );
            }
        })
        .catch((error) => {
            console.error("Error fetching user ID:", error);
        });

    const modal = document.querySelectorAll(".modal");
    const modalOpenButtons = document.querySelectorAll(
        "button[data-open-modal]"
    );
    const modalCloseButtons = document.querySelectorAll("[data-close-modal]");
    const body = document.querySelector("body");

    for (let i = 0; i < modalOpenButtons.length; i++) {
        const modalOpenButton = modalOpenButtons[i];
        modalOpenButton.addEventListener("click", (e) => {
            body.classList.add("has-modal-open");
            const modalDataAttribute = e.target.getAttribute("data-open-modal");
            //document.querySelector(`.modal[data-open-modal="${modalDataAttribute}"]`).classList.add('modal--is-open');
            document
                .querySelector(
                    ".modal[data-open-modal='".concat(modalDataAttribute, "']")
                )
                .classList.add("modal--is-open");
        });
    }

    for (let i = 0; i < modalCloseButtons.length; i++) {
        const modalCloseButton = modalCloseButtons[i];
        modalCloseButton.addEventListener("click", (e) => {
            body.classList.remove("has-modal-open");
            e.target.closest(".modal").classList.remove("modal--is-open");
        });
    }

    for (let i = 0; i < modal.length; i++) {
        const modals = modal[i];
        document.addEventListener("keydown", (e) => {
            if (e.keyCode === 27) {
                modals.classList.remove("modal--is-open");
            }
        });
        modals.addEventListener("click", (e) => {
            e.target.classList.remove("modal--is-open");
        });
    }
});
