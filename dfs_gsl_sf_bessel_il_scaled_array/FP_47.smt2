(declare-fun b_ack!625 () (_ BitVec 64))
(declare-fun a_ack!626 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!625) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!625) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!626) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!625) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!626)))
(assert (= #x00000000 a_ack!626))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!625) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!625))
            ((_ to_fp 11 53) #x0028000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!625))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!625) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
