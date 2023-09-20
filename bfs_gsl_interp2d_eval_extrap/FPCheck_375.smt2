(declare-fun x1_ack!4003 () (_ BitVec 64))
(declare-fun x0_ack!4008 () (_ BitVec 64))
(declare-fun y0_ack!4004 () (_ BitVec 64))
(declare-fun x_ack!4006 () (_ BitVec 64))
(declare-fun y_ack!4007 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z1_ack!4005 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4008) ((_ to_fp 11 53) x1_ack!4003))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4004) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4006) ((_ to_fp 11 53) x0_ack!4008)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4007) ((_ to_fp 11 53) y0_ack!4004))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!4007) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4003)
                       ((_ to_fp 11 53) x0_ack!4008))
               ((_ to_fp 11 53) x0_ack!4008))
       ((_ to_fp 11 53) x1_ack!4003)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4003)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4003)
                       ((_ to_fp 11 53) x0_ack!4008)))
       ((_ to_fp 11 53) x0_ack!4008)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4006)
                           ((_ to_fp 11 53) x0_ack!4008))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4003)
                           ((_ to_fp 11 53) x0_ack!4008)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4006)
                           ((_ to_fp 11 53) x0_ack!4008))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4003)
                           ((_ to_fp 11 53) x0_ack!4008)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!4006)
                                   ((_ to_fp 11 53) x0_ack!4008))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4003)
                                   ((_ to_fp 11 53) x0_ack!4008))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4007)
                                   ((_ to_fp 11 53) y0_ack!4004))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4004))))))
  (FPCHECK_FMUL_ACCURACY a!2 z1_ack!4005))))

(check-sat)
(exit)
