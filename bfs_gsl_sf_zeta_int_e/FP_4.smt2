(declare-fun a_ack!10 () (_ BitVec 32))
(assert (not (bvslt a_ack!10 #x00000000)))
(assert (not (= #x00000001 a_ack!10)))
(assert (bvsle a_ack!10 #x00000064))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!10))
       #x0000000000000321))

(check-sat)
(exit)
