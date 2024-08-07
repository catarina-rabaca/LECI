const perguntas = [
    {
        pergunta: "Qual dos seguintes é o gás responsável pelo efeito de estufa?",
        respostas: [
            { text: "Nitrogénio", correct: false },
            { text: "Oxigénio", correct: false },
            { text: "Hidrogénio", correct: false },
            { text: "Dióxido de Carbono", correct: true },
        ]
    },
    {
        pergunta: "Principal fonte de energia que mais provoca emissões de gases efeito de estufa em Portugal?",
        respostas: [
            { text: "Energia nuclear", correct: false },
            { text: "Energia proveniente de luz solar", correct: false },
            { text: "Energia proveniente de combustíveis fósseis", correct: true },
            { text: "Energia eólica", correct: false },
        ]
    },
    {
        pergunta: "Qual é o principal impacto das alterações climáticas nos ecossistemas marinhos?",
        respostas: [
            { text: "Acidificação dos oceanos", correct: true },
            { text: "Aumento da salinidade", correct: false },
            { text: "Redução da temperatura da água", correct: false },
            { text: "Maior concentração de nutrientes", correct: false },
        ]
    },
    {
        pergunta: "Como as alterações climáticas afetam, particularmente, o litoral de Portugal?",
        respostas: [
            { text: "Redução da exposição à erosão costeira", correct: false },
            { text: "Diminuição da salinidade nas águas costeiras", correct: false },
            { text: "Elevação do nível do mar e risco de inundações costeiras", correct: true },
            { text: "Aumento da biodiversidade marinha", correct: false },
        ]
    },
    {
        pergunta: "Qual é o conceito de 'pegada de carbono'?",
        respostas: [
            { text: "Quantidade total de carbono em um ecossistema", correct: false },
            { text: "Medida do impacto individual na emissão de gases de efeito estufa", correct: true },
            { text: "Taxa de absorção de carbono pelas plantas", correct: false },
            { text: "Concentração de dióxido de carbono na atmosfera", correct: false },
        ]
    }
];


const perguntaElement = document.getElementById("pergunta");
const respostasButton = document.getElementById("respostas");
const avancarButton = document.getElementById("avancar");


let currentPerguntaIndex = 0;
let pontuacao = 0;




function comecarQuiz() {
    currentPerguntaIndex = 0;
    pontuacao = 0;
    avancarButton.innerHTML = "Avançar ->";
    mostrarPergunta();
}



function mostrarPergunta() {
    resetEstado();
    let currentPergunta = perguntas[currentPerguntaIndex];
    let perguntaNumero = currentPerguntaIndex + 1;
    perguntaElement.innerHTML = perguntaNumero + ". " + currentPergunta.pergunta;

    currentPergunta.respostas.forEach(resposta => {
        const button = document.createElement("button"); 
        button.innerText = resposta.text;
        button.classList.add("btn");
        respostasButton.appendChild(button);
        if (resposta.correct) {
            button.dataset.correct = resposta.correct;
        }

        button.addEventListener("click", avaliarResposta);
    });

    avancarButton.style.display = "none";
}




function resetEstado() {
    avancarButton.style.display = "none";
    while (respostasButton.firstChild) {
        respostasButton.removeChild(respostasButton.firstChild);
    }
}




function avaliarResposta(e) {
    const selecionarBtn = e.target;
    const estaCerto = selecionarBtn.dataset.correct === "true";
    
    if (estaCerto) {
        selecionarBtn.classList.add("Certo");
        pontuacao++;
    } 
    
    else {
        selecionarBtn.classList.add("Errado");
    }

    Array.from(respostasButton.children).forEach(button => {
        if (button.dataset.correct === "true") {
            button.classList.add("Certo");
        }
        button.disabled = true;
    });

    avancarButton.style.display = "block";
}

function mostrarPontuacao() {
    resetEstado();
    perguntaElement.innerHTML = "Parabéns, acertaste " + pontuacao + " de " + perguntas.length + " perguntas!";
    avancarButton.innerHTML = "Recomeçar?";
    avancarButton.style.display = "block";
} 

function cuidarProximoButton() {
    currentPerguntaIndex++;
    if (currentPerguntaIndex < perguntas.length) {
        mostrarPergunta();
    } 
    
    else {
        mostrarPontuacao();
    }
}

avancarButton.addEventListener("click", () => {
    if (currentPerguntaIndex < perguntas.length) {
        cuidarProximoButton();
    }
    else {
        comecarQuiz();
    }
});

comecarQuiz();
