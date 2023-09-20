(declare-fun l0_ack!3 () (_ BitVec 64))
(declare-fun u0_ack!2 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) u0_ack!2) ((_ to_fp 11 53) l0_ack!3))))
(assert (FPCHECK_FSUB_OVERFLOW u0_ack!2 l0_ack!3))

(check-sat)
(exit)
