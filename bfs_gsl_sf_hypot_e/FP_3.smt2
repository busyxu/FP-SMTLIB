(declare-fun a_ack!58 () (_ BitVec 64))
(declare-fun b_ack!57 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!58) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!58))
            (fp.abs ((_ to_fp 11 53) b_ack!57)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!58)) (fp.abs ((_ to_fp 11 53) b_ack!57))))

(check-sat)
(exit)
