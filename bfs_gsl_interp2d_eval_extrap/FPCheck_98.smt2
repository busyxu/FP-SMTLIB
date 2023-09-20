(declare-fun x1_ack!1047 () (_ BitVec 64))
(declare-fun x0_ack!1051 () (_ BitVec 64))
(declare-fun y0_ack!1048 () (_ BitVec 64))
(declare-fun x_ack!1049 () (_ BitVec 64))
(declare-fun y_ack!1050 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1051) ((_ to_fp 11 53) x1_ack!1047))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1048) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1049) ((_ to_fp 11 53) x0_ack!1051))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1049) ((_ to_fp 11 53) x1_ack!1047)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1050) ((_ to_fp 11 53) y0_ack!1048))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1050) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1047)
                       ((_ to_fp 11 53) x0_ack!1051))
               ((_ to_fp 11 53) x0_ack!1051))
       ((_ to_fp 11 53) x1_ack!1047)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1047)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1047)
                       ((_ to_fp 11 53) x0_ack!1051)))
       ((_ to_fp 11 53) x0_ack!1051)))
(assert (FPCHECK_FSUB_UNDERFLOW #x3ff0000000000000 y0_ack!1048))

(check-sat)
(exit)
