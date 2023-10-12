<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,
initial-scale=1.0">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <title>Sua Agenda</title>
</head>

<body class="dark-mode-variables">
    <div class="container">
        @if (auth()->check())
            <aside>
                <div class="toggle">
                    <div class="logo">
                        <img src="{{ asset('images/logo.png') }}">
                        <h2>Sua<span class="danger">Agenda</span></h2>
                    </div>
                    <div class="close" id="close-btn"> <span class="material-icons-sharp"> close </span> </div>
                </div>

                <div class="sidebar">
                    <a href="{{ route('home') }}" class="{{ request()->is('/') ? 'active' : '' }}">
                        <span class="material-icons-sharp">
                            dashboard
                        </span>
                        <h3>Home</h3>
                    </a>
                    <a href="/usuarios" class="{{ request()->is('usuarios') ? 'active' : '' }}">
                        <span class="material-icons-sharp">
                            person_outline
                        </span>
                        <h3>Funcionários</h3>
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
                    <a href="{{ route('login.destroy') }}">
                        <span class="material-icons-sharp">
                            logout
                        </span>
                        <h3>Logout</h3>
                    </a>

                </div>
            </aside>
        @endif
        @yield('content')
    </div>
</body>

</html>
