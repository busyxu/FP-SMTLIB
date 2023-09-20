(declare-fun x_ack!0 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.geq ((_ to_fp 11 53) x_ack!0) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FINVALID_SQRT x_ack!0 x_ack!0))

(check-sat)
(exit)
