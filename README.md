# GPSDataTracker-AcceleroDatameter

![IMG_20220603_085638](https://github.com/mario-akira/GPSDataTracker-AcceleroDatameter/assets/152718950/39e69449-f0f7-42bc-8c26-003719c330ab)

O objetivo deste projeto foi implementar em um Raspberry pi 1 um sistema para leitura e armazenamento dos dados de sensores de gps e aceleração. Em seguida, com os dados em mãos, seriam separados os dados volta a volta do treino e da corrida para fazer a análise de como melhorar o rendimento do piloto. 


![IMG_20220603_085907](https://github.com/mario-akira/GPSDataTracker-AcceleroDatameter/assets/152718950/1776d57b-dc4d-4366-9cea-0949be7e9f77)

Utilizando um raspberry pi 1, foi feita a leitura e o armazenamento dos dados de um sensor gps NEO6M e de um acelerometro MPU6050.

![0](https://github.com/mario-akira/GPSDataTracker-AcceleroDatameter/assets/152718950/64c1b19f-a452-4837-b189-f480e3be0786)

Como sou estudante e estava utilizando bastante o software Matlab nos estudos da universidade, optei por utilizá-lo como ferramenta para tratar os dados. Inicialmente criei camadas de velocidade para classificar elas e diferenciá-las nos plots, podendo ter uma ideia visual da velocidade na pista.


![1](https://github.com/mario-akira/GPSDataTracker-AcceleroDatameter/assets/152718950/f14869c1-ef9e-4f2e-8477-ed9d00024d1e)

Em seguida, fiz a separação de volta a volta para verificar o rendimento separadamente.

![11](https://github.com/mario-akira/GPSDataTracker-AcceleroDatameter/assets/152718950/ebcf02ef-eaea-43a4-a0c0-c7a95494019e)

Após separar as voltas, percebi que por ter utilizado um sensor de gps com frequência de atualização de 1 Hz, não seria possível ter muita precisão dos dados obtidos, alguns poderiam estar muito espaçados ou muito próximos um dos outros variando de acordo com velocidade daqueles instantes. Sendo assim, fiz uma interpolação simples para garantir que todas as voltas teriam o mesmo número de dados disponíveis para análise, adicionando novos pontos de acordo com os mais distantes entre sí. 

Outro problema foi que o acelerometro não possuia um range de aferimento alto, limitando as medidas as acelarações inferiores a 2G laterais, logo não utilizei seus dados para as análise, o que possibilitaria uma melhor compreenção dos ponots de frenagem.

![Perfeita_1](https://github.com/mario-akira/GPSDataTracker-AcceleroDatameter/assets/152718950/3a8b86d5-0aff-47a3-b16f-c44b02fb4713)

Por fim, foi possível comparar os dados de posição da pista e velocidade entre todas as voltar para demonstrar o melhor rendimento possível do piloto na corrida.

Os dados foram obtidos durante uma seção de treino e corrida no Kartódromo ECPA de Piracicaba em 2022 durante um momento de confraternização entre amigos e familiares. Todos os códigos de programação foram feitos em Python e a análise dos dados obtidos foi feita no Matlab.
