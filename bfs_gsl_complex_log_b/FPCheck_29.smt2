(declare-fun y1_ack!144 () (_ BitVec 64))
(declare-fun x1_ack!147 () (_ BitVec 64))
(declare-fun y2_ack!146 () (_ BitVec 64))
(declare-fun x2_ack!145 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!147))
             (fp.abs ((_ to_fp 11 53) y1_ack!144)))))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!147) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!144) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!145))
        (fp.abs ((_ to_fp 11 53) y2_ack!146))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) y2_ack!146))
  (fp.abs ((_ to_fp 11 53) x2_ack!145))))

(check-sat)
(exit)
