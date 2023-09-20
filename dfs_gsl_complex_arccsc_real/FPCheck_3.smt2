(declare-fun x_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!5) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!5) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!5) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW #xbff0000000000000 x_ack!5))

(check-sat)
(exit)
