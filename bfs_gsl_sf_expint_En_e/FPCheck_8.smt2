(declare-fun a_ack!27 () (_ BitVec 32))
(declare-fun b_ack!26 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!27 #x00000000)))
(assert (= #x00000000 a_ack!27))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!26) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW #x8000000000000000 b_ack!26))

(check-sat)
(exit)
