(declare-fun x_ack!3782 () (_ BitVec 64))
(declare-fun nu1_ack!3780 () (_ BitVec 64))
(declare-fun nu2_ack!3781 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3782) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!3782) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3782) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3782) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!3780) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!3781) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!3780) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!3781) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!3780) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!3781) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!3780) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!3781) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!3780) ((_ to_fp 11 53) nu2_ack!3781))))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!3780) ((_ to_fp 11 53) nu2_ack!3781)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!3780)
               ((_ to_fp 11 53) nu2_ack!3781))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq ((_ to_fp 11 53) nu1_ack!3780)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!3780) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!3780) ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!3780) ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!3780)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_OVERFLOW #x4000000000000000 a!1)))

(check-sat)
(exit)
