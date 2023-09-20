(declare-fun a_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #x3ee4519884312501))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #x4000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY a_ack!5 a_ack!5))

(check-sat)
(exit)
