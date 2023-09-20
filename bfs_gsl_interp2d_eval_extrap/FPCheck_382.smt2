(declare-fun x1_ack!4115 () (_ BitVec 64))
(declare-fun x0_ack!4120 () (_ BitVec 64))
(declare-fun y0_ack!4116 () (_ BitVec 64))
(declare-fun x_ack!4118 () (_ BitVec 64))
(declare-fun y_ack!4119 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z2_ack!4117 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4120) ((_ to_fp 11 53) x1_ack!4115))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4116) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4118) ((_ to_fp 11 53) x0_ack!4120)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4119) ((_ to_fp 11 53) y0_ack!4116))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!4119) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4115)
                       ((_ to_fp 11 53) x0_ack!4120))
               ((_ to_fp 11 53) x0_ack!4120))
       ((_ to_fp 11 53) x1_ack!4115)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4115)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4115)
                       ((_ to_fp 11 53) x0_ack!4120)))
       ((_ to_fp 11 53) x0_ack!4120)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4118)
                           ((_ to_fp 11 53) x0_ack!4120))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4115)
                           ((_ to_fp 11 53) x0_ack!4120)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4118)
                           ((_ to_fp 11 53) x0_ack!4120))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4115)
                           ((_ to_fp 11 53) x0_ack!4120)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!4118)
                                   ((_ to_fp 11 53) x0_ack!4120))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4115)
                                   ((_ to_fp 11 53) x0_ack!4120)))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4119)
                                   ((_ to_fp 11 53) y0_ack!4116))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4116))))))
  (FPCHECK_FMUL_OVERFLOW a!1 z2_ack!4117)))

(check-sat)
(exit)
