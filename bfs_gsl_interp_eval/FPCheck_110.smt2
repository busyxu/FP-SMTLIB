(declare-fun x1_ack!1176 () (_ BitVec 64))
(declare-fun x0_ack!1181 () (_ BitVec 64))
(declare-fun x2_ack!1177 () (_ BitVec 64))
(declare-fun xx_ack!1180 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1178 () (_ BitVec 64))
(declare-fun y2_ack!1179 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1181) ((_ to_fp 11 53) x1_ack!1176)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1176) ((_ to_fp 11 53) x2_ack!1177)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1176)
                       ((_ to_fp 11 53) x0_ack!1181))
               ((_ to_fp 11 53) x0_ack!1181))
       ((_ to_fp 11 53) x1_ack!1176)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1176)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1176)
                       ((_ to_fp 11 53) x0_ack!1181)))
       ((_ to_fp 11 53) x0_ack!1181)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1177)
                       ((_ to_fp 11 53) x1_ack!1176))
               ((_ to_fp 11 53) x1_ack!1176))
       ((_ to_fp 11 53) x2_ack!1177)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1177)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1177)
                       ((_ to_fp 11 53) x1_ack!1176)))
       ((_ to_fp 11 53) x1_ack!1176)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1176)
                    ((_ to_fp 11 53) x0_ack!1181))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1177)
                    ((_ to_fp 11 53) x1_ack!1176))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1180) ((_ to_fp 11 53) x0_ack!1181))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1180) ((_ to_fp 11 53) x2_ack!1177))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1180) ((_ to_fp 11 53) x0_ack!1181))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1180) ((_ to_fp 11 53) x1_ack!1176)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1176) ((_ to_fp 11 53) xx_ack!1180))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1177)
               ((_ to_fp 11 53) x1_ack!1176))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1179)
          ((_ to_fp 11 53) y1_ack!1178))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1177)
          ((_ to_fp 11 53) x1_ack!1176))))

(check-sat)
(exit)
