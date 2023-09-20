(declare-fun x1_ack!1114 () (_ BitVec 64))
(declare-fun x0_ack!1118 () (_ BitVec 64))
(declare-fun y0_ack!1115 () (_ BitVec 64))
(declare-fun x_ack!1116 () (_ BitVec 64))
(declare-fun y_ack!1117 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1118) ((_ to_fp 11 53) x1_ack!1114))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1115) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1116) ((_ to_fp 11 53) x0_ack!1118))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1116) ((_ to_fp 11 53) x1_ack!1114))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1117) ((_ to_fp 11 53) y0_ack!1115))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1117) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1116) ((_ to_fp 11 53) x0_ack!1118))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1116) ((_ to_fp 11 53) x1_ack!1114)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1117) ((_ to_fp 11 53) y0_ack!1115))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1117) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1114)
          ((_ to_fp 11 53) x0_ack!1118))))

(check-sat)
(exit)
