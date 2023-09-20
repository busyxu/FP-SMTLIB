(declare-fun x_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.leq ((_ to_fp 11 53) x_ack!20) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW #x3ff0000000000000 x_ack!20))

(check-sat)
(exit)
