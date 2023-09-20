(declare-fun w0_ack!280 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!280) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW #x0000000000000000 w0_ack!280))

(check-sat)
(exit)
