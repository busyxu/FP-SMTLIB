(declare-fun a_ack!428 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!428) ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!428) ((_ to_fp 11 53) #x402e000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW #x8000000000000000 a_ack!428))

(check-sat)
(exit)
