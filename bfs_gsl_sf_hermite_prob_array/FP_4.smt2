(declare-fun a_ack!34 () (_ BitVec 32))
(declare-fun b_ack!33 () (_ BitVec 64))
(assert (not (bvslt a_ack!34 #x00000000)))
(assert (not (= #x00000000 a_ack!34)))
(assert (not (= #x00000001 a_ack!34)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!33)) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
