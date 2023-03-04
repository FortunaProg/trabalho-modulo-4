## Relacionamentos entre as tabelas
Este banco de dados foi criado para gerenciar informações sobre cursos, turmas e alunos em uma escola. As tabelas criadas e suas colunas são as seguintes:

Tabela "cursos"
A tabela "cursos" armazena informações sobre os cursos oferecidos pela escola. Cada curso é identificado por um número único de identificação ("id_curso"), possui um nome ("nome_curso") e uma carga horária ("carga_horaria"). A carga horária é medida em horas.

Tabela "turmas"
A tabela "turmas" armazena informações sobre as turmas formadas para cada curso. Cada turma é identificada por um número único de identificação ("id_turma") e possui um nome ("nome_turma"). Cada turma também está associada a um curso específico, identificado pelo número de identificação correspondente na tabela "cursos" ("id_curso").

Tabela "alunos"
A tabela "alunos" armazena informações sobre os alunos matriculados em cada turma. Cada aluno é identificado por um número único de identificação ("id_aluno") e possui um nome ("nome_aluno") e um endereço de e-mail ("email"). Cada aluno também está associado a uma turma específica, identificada pelo número de identificação correspondente na tabela "turmas" ("id_turma").

Relacionamentos entre as tabelas
As tabelas "cursos", "turmas" e "alunos" estão relacionadas entre si por meio de chaves estrangeiras. A tabela "turmas" tem uma chave estrangeira ("id_curso") que referencia a tabela "cursos". Isso significa que cada turma está associada a um curso específico.

Da mesma forma, a tabela "alunos" tem uma chave estrangeira ("id_turma") que referencia a tabela "turmas". Isso significa que cada aluno está associado a uma turma específica, que por sua vez está associada a um curso específico.

Esses relacionamentos permitem que as informações sobre cursos, turmas e alunos sejam armazenadas de maneira organizada e permitam a realização de consultas mais complexas. Por exemplo, é possível obter uma lista de todos os alunos matriculados em uma determinada turma ou um relatório sobre o número de turmas e alunos por curso.
