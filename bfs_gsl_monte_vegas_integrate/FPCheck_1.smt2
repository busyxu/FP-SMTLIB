(declare-fun l0_ack!7 () (_ BitVec 64))
(declare-fun u0_ack!6 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) u0_ack!6) ((_ to_fp 11 53) l0_ack!7))))
(assert (FPCHECK_FSUB_UNDERFLOW u0_ack!6 l0_ack!7))

(check-sat)
(exit)
