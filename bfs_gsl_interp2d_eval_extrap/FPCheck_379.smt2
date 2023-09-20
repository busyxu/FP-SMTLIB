(declare-fun x1_ack!4075 () (_ BitVec 64))
(declare-fun x0_ack!4079 () (_ BitVec 64))
(declare-fun y0_ack!4076 () (_ BitVec 64))
(declare-fun x_ack!4077 () (_ BitVec 64))
(declare-fun y_ack!4078 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4079) ((_ to_fp 11 53) x1_ack!4075))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4076) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4077) ((_ to_fp 11 53) x0_ack!4079)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4078) ((_ to_fp 11 53) y0_ack!4076))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!4078) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4075)
                       ((_ to_fp 11 53) x0_ack!4079))
               ((_ to_fp 11 53) x0_ack!4079))
       ((_ to_fp 11 53) x1_ack!4075)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4075)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4075)
                       ((_ to_fp 11 53) x0_ack!4079)))
       ((_ to_fp 11 53) x0_ack!4079)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4077)
                           ((_ to_fp 11 53) x0_ack!4079))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4075)
                           ((_ to_fp 11 53) x0_ack!4079)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4077)
                           ((_ to_fp 11 53) x0_ack!4079))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4075)
                           ((_ to_fp 11 53) x0_ack!4079)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!4077)
                  ((_ to_fp 11 53) x0_ack!4079))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!4075)
                  ((_ to_fp 11 53) x0_ack!4079)))
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!4078)
                  ((_ to_fp 11 53) y0_ack!4076))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!4076)))))

(check-sat)
(exit)
