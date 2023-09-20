(declare-fun nu1_ack!1119 () (_ BitVec 64))
(declare-fun nu2_ack!1120 () (_ BitVec 64))
(declare-fun x_ack!1121 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!1120)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!1119)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1121)
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!1120)
                    ((_ to_fp 11 53) nu1_ack!1119)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu2_ack!1120)
                           ((_ to_fp 11 53) nu1_ack!1119))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!1120)
                                   ((_ to_fp 11 53) nu1_ack!1119))
                           ((_ to_fp 11 53) x_ack!1121)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu2_ack!1120)
                           ((_ to_fp 11 53) nu1_ack!1119))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!1120)
                                   ((_ to_fp 11 53) nu1_ack!1119))
                           ((_ to_fp 11 53) x_ack!1121)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!1120)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!1119)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!1120)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!1120)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!1119)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!1120)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!1119)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!1120)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!1120)
          ((_ to_fp 11 53) #x4000000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
