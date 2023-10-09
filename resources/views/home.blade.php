<!DOCTYPE html>
<html lang="pt-br">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width,
         initial-scale=1.0">
   <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
   <link rel="stylesheet" href="{{asset('css/style.css')}}">
   <title>Sua Agenda</title>
</head>

<body class="dark-mode-variables">
   <div class="container">
      <!-- Sidebar Section -->
      <aside>
         <div class="toggle">
            <div class="logo">
               <img src="{{asset('images/logo.png')}}">
               <h2>Sua<span class="danger">Agenda</span></h2>
            </div>
            <div class="close" id="close-btn"> <span class="material-icons-sharp"> close </span> </div>
         </div>
         <div class="sidebar">
         <a href="/home" class="{{ request()->is('home') ? 'active' : '' }}">
               <span class="material-icons-sharp">
                  dashboard
               </span>
               <h3>Home</h3>
            </a>
            <a href="/usuarios" class="{{ request()->is('usuarios') ? 'active' : '' }}">
               <span class="material-icons-sharp">
                  person_outline
               </span>
               <h3>Usuários</h3>
            </a>
            <a href="#">
               <span class="material-icons-sharp">
                  groups
               </span>
               <h3>Clientes</h3>
            </a>
            <a href="#">
               <span class="material-icons-sharp">
                  calendar_month
               </span>
               <h3>Agendar</h3>
            </a>
            <a href="#">
               <span class="material-icons-sharp">
                  category
               </span>
               <h3>Serviços</h3>
            </a>
            <a href="#">
               <span class="material-icons-sharp">
                  edit_calendar
               </span>
               <h3>Listar Agenda</h3>
               <span class="message-count">27</span>
            </a>
            <a href="#">
               <span class="material-icons-sharp">
                  inventory
               </span>
               <h3>Finalizar Atend.</h3>
               <span class="message-count">02</span>
            </a>
            <a href="#">
               <span class="material-icons-sharp">
                  report_gmailerrorred
               </span>
               <h3>Reports</h3>
            </a>
            <a href="#">
               <span class="material-icons-sharp">
                  settings
               </span>
               <h3>Settings</h3>
            </a>
            <a href="#">
               <span class="material-icons-sharp">
                  add
               </span>
               <h3>New Login</h3>
            </a>
            <a href="#">
               <span class="material-icons-sharp">
                  logout
               </span>
               <h3>Logout</h3>
            </a>
         </div>
      </aside>
      <!-- End of Sidebar Section -->
      <!-- Main Content -->
      <main>
         <h1>Estatística</h1>
         <!-- Analyses -->
         <div class="analyse">
            <!-- Total Vendas -->
            <div class="sales">
               <div class="status">
                  <div class="info total-vendas">
                     <h3>Total Vendas</h3>
                     <h1>
                        <!--valor total-->
                     </h1>
                  </div>
                  <div class="progresss">
                     <svg>
                        <circle cx="38" cy="38" r="36"></circle>
                     </svg>
                     <div class="percentage">
                        <p>+81%</p>
                     </div>
                  </div>
               </div>
            </div>
            <!-- End of Total Vendas -->
            <!-- Agendamentos -->
            <div class="visits">
               <div class="status">
                  <div class="info total-agendamentos">
                     <h3>Clientes Atendidos</h3>
                     <h1 id="totalAgendamentosConcluidos">
                        <!--agendamentos concluídos-->
                     </h1>
                  </div>
                  <div class="progresss">
                     <svg>
                        <circle cx="38" cy="38" r="36"></circle>
                     </svg>
                     <div class="percentage">
                        <p>-48%</p>
                     </div>
                  </div>
               </div>
            </div>
            <!-- End of Agendamentos -->
            <!-- Clientes -->
            <div class="horasTrabalhadas">
               <div class="status">
                  <div class="info">
                     <h3>Horas Trabalhadas</h3>
                     <h1><!--horas trabalhadas--></h1>
                  </div>
                  <div class="progresss">
                     <svg>
                        <circle cx="38" cy="38" r="36"></circle>
                     </svg>
                     <div class="percentage">
                        <p>+21%</p>
                     </div>
                  </div>
               </div>
            </div>
            <!-- End of Clientes -->
         </div>
         <!-- End of Analyses -->
         <!-- Próximos Agendamentos -->
         <div class="new-users">
            <h2>Próximos Agendamentos (0)</h2> <!-- O número será atualizado dinamicamente -->
            <div class="user-list">
               <div class="user">
                  <!-- LISTA DE PROXIMOS CLIENTES -->
               </div>
            </div>
         </div>
         <!-- End of Próximos Agendamentos -->
         <!-- Recent Orders Table -->
         <div class="recent-orders">
            <h2>Agendamentos para Baixa</h2>
            <table>
               <thead>
                  <tr>
                     <th>Nome Cliente</th>
                     <th>Data Atendimento</th>
                     <th>Valor</th>
                     <th>Status</th>
                     <th></th>
                  </tr>
               </thead>
               <tbody></tbody>
            </table>
            <a href="#">Mostrar Todos</a>
         </div>
         <!-- End of Recent Orders -->
      </main>
      <!-- End of Main Content -->
      <!-- Right Section -->
      <div class="right-section">
         <div class="nav">
            <button id="menu-btn">
               <span class="material-icons-sharp">menu</span>
            </button>
            <div class="dark-mode">
               <span class="material-icons-sharp active">light_mode</span>
               <span class="material-icons-sharp">dark_mode</span>
            </div>
            <div class="profile">
               <div class="info">
                  <p>Hey, <b>Reza</b>
                  </p>
                  <small class="text-muted">Admin</small>
               </div>
               <div class="profile-photo">
                  <img src="{{asset('images/profile-1.jpg')}}">
               </div>
            </div>
         </div>
         <!-- End of Nav -->
         <div class="user-profile">
            <div class="logo">
               <img src="{{asset('images/logo.png')}}">
               <h2>Sua Agenda</h2>
               <p>Suporte: (62) 98500-9520</p>
            </div>
         </div>
         <div class="reminders">
            <div class="header">
               <h2>Lembretes</h2>
               <span class="material-icons-sharp">notifications_none</span>
            </div>
            <div class="notification">
               <div class="icon">
                  <span class="material-icons-sharp">volume_up</span>
               </div>
               <div class="content">
                  <div class="info">
                     <h3>Workshop</h3>
                     <small class="text_muted">08:00 AM - 12:00 PM</small>
                  </div>
                  <span class="material-icons-sharp">more_vert</span>
               </div>
            </div>
            <div class="notification deactive">
               <div class="icon">
                  <span class="material-icons-sharp">edit</span>
               </div>
               <div class="content">
                  <div class="info">
                     <h3>Workshop</h3>
                     <small class="text_muted">08:00 AM - 12:00 PM</small>
                  </div>
                  <span class="material-icons-sharp">more_vert</span>
               </div>
            </div>
            <div class="notification add-reminder">
               <div>
                  <span class="material-icons-sharp">add</span>
                  <h3>Add Lembretes</h3>
               </div>
            </div>
         </div>
      </div>
   </div>
   <script src="{{ asset('js/agenda.js') }}"></script>
   <script src="{{ asset('js/home.js') }}"></script>
</body>

</html>