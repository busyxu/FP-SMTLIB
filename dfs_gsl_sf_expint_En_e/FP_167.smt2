(declare-fun a_ack!3063 () (_ BitVec 32))
(assert (bvslt a_ack!3063 #x00000000))

(check-sat)
(exit)
