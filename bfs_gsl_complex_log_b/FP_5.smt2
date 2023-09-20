(declare-fun y1_ack!126 () (_ BitVec 64))
(declare-fun x1_ack!127 () (_ BitVec 64))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!127))
             (fp.abs ((_ to_fp 11 53) y1_ack!126)))))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!127) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
