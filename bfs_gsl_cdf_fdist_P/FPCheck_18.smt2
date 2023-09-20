(declare-fun nu1_ack!114 () (_ BitVec 64))
(declare-fun nu2_ack!115 () (_ BitVec 64))
(declare-fun x_ack!116 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!115)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!114)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!116)
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!115)
                    ((_ to_fp 11 53) nu1_ack!114)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu2_ack!115)
                           ((_ to_fp 11 53) nu1_ack!114))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!115)
                                   ((_ to_fp 11 53) nu1_ack!114))
                           ((_ to_fp 11 53) x_ack!116)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu2_ack!115)
                           ((_ to_fp 11 53) nu1_ack!114))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!115)
                                   ((_ to_fp 11 53) nu1_ack!114))
                           ((_ to_fp 11 53) x_ack!116)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!115)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!114)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!115)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!114)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!115)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!114)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!115)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!114)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!115)
          ((_ to_fp 11 53) #x4000000000000000))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu1_ack!114)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
