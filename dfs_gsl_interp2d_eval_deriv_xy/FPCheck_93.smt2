(declare-fun x1_ack!1104 () (_ BitVec 64))
(declare-fun x0_ack!1108 () (_ BitVec 64))
(declare-fun y0_ack!1105 () (_ BitVec 64))
(declare-fun x_ack!1106 () (_ BitVec 64))
(declare-fun y_ack!1107 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1108) ((_ to_fp 11 53) x1_ack!1104))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1105) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1106) ((_ to_fp 11 53) x0_ack!1108))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1106) ((_ to_fp 11 53) x1_ack!1104))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1107) ((_ to_fp 11 53) y0_ack!1105))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1107) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1106) ((_ to_fp 11 53) x0_ack!1108))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1106) ((_ to_fp 11 53) x1_ack!1104)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1107) ((_ to_fp 11 53) y0_ack!1105))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1107) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1104)
          ((_ to_fp 11 53) x0_ack!1108))))

(check-sat)
(exit)
