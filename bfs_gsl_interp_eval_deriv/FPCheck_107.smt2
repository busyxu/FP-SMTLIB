(declare-fun x1_ack!1137 () (_ BitVec 64))
(declare-fun x0_ack!1142 () (_ BitVec 64))
(declare-fun x2_ack!1138 () (_ BitVec 64))
(declare-fun xx_ack!1141 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1139 () (_ BitVec 64))
(declare-fun y2_ack!1140 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1142) ((_ to_fp 11 53) x1_ack!1137)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1137) ((_ to_fp 11 53) x2_ack!1138)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1137)
                       ((_ to_fp 11 53) x0_ack!1142))
               ((_ to_fp 11 53) x0_ack!1142))
       ((_ to_fp 11 53) x1_ack!1137)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1137)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1137)
                       ((_ to_fp 11 53) x0_ack!1142)))
       ((_ to_fp 11 53) x0_ack!1142)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1138)
                       ((_ to_fp 11 53) x1_ack!1137))
               ((_ to_fp 11 53) x1_ack!1137))
       ((_ to_fp 11 53) x2_ack!1138)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1138)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1138)
                       ((_ to_fp 11 53) x1_ack!1137)))
       ((_ to_fp 11 53) x1_ack!1137)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1137)
                    ((_ to_fp 11 53) x0_ack!1142))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1138)
                    ((_ to_fp 11 53) x1_ack!1137))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1141) ((_ to_fp 11 53) x0_ack!1142))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1141) ((_ to_fp 11 53) x2_ack!1138))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1141) ((_ to_fp 11 53) x0_ack!1142))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1141) ((_ to_fp 11 53) x1_ack!1137)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1137) ((_ to_fp 11 53) xx_ack!1141))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1138)
               ((_ to_fp 11 53) x1_ack!1137))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1140)
          ((_ to_fp 11 53) y1_ack!1139))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1138)
          ((_ to_fp 11 53) x1_ack!1137))))

(check-sat)
(exit)
