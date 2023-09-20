(declare-fun b_ack!71 () (_ BitVec 64))
(declare-fun a_ack!72 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) b_ack!71) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!72) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FINVALID_LOG a_ack!72 a_ack!72))

(check-sat)
(exit)
