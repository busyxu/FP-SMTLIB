(declare-fun x1_ack!1199 () (_ BitVec 64))
(declare-fun x0_ack!1205 () (_ BitVec 64))
(declare-fun x2_ack!1200 () (_ BitVec 64))
(declare-fun xx_ack!1204 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1201 () (_ BitVec 64))
(declare-fun y1_ack!1202 () (_ BitVec 64))
(declare-fun y2_ack!1203 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1205) ((_ to_fp 11 53) x1_ack!1199)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1199) ((_ to_fp 11 53) x2_ack!1200)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1199)
                       ((_ to_fp 11 53) x0_ack!1205))
               ((_ to_fp 11 53) x0_ack!1205))
       ((_ to_fp 11 53) x1_ack!1199)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1199)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1199)
                       ((_ to_fp 11 53) x0_ack!1205)))
       ((_ to_fp 11 53) x0_ack!1205)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1200)
                       ((_ to_fp 11 53) x1_ack!1199))
               ((_ to_fp 11 53) x1_ack!1199))
       ((_ to_fp 11 53) x2_ack!1200)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1200)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1200)
                       ((_ to_fp 11 53) x1_ack!1199)))
       ((_ to_fp 11 53) x1_ack!1199)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1199)
                    ((_ to_fp 11 53) x0_ack!1205))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1200)
                    ((_ to_fp 11 53) x1_ack!1199))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1204) ((_ to_fp 11 53) x0_ack!1205))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1204) ((_ to_fp 11 53) x2_ack!1200))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1204) ((_ to_fp 11 53) x0_ack!1205))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1204) ((_ to_fp 11 53) x1_ack!1199)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1199) ((_ to_fp 11 53) xx_ack!1204))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1200)
               ((_ to_fp 11 53) x1_ack!1199))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1203)
                           ((_ to_fp 11 53) y1_ack!1202))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1200)
                                   ((_ to_fp 11 53) x1_ack!1199)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1202)
                           ((_ to_fp 11 53) y0_ack!1201))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1199)
                                   ((_ to_fp 11 53) x0_ack!1205)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1200)
                                   ((_ to_fp 11 53) x1_ack!1199))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1199)
                                   ((_ to_fp 11 53) x0_ack!1205))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FADD_OVERFLOW #x0000000000000000 a!4))))

(check-sat)
(exit)
