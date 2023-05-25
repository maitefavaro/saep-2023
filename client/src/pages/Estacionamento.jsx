import React, { Component, useEffect, useState } from 'react';
import '../assets/css/estacionamento.css'
import axios from 'axios';

const Estacionamento = () => {
    const [item6, setItem6] = useState([0, 1, 2,])
    const [alocados, setAlocados] = useState([]);
    const [veiculos, setVeiculos] = useState([]);
    const [veiculo, setVeiculo] = useState();
    const [modalArea, setModalArea] = useState(false);
    const [modalVenda, setModalVenda] = useState(false);
    const [idAreaSelecionada, setArea] = useState();
    const [clientes, setClientes] = useState([]);
    const [concessionarias, setCSS] = useState([]);
    const [veiculoId, setVeiculoId] = useState([])
    const [client, setClient] = useState("")
    const [cssEsc, setCssEsc] = useState("")


    useEffect(() => {
        carregarAlocacao();
        carregarClientes();
    }, [])

    const carregarAlocacao = () => {
        axios.get("https://5000-iguoliveira-saep2023-uohyutxa50m.ws-us98.gitpod.io/alocacao").then((response) => {
            // console.log(response)
            setAlocados(response.data)
        })
    }
    const carregarClientes = () => {
        axios.get("https://5000-iguoliveira-saep2023-uohyutxa50m.ws-us98.gitpod.io/clientes").then((response) => {
            // console.log(response)
            setClientes(response.data)
        })
    }

    const pesquisar = (id) => {
        if (alocados.length > 0) {
            return alocados.find(x => x.area === id)?.qtd
        }
        else {
            return null
        }
    }

    const selecionarCliente = (value) => {
        setClient(value)
    }

    const selecionarCSS = (value) => {
        setCssEsc(value)
    }

    const exibirModal = (id) => {
        // console.log('exibir modal')
        // console.log(modalArea)
        setModalArea(!modalArea)
        setArea(id)
        axios.get("https://5000-iguoliveira-saep2023-uohyutxa50m.ws-us98.gitpod.io/alocacao/" + id).then((response) => {
            setVeiculos(response.data)
        })
    }

    const vender = (id, veiculo) => {
        setModalArea(false)
        setModalVenda(true)
        setVeiculo(veiculo)
        setVeiculoId(id)
        axios.get("https://5000-iguoliveira-saep2023-uohyutxa50m.ws-us98.gitpod.io/concessionaria/" + id).then((response) => {
            // console.log(`CSS: ${JSON.stringify(response)}`)
            setCSS(response.data)
        })
    }

    const venderAutomovel = (id) => {
        setModalVenda(false)
        axios.post("https://5000-iguoliveira-saep2023-uohyutxa50m.ws-us98.gitpod.io/automovel/" + id).then((response) => {
            console.log(response)
        })
    }

    return (
        <>

            <div className={modalArea ? 'modal-area block' : 'modal-area hidden'} >
                <div className='modal text-black2'>
                    <button onClick={() => setModalArea(false)}>Fechar</button>
                    Área {idAreaSelecionada}
                    {veiculos.length > 0 ? (
                        veiculos.map((item) => (
                            item.quantidade > 0 &&
                            < div >
                                Modelo: {item.modelo} | Preço {item.preço}
                                <button type='button' onClick={() => vender(item.id, item.modelo)}>
                                    Vender
                                </button>
                            </div>
                        ))
                    ) : null}
                </div>
            </div >
            <div className={modalVenda ? 'modal-area block' : 'modal-area hidden'} >
                <div className='modal column'>
                    <button onClick={() => setModalVenda(false)}>Fechar</button>
                    <span className='text-black2'>{veiculo}</span>
                    <div>
                        <select onChange={(e) => selecionarCliente(e.target.value)}>
                            <option value=""> -- Selecionar Cliente -- </option>
                            {clientes.map((item) => (
                                <option value={item.id}>{item.Nome}</option>
                            ))}
                        </select>

                        <select onChange={(e) => selecionarCSS(e.target.value)}>
                            <option value=""> -- Selecionar Concessionária -- </option>
                            {concessionarias.map((item) => (
                                <option value={item.id}>{item.nome}</option>
                            ))}
                        </select>

                        <button onClick={() => venderAutomovel(veiculoId)} disabled={client == "" || cssEsc == ""}>Confirmar</button>
                    </div>
                </div>
            </div>


            <div className='bloco-8-9-11'>
                <div className='bloco-11'>
                    <div className={'galpao es-8 ' + (pesquisar(8) > 0 ? 'active' : null)} onClick={() => exibirModal(11)}>
                        11
                    </div>
                </div>
                <div className='bloco-89'>
                    <div className={'galpao es-8 ' + (pesquisar(8) > 0 ? 'active' : null)} onClick={() => exibirModal(8)}>
                        8
                    </div>
                    <div className={'galpao es-9 ' + (pesquisar(9) > 0 ? 'active' : null)} onClick={() => exibirModal(9)}>
                        9
                    </div>
                </div>
            </div><div className='base'>
                <div className={'galpao es-7 ' + (pesquisar(7) > 0 ? 'active' : null)} onClick={() => exibirModal(7)}>
                    7
                </div>
                <div className={'galpao es-4 ' + (pesquisar(4) > 0 ? 'active' : null)} onClick={() => exibirModal(4)}>
                    4
                </div>
                <div className={'galpao es-1 ' + (pesquisar(1) > 0 ? 'active' : null)}
                    onClick={() => exibirModal(1)}>
                    1
                </div>
                <div className={'galpao es-3 ' + (pesquisar(3) > 0 ? 'active' : null)} onClick={() => exibirModal(3)}>
                    3
                </div>
                <div className={'galpao es-2 ' + (pesquisar(2) > 0 ? 'active' : null)} onClick={() => exibirModal(2)}>
                    2

                </div>
                <div className={'galpao es-5 ' + (pesquisar(5) > 0 ? 'active' : null)} onClick={() => exibirModal(5)}>
                    5
                </div>
            </div>
            <div className='direita'>
                <div className={'galpao es-6 ' + (pesquisar(6) > 0 ? 'active' : null)} onClick={() => exibirModal(6)}>
                    6
                </div>
                <div className={'galpao es-10 ' + (pesquisar(10) > 0 ? 'active' : null)} onClick={() => exibirModal(10)}>
                    10
                </div>
            </div>

        </>
    );
}

export default Estacionamento;