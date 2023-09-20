(declare-fun a_ack!296 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!296) ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!296) ((_ to_fp 11 53) #x402e000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW #x402e000000000000 a_ack!296))

(check-sat)
(exit)
