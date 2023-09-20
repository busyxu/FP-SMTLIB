(declare-fun x_ack!9 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!9) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW #x3ff0000000000000 x_ack!9))

(check-sat)
(exit)
