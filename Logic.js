const tarefas = ['correr', 'jogar', 'brincar']

function executarTarefas (tarefas, callback){
    for (let i = 0; i < tarefas.length; i++){
        callback(tarefas[i])
    }
}

const mostrarTarefa = tarefa => {
    console.log(`Executando a tarefa: ${tarefa}`);    
}

executarTarefas(tarefas,mostrarTarefa)
