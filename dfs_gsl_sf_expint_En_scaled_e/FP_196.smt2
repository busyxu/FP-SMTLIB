(declare-fun a_ack!3657 () (_ BitVec 32))
(assert (bvslt a_ack!3657 #x00000000))

(check-sat)
(exit)
