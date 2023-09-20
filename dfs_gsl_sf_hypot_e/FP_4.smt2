(declare-fun a_ack!73 () (_ BitVec 64))
(declare-fun b_ack!72 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!73) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!72) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!73)) (fp.abs ((_ to_fp 11 53) b_ack!72))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!73)) (fp.abs ((_ to_fp 11 53) b_ack!72))))

(check-sat)
(exit)
