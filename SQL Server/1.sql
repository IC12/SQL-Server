 SELECT gta.id_auto, 
	                                            gta.id_user, 
	                                            gta.id_pk,
	                                            gta.date_time, 
	                                            gta.sync_flag,
	                                            gta.sync_action, 
	                                            gta.sync_status, 
	                                            CONVERT(DATE,gta.data_emissao) as data_emissao, 
	                                            gta.serie,
	                                            --gta.num_gta, 

                                                CASE WHEN gta.s_num_gta IS NULL
                                                    THEN CONVERT(NVARCHAR, gta.num_gta)
                                                    ELSE gta.s_num_gta
                                                END AS num_gta,

	                                            gta.macho_ate_12_meses, 
	                                            gta.femea_ate_12_meses, 
	                                            gta.macho_13_24_meses, 
	                                            gta.femea_13_24_meses, 
	                                            gta.macho_25_36_meses, 
	                                            gta.femea_25_36_meses, 
	                                            gta.macho_acima_36_meses, 
	                                            gta.femea_acima_36_meses, 
	                                            gta.total_animais_femeas, 
	                                            gta.total_animais_machos, 
	                                            gta.total_animais, 
	                                            gta.carimbo, 
	                                            CASE WHEN gta.data_carimbo IS NULL
			                                            THEN '-'
		                                             WHEN gta.data_carimbo < '2000-01-01'
			                                            THEN '-'
		                                             ELSE
			                                            CONVERT(NVARCHAR,CONVERT(DATE,gta.data_carimbo),103)
	                                            END as data_carimbo, 
	                                            gta.data_lancamento,
	                                            gta.id_fk_fornecedor,
	                                            gta.macho_ate_12_meses_alocado, 
	                                            gta.femea_ate_12_meses_alocado, 
	                                            gta.macho_13_24_meses_alocado, 
	                                            gta.femea_13_24_meses_alocado, 
	                                            gta.macho_acima_36_meses_alocado, 
	                                            gta.femea_acima_36_meses_alocado, 
	                                            gta.macho_25_36_meses_alocado, 
	                                            gta.femea_25_36_meses_alocado,
	                                            gta.id_fk_gi_uf,
	                                            gta.version,
	                                            gta.id_fk_gi_tipo_procedencia, 
	                                            gta.cod_estabelecimento_procedencia, 
	                                            gta.cod_estabelecimento_destino, 
	                                            gta.id_fk_destino, giuf.descricao AS __uf,       
                                                 CASE WHEN f_origem.nome is null
                                                    THEN forn.nome
                                                    ELSE f_origem.nome
                                                 END AS origem,
                                                 f_destino.nome AS destino
                                              FROM GTA_Entrada gta INNER JOIN                                                   
                                                   localidadehierarquia AS l ON l.id_pk = gta.id_fk_fazenda_hierarquia LEFT JOIN  
                                                   geral_item giuf ON gta.id_fk_gi_uf = giuf.id_pk LEFT JOIN
                                                   Fazenda f_origem on f_origem.id_pk = gta.id_fk_fornecedor AND f_origem.sync_status = 1 LEFT JOIN
                                                   Fazenda f_destino on f_destino.id_pk = gta.id_fk_destino AND f_destino.sync_status = 1 LEFT JOIN
                                                   Fornecedor forn ON forn.id_pk = gta.id_fk_fornecedor AND forn.sync_status = 1
                                              WHERE  
                                                   gta.sync_status = 1
                                              AND  (giuf.sync_status = 1 OR giuf.sync_status is null)
                                                   AND (l.sync_status = 1) AND (l.h1 >= 2) AND (l.h2 <= 585)
                                                    and gta.data_emissao >=  '2021-09-01'  and gta.data_emissao < '2021-10-09' 