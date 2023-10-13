@extends('master')

@section('content')
    @error('error')
        <span>{{ $message }}</span>
    @enderror

    @if (auth()->check())
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
                <table id="agendaTable">
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
    @else
        <div class="centered">
            <div class="right-section">
                <div class="user-profile">
                    <div class="logo">
                        <img src="{{ asset('images/logo.png') }}">
                        <h2>Sua Agenda</h2>
                        <a href="{{ route('login.index') }}">Login</a>
                    </div>
                </div>
            </div>
        </div>
    @endif
@endsection
