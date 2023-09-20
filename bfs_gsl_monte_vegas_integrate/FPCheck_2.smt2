(declare-fun l0_ack!11 () (_ BitVec 64))
(declare-fun u0_ack!10 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) u0_ack!10) ((_ to_fp 11 53) l0_ack!11))))
(assert (FPCHECK_FSUB_ACCURACY u0_ack!10 l0_ack!11))

(check-sat)
(exit)
