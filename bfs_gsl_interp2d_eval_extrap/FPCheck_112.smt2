(declare-fun x1_ack!1177 () (_ BitVec 64))
(declare-fun x0_ack!1181 () (_ BitVec 64))
(declare-fun y0_ack!1178 () (_ BitVec 64))
(declare-fun x_ack!1179 () (_ BitVec 64))
(declare-fun y_ack!1180 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1181) ((_ to_fp 11 53) x1_ack!1177))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1178) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1179) ((_ to_fp 11 53) x0_ack!1181))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1179) ((_ to_fp 11 53) x1_ack!1177))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1180) ((_ to_fp 11 53) y0_ack!1178)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1177)
                       ((_ to_fp 11 53) x0_ack!1181))
               ((_ to_fp 11 53) x0_ack!1181))
       ((_ to_fp 11 53) x1_ack!1177)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1177)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1177)
                       ((_ to_fp 11 53) x0_ack!1181)))
       ((_ to_fp 11 53) x0_ack!1181)))
(assert (FPCHECK_FSUB_UNDERFLOW #x3ff0000000000000 y0_ack!1178))

(check-sat)
(exit)
