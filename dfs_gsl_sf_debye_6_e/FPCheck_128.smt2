(declare-fun a_ack!225 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!225) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!225) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!225) ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW a_ack!225 a_ack!225))

(check-sat)
(exit)
