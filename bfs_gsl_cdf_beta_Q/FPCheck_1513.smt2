(declare-fun x_ack!6677 () (_ BitVec 64))
(declare-fun nu1_ack!6675 () (_ BitVec 64))
(declare-fun nu2_ack!6676 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!6677) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!6677) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!6677) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!6677) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!6675) ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt ((_ to_fp 11 53) nu2_ack!6676) ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) x_ack!6677)
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) nu1_ack!6675)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!6675)
                                  ((_ to_fp 11 53) nu2_ack!6676))))))
  (not a!1)))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!6676) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!6675) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!6676) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!6675) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) nu2_ack!6676) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) nu2_ack!6676) (CF_floor nu2_ack!6676))
                  #x00000001
                  #x00000000))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!6675) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!6676) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!6675)
                       ((_ to_fp 11 53) nu2_ack!6676))
               ((_ to_fp 11 53) nu1_ack!6675))
       ((_ to_fp 11 53) nu2_ack!6676)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!6675)
                       ((_ to_fp 11 53) nu2_ack!6676))
               ((_ to_fp 11 53) nu2_ack!6676))
       ((_ to_fp 11 53) nu1_ack!6675)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!6675)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!6675)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) nu1_ack!6675) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!6675)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3feffffffffff950)
                         a!1)
                 ((_ to_fp 11 53) #x3feffffffffff950))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!6675)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3feffffffffff950)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3feffffffffff950))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) nu1_ack!6675)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x4000000000000000))

(check-sat)
(exit)
