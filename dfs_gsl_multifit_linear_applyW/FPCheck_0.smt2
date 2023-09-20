(declare-fun w0_ack!0 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) w0_ack!0) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FINVALID_SQRT w0_ack!0 w0_ack!0))

(check-sat)
(exit)
