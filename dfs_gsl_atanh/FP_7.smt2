(declare-fun a_ack!59 () (_ BitVec 64))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!59))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!59)) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
