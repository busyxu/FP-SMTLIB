(declare-fun x1_ack!4512 () (_ BitVec 64))
(declare-fun x0_ack!4516 () (_ BitVec 64))
(declare-fun y0_ack!4513 () (_ BitVec 64))
(declare-fun x_ack!4514 () (_ BitVec 64))
(declare-fun y_ack!4515 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4516) ((_ to_fp 11 53) x1_ack!4512))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4513) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4514) ((_ to_fp 11 53) x0_ack!4516))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4514) ((_ to_fp 11 53) x1_ack!4512))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4515) ((_ to_fp 11 53) y0_ack!4513)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4512)
                       ((_ to_fp 11 53) x0_ack!4516))
               ((_ to_fp 11 53) x0_ack!4516))
       ((_ to_fp 11 53) x1_ack!4512)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4512)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4512)
                       ((_ to_fp 11 53) x0_ack!4516)))
       ((_ to_fp 11 53) x0_ack!4516)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4513))
               ((_ to_fp 11 53) y0_ack!4513))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4513)))
       ((_ to_fp 11 53) y0_ack!4513)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4515)
                           ((_ to_fp 11 53) y0_ack!4513))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4513)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4515)
                           ((_ to_fp 11 53) y0_ack!4513))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4513)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!4515)
                  ((_ to_fp 11 53) y0_ack!4513))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!4513)))))

(check-sat)
(exit)
