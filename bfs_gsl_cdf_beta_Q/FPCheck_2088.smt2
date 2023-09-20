(declare-fun x_ack!9785 () (_ BitVec 64))
(declare-fun nu1_ack!9783 () (_ BitVec 64))
(declare-fun nu2_ack!9784 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!9785) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!9785) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!9785) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!9785) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!9783) ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt ((_ to_fp 11 53) nu2_ack!9784) ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) x_ack!9785)
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) nu1_ack!9783)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!9783)
                                  ((_ to_fp 11 53) nu2_ack!9784))))))
  (not a!1)))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!9784) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!9783) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!9784) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!9783) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!9784) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!9783) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!9784) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!9783) ((_ to_fp 11 53) nu2_ack!9784)))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!9783) ((_ to_fp 11 53) nu2_ack!9784))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!9784)
               ((_ to_fp 11 53) nu1_ack!9783))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq ((_ to_fp 11 53) nu1_ack!9783)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!9783) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!9783) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!9783) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!9783) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!9783) ((_ to_fp 11 53) #x4330000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) nu2_ack!9784)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) nu2_ack!9784) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu2_ack!9784)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) nu2_ack!9784)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!9784)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu2_ack!9784)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu2_ack!9784)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu2_ack!9784)
                       ((_ to_fp 11 53) #x4000000000000000))
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) nu2_ack!9784)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!9784)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu2_ack!9784)
                       ((_ to_fp 11 53) #x4000000000000000)))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu2_ack!9784)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) nu2_ack!9784)
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!9784) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) nu2_ack!9784))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (FPCHECK_FADD_OVERFLOW
  #x3f4ff0a5d7d0b01e
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!9784)
          ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))

(check-sat)
(exit)
