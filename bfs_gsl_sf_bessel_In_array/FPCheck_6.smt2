(declare-fun c_ack!33 () (_ BitVec 64))
(declare-fun a_ack!34 () (_ BitVec 32))
(declare-fun b_ack!32 () (_ BitVec 32))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!33))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!32 a_ack!34)))
(assert (not (bvslt a_ack!34 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!33) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!32)))
(assert (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!33)) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
