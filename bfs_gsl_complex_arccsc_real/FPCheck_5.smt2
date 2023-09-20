(declare-fun x_ack!7 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.leq ((_ to_fp 11 53) x_ack!7) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (FPCHECK_FDIV_ACCURACY #x3ff0000000000000 x_ack!7))

(check-sat)
(exit)
