(declare-fun x1_ack!1143 () (_ BitVec 64))
(declare-fun x0_ack!1148 () (_ BitVec 64))
(declare-fun x2_ack!1144 () (_ BitVec 64))
(declare-fun xx_ack!1147 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1145 () (_ BitVec 64))
(declare-fun y2_ack!1146 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1148) ((_ to_fp 11 53) x1_ack!1143)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1143) ((_ to_fp 11 53) x2_ack!1144)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1143)
                       ((_ to_fp 11 53) x0_ack!1148))
               ((_ to_fp 11 53) x0_ack!1148))
       ((_ to_fp 11 53) x1_ack!1143)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1143)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1143)
                       ((_ to_fp 11 53) x0_ack!1148)))
       ((_ to_fp 11 53) x0_ack!1148)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1144)
                       ((_ to_fp 11 53) x1_ack!1143))
               ((_ to_fp 11 53) x1_ack!1143))
       ((_ to_fp 11 53) x2_ack!1144)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1144)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1144)
                       ((_ to_fp 11 53) x1_ack!1143)))
       ((_ to_fp 11 53) x1_ack!1143)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1143)
                    ((_ to_fp 11 53) x0_ack!1148))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1144)
                    ((_ to_fp 11 53) x1_ack!1143))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1147) ((_ to_fp 11 53) x0_ack!1148))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1147) ((_ to_fp 11 53) x2_ack!1144))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1147) ((_ to_fp 11 53) x0_ack!1148))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1147) ((_ to_fp 11 53) x1_ack!1143)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1143) ((_ to_fp 11 53) xx_ack!1147))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1144)
               ((_ to_fp 11 53) x1_ack!1143))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1146)
          ((_ to_fp 11 53) y1_ack!1145))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1144)
          ((_ to_fp 11 53) x1_ack!1143))))

(check-sat)
(exit)
