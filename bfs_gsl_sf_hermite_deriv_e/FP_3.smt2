(declare-fun b_ack!73 () (_ BitVec 32))
(declare-fun a_ack!74 () (_ BitVec 32))
(assert (not (bvslt b_ack!73 #x00000000)))
(assert (not (bvslt a_ack!74 #x00000000)))
(assert (not (bvslt b_ack!73 a_ack!74)))
(assert (bvult b_ack!73 a_ack!74))

(check-sat)
(exit)
