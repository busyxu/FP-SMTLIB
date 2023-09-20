(declare-fun x1_ack!4041 () (_ BitVec 64))
(declare-fun x0_ack!4048 () (_ BitVec 64))
(declare-fun y0_ack!4042 () (_ BitVec 64))
(declare-fun x_ack!4046 () (_ BitVec 64))
(declare-fun y_ack!4047 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z1_ack!4044 () (_ BitVec 64))
(declare-fun z3_ack!4045 () (_ BitVec 64))
(declare-fun z0_ack!4043 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4048) ((_ to_fp 11 53) x1_ack!4041))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4042) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4046) ((_ to_fp 11 53) x0_ack!4048)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4047) ((_ to_fp 11 53) y0_ack!4042))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!4047) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4041)
                       ((_ to_fp 11 53) x0_ack!4048))
               ((_ to_fp 11 53) x0_ack!4048))
       ((_ to_fp 11 53) x1_ack!4041)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4041)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4041)
                       ((_ to_fp 11 53) x0_ack!4048)))
       ((_ to_fp 11 53) x0_ack!4048)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4046)
                           ((_ to_fp 11 53) x0_ack!4048))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4041)
                           ((_ to_fp 11 53) x0_ack!4048)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4046)
                           ((_ to_fp 11 53) x0_ack!4048))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4041)
                           ((_ to_fp 11 53) x0_ack!4048)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4046)
                           ((_ to_fp 11 53) x0_ack!4048))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4041)
                           ((_ to_fp 11 53) x0_ack!4048))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4047)
                           ((_ to_fp 11 53) y0_ack!4042))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4042)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!4043)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!4045)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!4044))))
  (FPCHECK_FADD_UNDERFLOW (fp.add roundNearestTiesToEven a!3 a!4) a!5))))

(check-sat)
(exit)
