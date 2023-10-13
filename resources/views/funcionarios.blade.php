<!-- funcionarios.blade.php -->
@extends('master')

@section('content')
    @error('error')
        <span>{{ $message }}</span>
    @enderror

    @if (auth()->check())
        <main>

            <div class="new-users">
                <h2>{{-- aqui apresenta o título --}}</h2>
                <div class="funcionarios-list">
                    <div class="user novo-funcionario" id="novoFuncionario">
                        {{-- aqui apresenta a lista de funcionários --}}
                    </div>
                </div>
                <div>
                    <button id="adicionarUsuarioBtn" class="button button-styled" data-open-modal="open-modal-1">Adicionar Novo
                        Usuário</button>
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

            <div class="modal" data-open-modal="open-modal-1">
                <div class="modal__body">
                    <div class="modal__header">
                        <button class="modal__close" data-close-modal>X</button>
                    </div>
                    <div class="modal__content">
                        My modal
                    </div>
                </div>
            </div>

            <script src="{{ asset('js/funcionarios.js') }}"></script>
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
