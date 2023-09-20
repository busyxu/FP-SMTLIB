(declare-fun a_ack!2 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2) ((_ to_fp 11 53) #xc000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW #x4000000000000000 a_ack!2))

(check-sat)
(exit)
