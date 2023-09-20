(declare-fun b_ack!8 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!9 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!8) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!8 a_ack!9))

(check-sat)
(exit)
