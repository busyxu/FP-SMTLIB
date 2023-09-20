(declare-fun a_ack!16 () (_ BitVec 64))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!16))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!16))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!16)) ((_ to_fp 11 53) #x3e66a09e667f3bcd)))

(check-sat)
(exit)
