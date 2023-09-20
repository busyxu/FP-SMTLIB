(declare-fun w0_ack!8 () (_ BitVec 64))
(declare-fun w1_ack!7 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) w0_ack!8) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) w1_ack!7) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FINVALID_SQRT w1_ack!7 w1_ack!7))

(check-sat)
(exit)
