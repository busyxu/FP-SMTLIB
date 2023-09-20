(declare-fun nu1_ack!831 () (_ BitVec 64))
(declare-fun nu2_ack!832 () (_ BitVec 64))
(declare-fun x_ack!833 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!832)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!831)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!833)
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!832)
                    ((_ to_fp 11 53) nu1_ack!831)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu2_ack!832)
                           ((_ to_fp 11 53) nu1_ack!831))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!832)
                                   ((_ to_fp 11 53) nu1_ack!831))
                           ((_ to_fp 11 53) x_ack!833)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu2_ack!832)
                           ((_ to_fp 11 53) nu1_ack!831))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!832)
                                   ((_ to_fp 11 53) nu1_ack!831))
                           ((_ to_fp 11 53) x_ack!833)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!832)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!831)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!832)
          ((_ to_fp 11 53) #x4000000000000000))
  (fp.add roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) nu2_ack!832)
                  ((_ to_fp 11 53) #x4000000000000000))
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) nu1_ack!831)
                  ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
