@extends('master')

@section('content')
    @error('error')
        <span>{{ $message }}</span>
    @enderror

    @if (auth()->check())
        <main>
            <div class="new-users">
                <h2>{{-- aqui apresenta o titulo --}}</h2>
                <div class="funcionarios-list">
                    <div class="user">
                        {{-- aqui apresenta a lista de funcionarios --}}
                    </div>
                </div>
            </div>
            <div class="recent-orders">
                <h2>Lista de Funcionários</h2>
                <table id="funcionariosTable">
                    <thead>
                        <tr>
                            <th>Nome Usuário</th>
                            <th>E-mail</th>
                            <th>ID do Patrão</th>
                            <th>Status</th>
                            <th>Ações</th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
                <a href="#">Mostrar Todos</a>
            </div>
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
