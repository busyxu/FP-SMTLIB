(declare-fun a_ack!34 () (_ BitVec 32))
(declare-fun c_ack!33 () (_ BitVec 64))
(assert (not (bvslt a_ack!34 #x00000000)))
(assert (not (= #x00000000 a_ack!34)))
(assert (not (= #x00000001 a_ack!34)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!33) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
