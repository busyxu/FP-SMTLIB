(declare-fun b_ack!1011 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) b_ack!1011) ((_ to_fp 11 53) #x404e000000000000)))
(assert (FPCHECK_FADD_OVERFLOW #xbfe62e42fefa39ef b_ack!1011))

(check-sat)
(exit)
