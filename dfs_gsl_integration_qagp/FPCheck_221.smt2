(declare-fun limit_ack!3762 () (_ BitVec 64))
(declare-fun epsabs_ack!3767 () (_ BitVec 64))
(declare-fun epsrel_ack!3761 () (_ BitVec 64))
(declare-fun a_ack!3768 () (_ BitVec 64))
(declare-fun x1_ack!3763 () (_ BitVec 64))
(declare-fun x2_ack!3764 () (_ BitVec 64))
(declare-fun x3_ack!3765 () (_ BitVec 64))
(declare-fun b_ack!3766 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3762)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!3767) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3761)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!3761)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3763) ((_ to_fp 11 53) a_ack!3768))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3764) ((_ to_fp 11 53) x1_ack!3763))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3765) ((_ to_fp 11 53) x2_ack!3764))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3766) ((_ to_fp 11 53) x3_ack!3765))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3768)
                                   ((_ to_fp 11 53) x1_ack!3763))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3763)
                                   ((_ to_fp 11 53) a_ack!3768)))
                   ((_ to_fp 11 53) #x3fc30e507891e27a))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3768)
                    ((_ to_fp 11 53) x1_ack!3763)))
    a!1)))

(check-sat)
(exit)
