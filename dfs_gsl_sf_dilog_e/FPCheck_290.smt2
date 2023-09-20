(declare-fun a_ack!493 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.geq ((_ to_fp 11 53) a_ack!493) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!493) ((_ to_fp 11 53) #x4000000000000000)))
(assert (FPCHECK_FDIV_ACCURACY #x3ff0000000000000 a_ack!493))

(check-sat)
(exit)
