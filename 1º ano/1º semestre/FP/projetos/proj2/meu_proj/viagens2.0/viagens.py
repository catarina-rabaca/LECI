#ALUNOS: [120039, 119582, 119875]
from colorama import Fore, Style   #pip install colorama
import requests   #pip install requests
import random
from datetime import datetime
import pytz     #pip install pytz
from timezonefinder import TimezoneFinder     #pip install timezonefinder

def verificar_conexao_a_internet(): #Esta função verifica a conexão do usuário à internet. Uma vez que é necessário para a API funcionar. Fornece-se dados à API, dados esses em que se tem certeza que funcionam e que retornam um output. Assim, se não for possível chamar a API é porque o utilizador encontra-se sem internet.
    lon = 40.633162     #Dados do DETI
    lat = -8.659364
    radius = 30
    tipos = 'commercial'
    try:                                                #Irá se tentar chamar a função obter_atrações, que tem o parâmetros da API.
        obter_atracoes(lon, lat, radius, tipos)
        return True                              #A função retornará True se correr tudo bem, esta informação será útil mais tarde.
    except requests.exceptions.ConnectionError:             #Caso ocorra o erro de conexão, a função retornará False, informação essa que será usada mais tarde.
        return False

def display_do_estado():                        #Esta função servirá para, com os dados fornecidos pela função anterior, mostrar ao utilizador o estado de internet
    print("Verificando o seu estado de internet (porque para a API funcionar é necessário)...")                 #Informando o que o programa está a fazer.
    verificacao = verificar_conexao_a_internet()             #Atribuição de um nome ao return da função verificar_conexao_a_internet
    if verificacao:               #Se o resultado da função anterior for True, então é porque o utilizador encontra-se com ligação à internet.
        print()
        print("Estado da internet: " + Fore.GREEN + "Ligado." + Style.RESET_ALL)            #É informado ao utilizador que ele se encontra ligado à internet.
        print("Prosseguindo...")
        print()
        return True          #Caso o utilizador esteja com internet, é retornado o valor True, que será utilizado mais tarde.   
    else:
        return False            #Caso o utilizador esteja com internet, é retornado o valor False, que será utilizado mais tarde. 

def intro():                #Introdução do programa ao utilizador, seria então o primeiro menu.
    verificacao = display_do_estado()         #Atribuição de um nome ao return da função display_do_estado.
    if verificacao:        #Se a função display_do_estado retornar o valor True então fará aparecer a introdução ao programa.
        display_ascii_image(file_path)
        print(Fore.YELLOW + "Bem-Vindo à RotaGlobal Viagens, esta aplicação permitirá a facilitação do planeameto de viagens.\nAlgumas das funcionalidades mais importantes incluem: " + Style.RESET_ALL)
        print(Fore.LIGHTYELLOW_EX + "     *Conhecer a unidade monetária local." + Style.RESET_ALL)
        print(Fore.LIGHTYELLOW_EX + "     *Conhecer o fuso horário." + Style.RESET_ALL)
        print(Fore.LIGHTYELLOW_EX + "     *Conhecer os principais pontos turísticos." + Style.RESET_ALL)
        menu()
    else: #Caso o return do programa seja False, então mostrará ao usuário que este não tem internet e pede para se reconectar.
        print()
        print("Estado da internet: " + Fore.RED + "Desligado." + Style.RESET_ALL)
        print()
        print("Sem conexão à internet. Por favor, volte a estabelecer para poder correr o programa.")

file_path = "praia.txt"                 #Nome do ficheiro onde se econtra um desenho de uma praia.

def display_ascii_image(file_path):             #Função para fazer aparecer o desenho da praia.
    with open(file_path, 'r') as file:
        ascii_image = file.read()
        print(ascii_image)

def menu():
    print(Fore.GREEN + "     1- Iniciar" + Style.RESET_ALL)         #Opções para iniciar o programa ou sair do programa.
    print(Fore.RED + "     2- Sair" + Style.RESET_ALL)
    main()

def main():
    opcao=input("Introduza uma opção: ")            
    if opcao == '1':                    #Se o utilizador, escolher iniciar o programa, então serão apresentados mais menus
        menu2()
        main_2()
    elif opcao == '2':              #Se o utilizador, escolher sair do programa, então o programa é encerrado e despede-se do utilizador.
        print("Ok, até breve!")
    else:
        print("Opção Inválida. Introduza uma opção válida desta vez.")              #Caso o utilizador introduza uma opção inválida, é apresentado isto.
        main()

def menu2():            #Primeiro menu. Aqui o utilizador pode escolher o que pretende executar no programa.
    print(Fore.LIGHTCYAN_EX + "     1 - Escolher a minha viagem" + Style.RESET_ALL)                 #Nesta opção, é o utilizador a costumizar a sua viagem.
    print(Fore.LIGHTMAGENTA_EX + "     2 - Recomende-me uma viagem" + Style.RESET_ALL)              #Nesta opção, o programa gera aleatóriamente uma viagem.
    print(Fore.LIGHTGREEN_EX + "     3 - Ver todas as possíveis categorias" + Style.RESET_ALL)      #Nesta opção, o utilizador pode escolher ver todas as possíveis categorias.

file= 'categories.txt'                  #Atribuição de um nome ao ficheiro categories.txt

def mostrar_cat():                   #Função que mostrará todas as categorias possíveis ao usuário (so ficheiro categories)
    print("Categorias disponíveis:")
    categorias = []
    with open(file, 'r') as f:
        categorias = f.readlines()
    categorias = [ c for c in categorias if '.' not in c ]
    flag = True
    print(" * ", end="")
    for categoria in categorias:
        if flag:
            print(Fore.LIGHTCYAN_EX + categoria.strip() + Fore.RESET, end=" * ")
            flag = not flag
        else:
            print(Fore.LIGHTYELLOW_EX + categoria.strip() + Fore.RESET, end=" * ")
            flag = not flag
    print("\n")

def obter_float(pergunta):
    while True:
        valor = input(pergunta)
        try:
            return float(valor)
        except ValueError:
            print(Fore.RED + "Introduza um valor numérico" + Fore.RESET)

def perguntas():            #Lista de perguntas que serão feitas ao utilizador, caso este escolha ao opção 1 na função main.
    global lat, lon, radius, tipos
    lat = obter_float("Introduza a latitude da localização de partida: ")              #Latitude em float.
    while not verificar_lat():                          #Enquanto o input não corresponder aos parametros aceites, irá continuar a pedir para ser introduzido o input.
        lat = obter_float("Introduza a latitude da localização de partida: ")         #O valor de latitude será atualizado.
    lon = obter_float("Introduza a longitude da localização de partida: ")               #Longitude em float.
    while not verificar_lon():                          #Enquanto o input não corresponder aos parametros aceites, irá continuar a pedir para ser introduzido o input.
        lon = obter_float("Introduza a longitude da localização de partida: ")          #O valor de longitude será atualizado.
    radius = obter_float("Introduza o quão longe quer viajar em kilómetros: ")             #Raio em float.
    while not verificar_raio():                         #Enquanto o input não corresponder aos parametros aceites, irá continuar a pedir para ser introduzido o input.
        radius = obter_float("Introduza o quão longe quer viajar em kilómetros: ")     #O valor do raio será atualizado.
    radius = radius*1000        #Conversão de kilómetros para metros, uma vez que a API só aceita em metros.
    tipos = input("Introduza os tipos de atrações que quer visitar, separados por vírgulas: ")          #Tipos de categorias
    print()
    return lat, lon, radius, tipos

def main_2():
    opcao2 = input("Introduza uma opção: ")              #Segundo menu. Aqui o utilizador pode escolher o que pretende executar no programa.
    print()
    if opcao2 == '1':             #Se escolher "Escolher a minha viagem" então:
        lat, lon, radius, tipos = perguntas()       #Os valores da função perguntas serão armazenados aqui.
        tipos_validos = verificar_cat()                 #Irá ser analisado se a categoria introduzida é válida.
        if tipos_validos:           #Se for válida, então mandará os dados para a API.
            atracoes = obter_atracoes(lon, lat, radius, tipos)
            if atracoes:
                for atracao in atracoes:       #Se for válida e se o país tiver essa atração, então mandará essas informações para a função que dará a print do output.
                    print_atracao(atracao, lat, lon)
            else:
                print("Nenhuma atração encontrada.")        #Caso não, é apresentada esta mensagem.
    elif opcao2 == '2':           #Se for escolhido "Recomende-me uma viagem", então o programa gerará uma viagem aleatória
        print("Procurando atrações para lhe recomendar...")     #Informando ao utilizador, o que o programa está a fazer.
        print()
        while True:
            lat, lon, radius, tipos = random_perguntas()            #O mesmo para a opção 1, mas neste caso com dados aleatórios.
            atracoes = obter_atracoes(lon, lat, radius, tipos)      
            if atracoes:                #Mandará os dados para a API.
                pais_found = []
                for atracao in atracoes:
                    pais_found.append(print_atracao(atracao, lat, lon))
                if any(pais_found):
                    break  # Encerra o loop se encontrar atrações
    elif opcao2 == '3':           #Caso o utilizador escolha ver as categorias:
        mostrar_cat()           #Irá invocar a função que dá print a elas.
        menu2()                 #E irá chamar os menus denovo.
        main_2()
    else:
        print("Opção Inválida. Introduza uma opção válida desta vez.") 
        menu2()
        main_2()     #Se o utilizador fornecer uma opção inválida.

global lon, lat, radius, tipos

def random_perguntas():
    lat = random.uniform(36.95, 42.15)      #Número random para a lat, lon e raio.
    lon = random.uniform(6.19, -5.5)
    radius = random.choice(range(20, 50))
    radius = radius*1000
    tipos1 = ['commercial', 'catering', 'natural', 'office', 'service']         #Lista dos tipos de categorias mais populares, para garantir que o programa vai achar pelo menos uma.
    tipos = ','.join(tipos1)

    return lat, lon, radius, tipos

def verificar_lon():                #Verifica se a lon está dentro dos angulos aceites.
    if lon >= 180.0:
        print("Longitude inválida, tem que ser inferior que 180º")
        return False
    elif lon <= -180.0:
        print("Longitude inválida, tem que ser superior a -180º")
        return False
    return True

def verificar_lat():                #Verifica se a lat está dentro dos angulos aceites.
    if lat <= -90.0:
        print("Latitude inválida, tem que ser superior a -90º")
        return False
    elif lat >= 90.0:
        print("Latitude inválida, tem que ser inferior a 90º")
        return False
    return True

def verificar_raio():               #Verifica se a raio está dentro dos parametros aceites pela API.
    if radius > 50.0:
        print("O raio é maior que 50 e a API não suporta, por favor introduza um valor menor.")
        return False
    return True

def verificar_cat():            #Verifica se a categoria está no ficheiro, categories.txt.
    global tipos                
    with open(file, 'r') as f:
        conteudo = f.read()  

    categorias = conteudo.splitlines()  # Separar as linhas do arquivo em uma lista de categorias.
    tipos_list = tipos.split(',')  # Separar os tipos de atrações fornecidos pelo usuário.

    for tipo in tipos_list:         #Por cada tipo de categoria na lista das categorias:       
        if tipo not in categorias:      #SE um tipo não estiver contido nessa lista então:
            print(f"A categoria '{tipo}' não é válida. Por favor, escolha entre as categorias disponíveis.")        #É fornecida esta informação ao usuário.
            return False
    return True

def encontrar_fuso_horario(lat,lon):            #Função para mostrar o fuso horário de um país.
    encontar_tz = TimezoneFinder()              #A dar um nome à função TimezoneFinder.
    fuso_horario_tz = encontar_tz.timezone_at(lat=lat, lng=lon)
    if not fuso_horario_tz:             #Se for impossível chamar a função para aquele país/zona, então:
        return "Fuso hórario não encontrado para estas coordenadas"         #Será retornado isto.
    fuso_horario_sitio = pytz.timezone(fuso_horario_tz)                 #Agora o fuso horário será formatado.
    fuso_horario_atual_sitio = datetime.now(fuso_horario_sitio)
    formato_a_apresentar = '%d/%m/%Y %H:%M:%S %Z%z'
    hora_a_apresentar = fuso_horario_atual_sitio.strftime(formato_a_apresentar)
    return hora_a_apresentar                #Retorno do fuso horário.

def obter_atracoes(lon, lat, radius, tipos):            #Função que contem os parametros da API.
    api_key = '79985610e5064917a48db318c7bda43b'        #Chave.
    base_url = "https://api.geoapify.com/v2/places"     #URL.
    params = {                                          #Parametros.
        'filter': f"circle:{lon},{lat},{radius}",  
        'bias': f"proximity:{lon},{lat}",  
        'categories': tipos,  
        'apiKey': api_key
    }

    response = requests.get(base_url, params=params)                    #Resposta da API.

    if response.status_code == 200:                     #Status Code.
        return response.json()['features']
    else:
        print("Erro ao obter atrações:", response.text)             #Caso a API não responda.
        return None

def obter_pais(nome_pais):
    base_url = f'https://restcountries.com/v3.1/name/{nome_pais}'               #Outra API que irá verificar a unidade monetária de um país.
    response = requests.get(base_url).json()
    return response[0]

def print_atracao(atracao, lat, lon):           #Print da informação das viagens
    nome_atracao = atracao.get('properties', {}).get('name', 'N/A')
    pais_atracao = atracao.get('properties', {}).get('country', 'N/A')
    coords_atracao = atracao.get('geometry', {}).get('coordinates', 'N/A')[::-1]
    zipcode = atracao.get('properties', {}).get('postcode', 'N/A')
    distancia =atracao.get('properties', {}).get('distance', 'N/A')
    cidade = atracao.get('properties', {}).get('city', 'N/A')
    rua = atracao.get('properties', {}).get('street', 'N/A')

    if pais_atracao == "N/A":
        return False

    if distancia != "N/A":
        distancia = distancia / 1000

    fuso_horario = encontrar_fuso_horario(lat, lon)

    moedas_pais = obter_pais(pais_atracao)["currencies"]           #Procura a unidade monetária no país.

    print("Nome da atração:", nome_atracao)
    print("País:", pais_atracao)
    print("Localização (Latitude, Longitude):", coords_atracao)
    if distancia != "N/A":
        print("Distância à localização de partida:", f"{distancia:.2f} km")
    else:
        print("Distância não disponível")
    print("Zipcode: ", zipcode)
    print("Cidade: ", cidade)
    print("Rua: ", rua)
    print("Fuso hórario local: ", fuso_horario)
    for cod_moeda in moedas_pais:
        print("Unidade monetária: ", cod_moeda, moedas_pais[cod_moeda]["symbol"])
    print()
    return True

if __name__ == "__main__":
    file_path = "praia.txt"
    file = 'categories.txt'

    intro()