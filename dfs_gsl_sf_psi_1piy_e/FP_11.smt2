(declare-fun a_ack!123 () (_ BitVec 64))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!123))
            ((_ to_fp 11 53) #x408f400000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!123))
       ((_ to_fp 11 53) #x4024000000000000)))

(check-sat)
(exit)
