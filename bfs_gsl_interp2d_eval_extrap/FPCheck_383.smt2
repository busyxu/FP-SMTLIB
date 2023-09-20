(declare-fun x1_ack!4127 () (_ BitVec 64))
(declare-fun x0_ack!4132 () (_ BitVec 64))
(declare-fun y0_ack!4128 () (_ BitVec 64))
(declare-fun x_ack!4130 () (_ BitVec 64))
(declare-fun y_ack!4131 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z2_ack!4129 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4132) ((_ to_fp 11 53) x1_ack!4127))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4128) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4130) ((_ to_fp 11 53) x0_ack!4132)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4131) ((_ to_fp 11 53) y0_ack!4128))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!4131) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4127)
                       ((_ to_fp 11 53) x0_ack!4132))
               ((_ to_fp 11 53) x0_ack!4132))
       ((_ to_fp 11 53) x1_ack!4127)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4127)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4127)
                       ((_ to_fp 11 53) x0_ack!4132)))
       ((_ to_fp 11 53) x0_ack!4132)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4130)
                           ((_ to_fp 11 53) x0_ack!4132))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4127)
                           ((_ to_fp 11 53) x0_ack!4132)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4130)
                           ((_ to_fp 11 53) x0_ack!4132))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4127)
                           ((_ to_fp 11 53) x0_ack!4132)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!4130)
                                   ((_ to_fp 11 53) x0_ack!4132))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4127)
                                   ((_ to_fp 11 53) x0_ack!4132)))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4131)
                                   ((_ to_fp 11 53) y0_ack!4128))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4128))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 z2_ack!4129)))

(check-sat)
(exit)
