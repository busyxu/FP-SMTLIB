(declare-fun a_ack!58 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!58) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!58))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!58))
            ((_ to_fp 11 53) #x3fd0000000000000))))

(check-sat)
(exit)
