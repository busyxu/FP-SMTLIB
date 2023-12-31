(declare-fun x1_ack!507 () (_ BitVec 64))
(declare-fun x0_ack!511 () (_ BitVec 64))
(declare-fun y0_ack!508 () (_ BitVec 64))
(declare-fun x_ack!509 () (_ BitVec 64))
(declare-fun y_ack!510 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!511) ((_ to_fp 11 53) x1_ack!507))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!508) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!509) ((_ to_fp 11 53) x0_ack!511))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!509) ((_ to_fp 11 53) x1_ack!507))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!510) ((_ to_fp 11 53) y0_ack!508))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!510) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!509) ((_ to_fp 11 53) x0_ack!511))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!509) ((_ to_fp 11 53) x1_ack!507)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!510) ((_ to_fp 11 53) y0_ack!508))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!510) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 y0_ack!508))

(check-sat)
(exit)
