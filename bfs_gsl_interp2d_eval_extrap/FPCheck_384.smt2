(declare-fun x1_ack!4139 () (_ BitVec 64))
(declare-fun x0_ack!4144 () (_ BitVec 64))
(declare-fun y0_ack!4140 () (_ BitVec 64))
(declare-fun x_ack!4142 () (_ BitVec 64))
(declare-fun y_ack!4143 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z2_ack!4141 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4144) ((_ to_fp 11 53) x1_ack!4139))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4140) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4142) ((_ to_fp 11 53) x0_ack!4144)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4143) ((_ to_fp 11 53) y0_ack!4140))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!4143) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4139)
                       ((_ to_fp 11 53) x0_ack!4144))
               ((_ to_fp 11 53) x0_ack!4144))
       ((_ to_fp 11 53) x1_ack!4139)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4139)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4139)
                       ((_ to_fp 11 53) x0_ack!4144)))
       ((_ to_fp 11 53) x0_ack!4144)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4142)
                           ((_ to_fp 11 53) x0_ack!4144))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4139)
                           ((_ to_fp 11 53) x0_ack!4144)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4142)
                           ((_ to_fp 11 53) x0_ack!4144))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4139)
                           ((_ to_fp 11 53) x0_ack!4144)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!4142)
                                   ((_ to_fp 11 53) x0_ack!4144))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4139)
                                   ((_ to_fp 11 53) x0_ack!4144)))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4143)
                                   ((_ to_fp 11 53) y0_ack!4140))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4140))))))
  (FPCHECK_FMUL_ACCURACY a!1 z2_ack!4141)))

(check-sat)
(exit)
