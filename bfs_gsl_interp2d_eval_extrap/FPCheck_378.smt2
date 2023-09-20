(declare-fun x1_ack!4057 () (_ BitVec 64))
(declare-fun x0_ack!4064 () (_ BitVec 64))
(declare-fun y0_ack!4058 () (_ BitVec 64))
(declare-fun x_ack!4062 () (_ BitVec 64))
(declare-fun y_ack!4063 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z1_ack!4060 () (_ BitVec 64))
(declare-fun z3_ack!4061 () (_ BitVec 64))
(declare-fun z0_ack!4059 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4064) ((_ to_fp 11 53) x1_ack!4057))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4058) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4062) ((_ to_fp 11 53) x0_ack!4064)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4063) ((_ to_fp 11 53) y0_ack!4058))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!4063) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4057)
                       ((_ to_fp 11 53) x0_ack!4064))
               ((_ to_fp 11 53) x0_ack!4064))
       ((_ to_fp 11 53) x1_ack!4057)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4057)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4057)
                       ((_ to_fp 11 53) x0_ack!4064)))
       ((_ to_fp 11 53) x0_ack!4064)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4062)
                           ((_ to_fp 11 53) x0_ack!4064))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4057)
                           ((_ to_fp 11 53) x0_ack!4064)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4062)
                           ((_ to_fp 11 53) x0_ack!4064))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4057)
                           ((_ to_fp 11 53) x0_ack!4064)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4062)
                           ((_ to_fp 11 53) x0_ack!4064))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4057)
                           ((_ to_fp 11 53) x0_ack!4064))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4063)
                           ((_ to_fp 11 53) y0_ack!4058))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4058)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!4059)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!4061)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!4060))))
  (FPCHECK_FADD_ACCURACY (fp.add roundNearestTiesToEven a!3 a!4) a!5))))

(check-sat)
(exit)
