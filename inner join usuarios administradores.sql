SELECT users.name
FROM users
INNER JOIN tipos_de_usuarios ON users.id_tipo_usuario = tipos_de_usuarios.id
WHERE tipos_de_usuarios.tipo = 'administrador';