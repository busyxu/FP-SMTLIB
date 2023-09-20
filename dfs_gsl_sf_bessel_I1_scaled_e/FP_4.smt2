(declare-fun a_ack!23 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!23) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!23))
            ((_ to_fp 11 53) #x0028000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!23)) ((_ to_fp 11 53) #x3fd0000000000000)))

(check-sat)
(exit)
