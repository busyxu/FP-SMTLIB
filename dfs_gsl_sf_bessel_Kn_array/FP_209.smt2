(declare-fun a_ack!6039 () (_ BitVec 32))
(assert (bvslt a_ack!6039 #x00000000))

(check-sat)
(exit)
