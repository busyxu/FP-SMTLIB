(declare-fun x1_ack!83 () (_ BitVec 64))
(declare-fun x0_ack!87 () (_ BitVec 64))
(declare-fun y0_ack!84 () (_ BitVec 64))
(declare-fun x_ack!85 () (_ BitVec 64))
(declare-fun y_ack!86 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!87) ((_ to_fp 11 53) x1_ack!83))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!84) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!85) ((_ to_fp 11 53) x0_ack!87))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!85) ((_ to_fp 11 53) x1_ack!83)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!86) ((_ to_fp 11 53) y0_ack!84))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!86) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FSUB_ACCURACY x1_ack!83 x0_ack!87))

(check-sat)
(exit)
