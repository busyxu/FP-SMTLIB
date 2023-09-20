(declare-fun limit_ack!3632 () (_ BitVec 64))
(declare-fun epsabs_ack!3637 () (_ BitVec 64))
(declare-fun a_ack!3638 () (_ BitVec 64))
(declare-fun x1_ack!3633 () (_ BitVec 64))
(declare-fun x2_ack!3634 () (_ BitVec 64))
(declare-fun x3_ack!3635 () (_ BitVec 64))
(declare-fun b_ack!3636 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3632)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3637)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3633) ((_ to_fp 11 53) a_ack!3638))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3634) ((_ to_fp 11 53) x1_ack!3633))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3635) ((_ to_fp 11 53) x2_ack!3634))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3636) ((_ to_fp 11 53) x3_ack!3635))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3638)
                                   ((_ to_fp 11 53) x1_ack!3633))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3633)
                                   ((_ to_fp 11 53) a_ack!3638)))
                   ((_ to_fp 11 53) #x3fc30e507891e27a))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3638)
                                   ((_ to_fp 11 53) x1_ack!3633)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
