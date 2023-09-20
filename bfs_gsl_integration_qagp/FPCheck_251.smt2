(declare-fun limit_ack!3828 () (_ BitVec 64))
(declare-fun epsabs_ack!3833 () (_ BitVec 64))
(declare-fun a_ack!3834 () (_ BitVec 64))
(declare-fun x1_ack!3829 () (_ BitVec 64))
(declare-fun x2_ack!3830 () (_ BitVec 64))
(declare-fun x3_ack!3831 () (_ BitVec 64))
(declare-fun b_ack!3832 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3828)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3833)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3829) ((_ to_fp 11 53) a_ack!3834))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3830) ((_ to_fp 11 53) x1_ack!3829))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3831) ((_ to_fp 11 53) x2_ack!3830))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3832) ((_ to_fp 11 53) x3_ack!3831))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3834)
                                   ((_ to_fp 11 53) x1_ack!3829))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3829)
                                   ((_ to_fp 11 53) a_ack!3834)))
                   ((_ to_fp 11 53) #x3fc30e507891e27a))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3834)
                                   ((_ to_fp 11 53) x1_ack!3829)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
