(declare-fun a_ack!979 () (_ BitVec 32))
(declare-fun b_ack!977 () (_ BitVec 32))
(declare-fun c_ack!978 () (_ BitVec 64))
(assert (not (bvslt a_ack!979 #x00000000)))
(assert (not (bvslt b_ack!977 a_ack!979)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!978) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!979 #x00000000)))
(assert (= #x00000000 a_ack!979))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!978) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!978) ((_ to_fp 11 53) #x4010000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!978))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!978))
             ((_ to_fp 11 53) #x4010000000000000))))

(check-sat)
(exit)
