(declare-fun a_ack!28 () (_ BitVec 32))
(declare-fun b_ack!27 () (_ BitVec 32))
(assert (bvslt a_ack!28 #x00000000))
(assert (not (bvsle a_ack!28 b_ack!27)))

(check-sat)
(exit)
