(declare-fun x1_ack!1125 () (_ BitVec 64))
(declare-fun x0_ack!1130 () (_ BitVec 64))
(declare-fun x2_ack!1126 () (_ BitVec 64))
(declare-fun xx_ack!1129 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1127 () (_ BitVec 64))
(declare-fun y2_ack!1128 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1130) ((_ to_fp 11 53) x1_ack!1125)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1125) ((_ to_fp 11 53) x2_ack!1126)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1125)
                       ((_ to_fp 11 53) x0_ack!1130))
               ((_ to_fp 11 53) x0_ack!1130))
       ((_ to_fp 11 53) x1_ack!1125)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1125)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1125)
                       ((_ to_fp 11 53) x0_ack!1130)))
       ((_ to_fp 11 53) x0_ack!1130)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1126)
                       ((_ to_fp 11 53) x1_ack!1125))
               ((_ to_fp 11 53) x1_ack!1125))
       ((_ to_fp 11 53) x2_ack!1126)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1126)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1126)
                       ((_ to_fp 11 53) x1_ack!1125)))
       ((_ to_fp 11 53) x1_ack!1125)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1125)
                    ((_ to_fp 11 53) x0_ack!1130))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1126)
                    ((_ to_fp 11 53) x1_ack!1125))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1129) ((_ to_fp 11 53) x0_ack!1130))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1129) ((_ to_fp 11 53) x2_ack!1126))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1129) ((_ to_fp 11 53) x0_ack!1130))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1129) ((_ to_fp 11 53) x1_ack!1125)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1125) ((_ to_fp 11 53) xx_ack!1129))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1126)
               ((_ to_fp 11 53) x1_ack!1125))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1128)
          ((_ to_fp 11 53) y1_ack!1127))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1126)
          ((_ to_fp 11 53) x1_ack!1125))))

(check-sat)
(exit)
