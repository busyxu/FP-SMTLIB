(declare-fun nu2_ack!8 () (_ BitVec 64))
(declare-fun x_ack!9 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!9) ((_ to_fp 11 53) nu2_ack!8))))
(assert (FPCHECK_FDIV_ACCURACY nu2_ack!8 x_ack!9))

(check-sat)
(exit)
