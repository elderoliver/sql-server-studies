update h set h.tipCodigo = coalesce(p.tipCodigo, h.tipCodigo)
	FROM tblHoteis h
	join tblHoteis_Propostas_Acordo p on h.hotCodigo = p.hotCodigo and p.acoCodigo = @in_acoCodigo
	where p.hotCodigo = @in_hotCodigo;
