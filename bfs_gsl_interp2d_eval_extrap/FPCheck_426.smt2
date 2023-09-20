(declare-fun x1_ack!4668 () (_ BitVec 64))
(declare-fun x0_ack!4672 () (_ BitVec 64))
(declare-fun y0_ack!4669 () (_ BitVec 64))
(declare-fun x_ack!4670 () (_ BitVec 64))
(declare-fun y_ack!4671 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4672) ((_ to_fp 11 53) x1_ack!4668))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4669) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4670) ((_ to_fp 11 53) x0_ack!4672))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4670) ((_ to_fp 11 53) x1_ack!4668))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4671) ((_ to_fp 11 53) y0_ack!4669)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4668)
                       ((_ to_fp 11 53) x0_ack!4672))
               ((_ to_fp 11 53) x0_ack!4672))
       ((_ to_fp 11 53) x1_ack!4668)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4668)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4668)
                       ((_ to_fp 11 53) x0_ack!4672)))
       ((_ to_fp 11 53) x0_ack!4672)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4669))
               ((_ to_fp 11 53) y0_ack!4669))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4669)))
       ((_ to_fp 11 53) y0_ack!4669)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4671)
                           ((_ to_fp 11 53) y0_ack!4669))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4669)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4671)
                           ((_ to_fp 11 53) y0_ack!4669))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4669)))))
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
                  ((_ to_fp 11 53) x_ack!4670)
                  ((_ to_fp 11 53) x0_ack!4672))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!4668)
                  ((_ to_fp 11 53) x0_ack!4672)))))

(check-sat)
(exit)
