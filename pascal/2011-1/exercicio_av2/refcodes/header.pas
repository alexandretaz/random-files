type
    bloco =^no;
    aluno = record
        nome: string;
        av1, av2:real;
    end;

    no = record
        info: aluno;
        prox: bloco;
    end;
    arquivo = file of aluno;

    var inicio, fim, aux: bloco;
        arq:arquivo;
        a:aluno
