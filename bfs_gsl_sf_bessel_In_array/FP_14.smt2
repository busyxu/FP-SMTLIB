(declare-fun c_ack!72 () (_ BitVec 64))
(declare-fun a_ack!73 () (_ BitVec 32))
(declare-fun b_ack!71 () (_ BitVec 32))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!72))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!71 a_ack!73)))
(assert (not (bvslt a_ack!73 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!72) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!71)))

(check-sat)
(exit)
