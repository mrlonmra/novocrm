// Initialize an empty agenda array
const Agenda = [];

// Fetch and populate agenda data from the API
function fetchAndPopulateAgenda() {
    fetch("https://api.studiokatyanemendes.com.br/api/agenda")
        .then((response) => response.json())
        .then((data) => {
            // Sort the data by start date in descending order (most recent first)
            data.sort((a, b) => new Date(b.start) - new Date(a.start));

            // Filter the data to include only "Pendente" items
            const pendingData = data.filter(
                (item) => item.status === "Pendente"
            );

            // Limit the data to the first 5 items
            const limitedData = pendingData.slice(0, 5);

            // Format and push data to Agenda array
            limitedData.forEach((item) => {
                Agenda.push({
                    nomeCliente: item.nomeCliente,
                    start: formatDate(item.start),
                    valor: `R$ ${parseFloat(item.valor).toFixed(2)}`,
                    status: item.status,
                });
            });

            // Populate the agenda UI
            populateAgendaUI();

            // Fetch and populate upcoming appointments
            fetchAndPopulateUpcomingAppointments(data);
        })
        .catch((error) => {
            console.error("Error fetching data from API:", error);
        });
}

// Function to format a date from yyyy/mm/dd to dd/mm/yyyy
function formatDate(dateString) {
    const date = new Date(dateString);
    const options = { day: "2-digit", month: "2-digit", year: "numeric" };
    return new Intl.DateTimeFormat("pt-BR", options).format(date);
}

// Populate the agenda UI with data from the Agenda array
function populateAgendaUI() {
    const agendaTableBody = document.querySelector("table tbody");

    // Clear existing table rows
    agendaTableBody.innerHTML = "";

    // Iterate through the Agenda array and create table rows
    Agenda.forEach((item) => {
        const tr = document.createElement("tr");
        const trContent = `
            <td>${item.nomeCliente}</td>
            <td>${item.start}</td>
            <td>${item.valor}</td>
            <td class="${
                item.status === "Faltou"
                    ? "danger"
                    : item.status === "Pendente"
                    ? "warning"
                    : "success"
            }">${item.status}</td>
            <td class="primary">Detalhes</td>
        `;
        tr.innerHTML = trContent;
        agendaTableBody.appendChild(tr);
    });
}

// Fetch and populate upcoming appointments
function fetchAndPopulateUpcomingAppointments(data) {
    const upcomingAppointments = data.filter((item) => {
        const timeRemaining = calculateTimeRemaining(item.start);
        return timeRemaining.days >= 0 && timeRemaining.hours >= 0;
    });

    popularProximosAgendamentos(upcomingAppointments);
}

// Calculate the time remaining until an appointment
function calculateTimeRemaining(startDateTime) {
    const now = new Date();
    const start = new Date(startDateTime);
    const timeDiff = start - now;

    const minutesRemaining = Math.floor(timeDiff / (1000 * 60));
    const hoursRemaining = Math.floor(minutesRemaining / 60);
    const daysRemaining = Math.floor(hoursRemaining / 24);

    return {
        days: daysRemaining,
        hours: hoursRemaining % 24,
        minutes: minutesRemaining % 60,
    };
}

// Populate the "Próximos Agendamentos" section with upcoming appointments
// Populate the "Próximos Agendamentos" section with upcoming appointments
function popularProximosAgendamentos(data) {
    const userlist = document.querySelector(".user-list");
    userlist.innerHTML = "";
    // Sort appointments by start date (closest to furthest)
    data.sort((a, b) => new Date(a.start) - new Date(b.start));
    // Show only the next 3 appointments
    const proximosAgendamentosLimitado = data.slice(0, 3);
    const proximosAgendamentos = data.slice(0, 20);
    // Exibir a quantidade de próximos agendamentos
    const quantidadeProximosAgendamentos = proximosAgendamentos.length;
    // Atualizar o título com a quantidade
    const tituloProximosAgendamentos = document.querySelector(".new-users h2");
    tituloProximosAgendamentos.textContent = `Funcionários (${quantidadeProximosAgendamentos})`;
    proximosAgendamentosLimitado.forEach((item) => {
        const timeRemaining = calculateTimeRemaining(item.start);
        if (timeRemaining.days >= 0 && timeRemaining.hours >= 0) {
            const userDiv = document.createElement("div");
            userDiv.classList.add("user");
            // Split full name into first and last names
            const nomeCompleto = item.nomeCliente.split(" ");
            const primeiroNome = nomeCompleto[0];
            const ultimoNome = nomeCompleto[nomeCompleto.length - 1];
            userDiv.innerHTML = `
                <img src="https://cdn3.iconfinder.com/data/icons/avatars-business-human1/180/woman2-512.png">
                <h2>${primeiroNome} ${ultimoNome}</h2>
                <p>${timeRemaining.days} dias ${timeRemaining.hours} horas</p>
            `;
            userlist.appendChild(userDiv);
        }
    });

    // Add the "Novo Agendamento" button as the fourth item
    const novoAgendamentoDiv = document.createElement("div");
    novoAgendamentoDiv.classList.add("user");
    novoAgendamentoDiv.innerHTML = `
        <img src="/images/plus.png">
        <h2>Mais</h2>
        <p>Novo Agendamento</p>
    `;
    userlist.appendChild(novoAgendamentoDiv);
}

// Function to fetch data from the API and calculate the sum of "valor" for appointments with "concluido" status
function fetchAndCalculatetotalVendas() {
    fetch("https://api.studiokatyanemendes.com.br/api/agenda")
        .then((response) => response.json())
        .then((data) => {
            const totalSales = data.reduce(
                (sum, item) => sum + parseFloat(item.valor),
                0
            );
            // Filter appointments with "concluido" status
            const agendamentosCompletos = data.filter(
                (item) => item.status === "Concluido"
            );
            // Calculate the sum of "valor" field for completed appointments
            const totalVendas = agendamentosCompletos.reduce(
                (sum, item) => sum + parseFloat(item.valor),
                0
            );
            // Format the total sales value in BRL
            const totalVendasFormatado = new Intl.NumberFormat("pt-BR", {
                style: "currency",
                currency: "BRL",
            }).format(totalVendas);
            // Display the total sales in the HTML element
            const totalVendasElement =
                document.querySelector(".total-vendas h1");
            totalVendasElement.textContent = totalVendasFormatado;
        })
        .catch((error) => {
            console.error("Error fetching data from API:", error);
        });
}

function contarAgendamentosConcluidos() {
    fetch("https://api.studiokatyanemendes.com.br/api/agenda")
        .then((response) => response.json())
        .then((data) => {
            // Filtrar agendamentos com status "Concluido"
            const agendamentosConcluidos = data.filter(
                (item) => item.status === "Concluido"
            );
            // Obter o número de agendamentos concluídos
            const numeroAgendamentosConcluidos = agendamentosConcluidos.length;
            // Atualizar o conteúdo do elemento HTML
            const totalAgendamentosConcluidosElement = document.getElementById(
                "totalAgendamentosConcluidos"
            );
            totalAgendamentosConcluidosElement.textContent =
                numeroAgendamentosConcluidos;
        })
        .catch((error) => {
            console.error("Erro ao buscar dados da API:", error);
        });
}

// Função para calcular a soma das horas de atendimento em agendamentos concluídos
function calcularHorasDeAtendimento() {
    fetch("https://api.studiokatyanemendes.com.br/api/agenda")
        .then((response) => response.json())
        .then((data) => {
            // Filtrar agendamentos com status "Concluído"
            const agendamentosConcluidos = data.filter(
                (item) => item.status === "Concluido"
            );
            // Calcular a soma das horas de atendimento em minutos
            const totalMinutos = agendamentosConcluidos.reduce(
                (total, agendamento) => total + agendamento.hours,
                0
            );
            // Converter a soma de minutos em horas e minutos
            const totalHoras = Math.floor(totalMinutos / 60);
            const minutosRestantes = totalMinutos % 60;
            // Exibir o resultado no console (opcional)
            console.log(
                `Total de horas de atendimento: ${totalHoras} horas e ${minutosRestantes} minutos`
            );
            // Selecionar o elemento <h1> para atualizar com o resultado
            const horasTrabalhadasH1 = document.querySelector(
                ".horasTrabalhadas .info h1"
            );
            // Atualizar o conteúdo do elemento <h1> com o resultado formatado
            horasTrabalhadasH1.textContent = `${totalHoras}.${minutosRestantes}`;
        })
        .catch((error) => {
            console.error("Erro ao buscar dados da API:", error);
        });
}
document.addEventListener("DOMContentLoaded", function () {
    // Chame a função para calcular as horas de atendimento e atualizar o elemento <h1>
    calcularHorasDeAtendimento();
    // Chamar a função para contar agendamentos concluídos quando a página carregar
    contarAgendamentosConcluidos();
    // Call the function to fetch and calculate total sales when the page loads
    fetchAndCalculatetotalVendas();
    // Fetch and populate agenda data when the page loads
    fetchAndPopulateAgenda();
});
