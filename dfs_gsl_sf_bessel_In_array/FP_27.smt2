(declare-fun c_ack!691 () (_ BitVec 64))
(declare-fun a_ack!692 () (_ BitVec 32))
(declare-fun b_ack!690 () (_ BitVec 32))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!691))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!690 a_ack!692)))
(assert (not (bvslt a_ack!692 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!691) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!690))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!691))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (bvsle #x00000000 (bvsub b_ack!690 a_ack!692)))

(check-sat)
(exit)
