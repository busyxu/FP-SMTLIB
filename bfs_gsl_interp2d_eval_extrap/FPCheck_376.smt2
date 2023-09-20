(declare-fun x1_ack!4025 () (_ BitVec 64))
(declare-fun x0_ack!4032 () (_ BitVec 64))
(declare-fun y0_ack!4026 () (_ BitVec 64))
(declare-fun x_ack!4030 () (_ BitVec 64))
(declare-fun y_ack!4031 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z1_ack!4028 () (_ BitVec 64))
(declare-fun z3_ack!4029 () (_ BitVec 64))
(declare-fun z0_ack!4027 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4032) ((_ to_fp 11 53) x1_ack!4025))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4026) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4030) ((_ to_fp 11 53) x0_ack!4032)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4031) ((_ to_fp 11 53) y0_ack!4026))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!4031) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4025)
                       ((_ to_fp 11 53) x0_ack!4032))
               ((_ to_fp 11 53) x0_ack!4032))
       ((_ to_fp 11 53) x1_ack!4025)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4025)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4025)
                       ((_ to_fp 11 53) x0_ack!4032)))
       ((_ to_fp 11 53) x0_ack!4032)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4030)
                           ((_ to_fp 11 53) x0_ack!4032))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4025)
                           ((_ to_fp 11 53) x0_ack!4032)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4030)
                           ((_ to_fp 11 53) x0_ack!4032))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4025)
                           ((_ to_fp 11 53) x0_ack!4032)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4030)
                           ((_ to_fp 11 53) x0_ack!4032))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4025)
                           ((_ to_fp 11 53) x0_ack!4032))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4031)
                           ((_ to_fp 11 53) y0_ack!4026))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4026)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!4027)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!4029)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!4028))))
  (FPCHECK_FADD_OVERFLOW (fp.add roundNearestTiesToEven a!3 a!4) a!5))))

(check-sat)
(exit)
