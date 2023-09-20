(declare-fun b_ack!27 () (_ BitVec 32))
(declare-fun a_ack!28 () (_ BitVec 32))
(assert (not (bvslt b_ack!27 #x00000000)))
(assert (not (bvslt a_ack!28 #x00000000)))
(assert (not (= #x00000000 a_ack!28)))
(assert (not (bvslt b_ack!27 a_ack!28)))

(check-sat)
(exit)
