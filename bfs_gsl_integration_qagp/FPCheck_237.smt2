(declare-fun limit_ack!3583 () (_ BitVec 64))
(declare-fun epsabs_ack!3588 () (_ BitVec 64))
(declare-fun a_ack!3589 () (_ BitVec 64))
(declare-fun x1_ack!3584 () (_ BitVec 64))
(declare-fun x2_ack!3585 () (_ BitVec 64))
(declare-fun x3_ack!3586 () (_ BitVec 64))
(declare-fun b_ack!3587 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3583)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3588)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3584) ((_ to_fp 11 53) a_ack!3589))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3585) ((_ to_fp 11 53) x1_ack!3584))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3586) ((_ to_fp 11 53) x2_ack!3585))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3587) ((_ to_fp 11 53) x3_ack!3586))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3589)
                                   ((_ to_fp 11 53) x1_ack!3584))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3584)
                                   ((_ to_fp 11 53) a_ack!3589)))
                   ((_ to_fp 11 53) #x3fc30e507891e27a))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3589)
                    ((_ to_fp 11 53) x1_ack!3584)))
    a!1)))

(check-sat)
(exit)
