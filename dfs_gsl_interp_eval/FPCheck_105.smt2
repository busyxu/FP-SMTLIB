(declare-fun x1_ack!1160 () (_ BitVec 64))
(declare-fun x0_ack!1165 () (_ BitVec 64))
(declare-fun x2_ack!1161 () (_ BitVec 64))
(declare-fun xx_ack!1164 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!1162 () (_ BitVec 64))
(declare-fun y1_ack!1163 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1165) ((_ to_fp 11 53) x1_ack!1160)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1160) ((_ to_fp 11 53) x2_ack!1161)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1160)
                       ((_ to_fp 11 53) x0_ack!1165))
               ((_ to_fp 11 53) x0_ack!1165))
       ((_ to_fp 11 53) x1_ack!1160)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1160)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1160)
                       ((_ to_fp 11 53) x0_ack!1165)))
       ((_ to_fp 11 53) x0_ack!1165)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1161)
                       ((_ to_fp 11 53) x1_ack!1160))
               ((_ to_fp 11 53) x1_ack!1160))
       ((_ to_fp 11 53) x2_ack!1161)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1161)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1161)
                       ((_ to_fp 11 53) x1_ack!1160)))
       ((_ to_fp 11 53) x1_ack!1160)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1160)
                    ((_ to_fp 11 53) x0_ack!1165))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1161)
                    ((_ to_fp 11 53) x1_ack!1160))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1164) ((_ to_fp 11 53) x0_ack!1165))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1164) ((_ to_fp 11 53) x2_ack!1161))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1164) ((_ to_fp 11 53) x0_ack!1165))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1164) ((_ to_fp 11 53) x1_ack!1160))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1160)
               ((_ to_fp 11 53) x0_ack!1165))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW y1_ack!1163 y0_ack!1162))

(check-sat)
(exit)
