(declare-fun a_ack!14 () (_ BitVec 64))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!14))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!14)) ((_ to_fp 11 53) #x0020000000000000)))

(check-sat)
(exit)
