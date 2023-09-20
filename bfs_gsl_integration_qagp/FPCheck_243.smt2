(declare-fun limit_ack!3702 () (_ BitVec 64))
(declare-fun epsabs_ack!3707 () (_ BitVec 64))
(declare-fun a_ack!3708 () (_ BitVec 64))
(declare-fun x1_ack!3703 () (_ BitVec 64))
(declare-fun x2_ack!3704 () (_ BitVec 64))
(declare-fun x3_ack!3705 () (_ BitVec 64))
(declare-fun b_ack!3706 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3702)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3707)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3703) ((_ to_fp 11 53) a_ack!3708))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3704) ((_ to_fp 11 53) x1_ack!3703))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3705) ((_ to_fp 11 53) x2_ack!3704))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3706) ((_ to_fp 11 53) x3_ack!3705))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3708)
                                   ((_ to_fp 11 53) x1_ack!3703))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3703)
                                   ((_ to_fp 11 53) a_ack!3708)))
                   ((_ to_fp 11 53) #x3fc30e507891e27a))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3708)
                                   ((_ to_fp 11 53) x1_ack!3703)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
