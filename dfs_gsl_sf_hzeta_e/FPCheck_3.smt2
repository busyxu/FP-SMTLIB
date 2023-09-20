(declare-fun a_ack!10 () (_ BitVec 64))
(declare-fun b_ack!9 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!10) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!9) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FINVALID_LOG b_ack!9 b_ack!9))

(check-sat)
(exit)
