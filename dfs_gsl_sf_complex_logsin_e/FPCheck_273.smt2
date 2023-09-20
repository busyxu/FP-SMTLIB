(declare-fun b_ack!1007 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1007) ((_ to_fp 11 53) #x404e000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1007) ((_ to_fp 11 53) #xc04e000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW #xbfe62e42fefa39ef b_ack!1007))

(check-sat)
(exit)
