(declare-fun a_ack!647 () (_ BitVec 32))
(declare-fun b_ack!645 () (_ BitVec 32))
(declare-fun c_ack!646 () (_ BitVec 64))
(assert (not (bvslt b_ack!645 a_ack!647)))
(assert (not (bvslt a_ack!647 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!646) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!645))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!646))
       ((_ to_fp 11 53) #x3e60000000000000)))

(check-sat)
(exit)
