(declare-fun x1_ack!151 () (_ BitVec 64))
(declare-fun y1_ack!150 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!151) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!151))
             (fp.abs ((_ to_fp 11 53) y1_ack!150)))))

(check-sat)
(exit)
