(declare-fun limit_ack!7370 () (_ BitVec 64))
(declare-fun epsabs_ack!7375 () (_ BitVec 64))
(declare-fun epsrel_ack!7369 () (_ BitVec 64))
(declare-fun a_ack!7376 () (_ BitVec 64))
(declare-fun x1_ack!7371 () (_ BitVec 64))
(declare-fun x2_ack!7372 () (_ BitVec 64))
(declare-fun x3_ack!7373 () (_ BitVec 64))
(declare-fun b_ack!7374 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!7370)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7375) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7369)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7369)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7371) ((_ to_fp 11 53) a_ack!7376))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7372) ((_ to_fp 11 53) x1_ack!7371))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7373) ((_ to_fp 11 53) x2_ack!7372))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7374) ((_ to_fp 11 53) x3_ack!7373))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7376)
                                   ((_ to_fp 11 53) x1_ack!7371))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!7376)
                           ((_ to_fp 11 53) x1_ack!7371))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7371)
                                   ((_ to_fp 11 53) a_ack!7376)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FADD_ACCURACY (fp.abs a!3) (fp.abs a!4)))))

(check-sat)
(exit)
