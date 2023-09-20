(declare-fun x1_ack!1210 () (_ BitVec 64))
(declare-fun x0_ack!1215 () (_ BitVec 64))
(declare-fun x2_ack!1211 () (_ BitVec 64))
(declare-fun xx_ack!1214 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1212 () (_ BitVec 64))
(declare-fun y1_ack!1213 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1215) ((_ to_fp 11 53) x1_ack!1210)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1210) ((_ to_fp 11 53) x2_ack!1211)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1210)
                       ((_ to_fp 11 53) x0_ack!1215))
               ((_ to_fp 11 53) x0_ack!1215))
       ((_ to_fp 11 53) x1_ack!1210)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1210)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1210)
                       ((_ to_fp 11 53) x0_ack!1215)))
       ((_ to_fp 11 53) x0_ack!1215)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1211)
                       ((_ to_fp 11 53) x1_ack!1210))
               ((_ to_fp 11 53) x1_ack!1210))
       ((_ to_fp 11 53) x2_ack!1211)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1211)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1211)
                       ((_ to_fp 11 53) x1_ack!1210)))
       ((_ to_fp 11 53) x1_ack!1210)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1210)
                    ((_ to_fp 11 53) x0_ack!1215))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1211)
                    ((_ to_fp 11 53) x1_ack!1210))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1214) ((_ to_fp 11 53) x0_ack!1215))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1214) ((_ to_fp 11 53) x2_ack!1211))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1214) ((_ to_fp 11 53) x0_ack!1215))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1214) ((_ to_fp 11 53) x1_ack!1210))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1210)
               ((_ to_fp 11 53) x0_ack!1215))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!1213)
          ((_ to_fp 11 53) y0_ack!1212))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1210)
          ((_ to_fp 11 53) x0_ack!1215))))

(check-sat)
(exit)
