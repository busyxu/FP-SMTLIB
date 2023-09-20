(declare-fun x1_ack!4085 () (_ BitVec 64))
(declare-fun x0_ack!4089 () (_ BitVec 64))
(declare-fun y0_ack!4086 () (_ BitVec 64))
(declare-fun x_ack!4087 () (_ BitVec 64))
(declare-fun y_ack!4088 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4089) ((_ to_fp 11 53) x1_ack!4085))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4086) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4087) ((_ to_fp 11 53) x0_ack!4089)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4088) ((_ to_fp 11 53) y0_ack!4086))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!4088) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4085)
                       ((_ to_fp 11 53) x0_ack!4089))
               ((_ to_fp 11 53) x0_ack!4089))
       ((_ to_fp 11 53) x1_ack!4085)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4085)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4085)
                       ((_ to_fp 11 53) x0_ack!4089)))
       ((_ to_fp 11 53) x0_ack!4089)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4087)
                           ((_ to_fp 11 53) x0_ack!4089))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4085)
                           ((_ to_fp 11 53) x0_ack!4089)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4087)
                           ((_ to_fp 11 53) x0_ack!4089))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4085)
                           ((_ to_fp 11 53) x0_ack!4089)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!4087)
                  ((_ to_fp 11 53) x0_ack!4089))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!4085)
                  ((_ to_fp 11 53) x0_ack!4089)))
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!4088)
                  ((_ to_fp 11 53) y0_ack!4086))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!4086)))))

(check-sat)
(exit)
