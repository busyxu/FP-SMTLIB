(declare-fun x1_ack!74 () (_ BitVec 64))
(declare-fun y1_ack!73 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!74) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!73) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!74))
        (fp.abs ((_ to_fp 11 53) y1_ack!73))))

(check-sat)
(exit)
