(declare-fun b_ack!3709 () (_ BitVec 64))
(declare-fun a_ack!3710 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3709) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!3710) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3709) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!3709))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!3709)
                       ((_ to_fp 11 53) b_ack!3709))
               ((_ to_fp 11 53) b_ack!3709))
       ((_ to_fp 11 53) b_ack!3709)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!3709))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!3709)
                       ((_ to_fp 11 53) b_ack!3709))
               ((_ to_fp 11 53) b_ack!3709))
       ((_ to_fp 11 53) b_ack!3709)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!3710))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!3710)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!3710))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 ((_ to_fp 11 53) a_ack!3710)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4024000000000000
  (fp.add roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) a_ack!3710))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
