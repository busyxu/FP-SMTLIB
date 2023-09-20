(declare-fun c_ack!26 () (_ BitVec 64))
(declare-fun b_ack!25 () (_ BitVec 32))
(declare-fun a_ack!27 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!26) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= a_ack!27 b_ack!25)))
(assert (not (= #x00000000 b_ack!25)))

(check-sat)
(exit)
