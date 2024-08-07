function calcularPegada() {
    const consumoEletricidade = validarEntrada("consumoEletricidade");
    const aquecimentoArrefecimento = validarEntrada("aquecimentoArrefecimento");
    const quilometragemCarro = validarEntrada("quilometragemCarro");
    const quilometragemTransportePublico = validarEntrada("quilometragemTransportePublico");
    const eliminacaoResiduos = validarEntrada("eliminacaoResiduos");

    if (consumoEletricidade === null || aquecimentoArrefecimento === null || quilometragemCarro === null || quilometragemTransportePublico === null || eliminacaoResiduos === null) {
        exibirMensagem("Por favor, introduza apenas valores válidos e não deixe parâmetros em branco.");
        return;
    }

    const emissaoEletricidade = consumoEletricidade * 0.4;
    const emissaoAquecimentoArrefecimento = aquecimentoArrefecimento * 2.3;
    const emissaoCarro = quilometragemCarro * 0.2;
    const emissaoTransportePublico = quilometragemTransportePublico * 0.1;
    const emissaoResiduos = eliminacaoResiduos * 0.5;

    const pegadaCarbonoAnual = emissaoEletricidade + emissaoAquecimentoArrefecimento + emissaoCarro + emissaoTransportePublico + emissaoResiduos;

    const pegadaMedia = 11000; 
    const objetivoReducao = 2000; 

    const vezesAcimaMedia = pegadaCarbonoAnual / pegadaMedia;
    const reducaoNecessaria = pegadaCarbonoAnual - objetivoReducao;

    exibirResultado(pegadaCarbonoAnual, vezesAcimaMedia, reducaoNecessaria);
}

function validarEntrada(id) {
    const valor = parseFloat(document.getElementById(id).value);
    if (isNaN(valor) || valor < 0) {
        return null;
    }
    return valor;
}

function exibirMensagem(mensagem) {
    alert(mensagem);
}

function exibirResultado(pegadaCarbono, vezesAcimaMedia, reducaoNecessaria) {
    const resultadoElement = document.getElementById("resultado");
    resultadoElement.classList.add("fade-in-and-scale");

    setTimeout(() => {
        resultadoElement.classList.remove("fade-in-and-scale");
    }, 500);

    let mensagem = `<p>A sua pegada de carbono é: ${pegadaCarbono.toFixed(2)} kg/CO2 por ano.</p>`;

    if (vezesAcimaMedia > 1) {
        mensagem += `<p>Está ${vezesAcimaMedia.toFixed(2)} vezes acima da média de emissões.</p>`;
        mensagem += `<p>Precisa de reduzir ${reducaoNecessaria.toFixed(2)} kg/CO2 para atingir o objetivo.</p>`;
        mensagem += `<p>Considere reduzir seu impacto ambiental para ajudar na preservação do meio ambiente.</p>`;
    } else {
        mensagem += `<p>Parabéns! Está abaixo da média de emissões.</p>`;
        mensagem += `<p>Continue a praticar hábitos sustentáveis para manter o seu impacto ambiental baixo.</p>`;
    }

    resultadoElement.innerHTML = mensagem;
}
