(declare-fun a_ack!3599 () (_ BitVec 32))
(declare-fun b_ack!3597 () (_ BitVec 32))
(declare-fun c_ack!3598 () (_ BitVec 64))
(assert (not (bvslt a_ack!3599 #x00000000)))
(assert (not (bvslt b_ack!3597 a_ack!3599)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3598) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!3597)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3598) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3598) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3598) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3598) ((_ to_fp 11 53) #x4020000000000000))))

(check-sat)
(exit)
