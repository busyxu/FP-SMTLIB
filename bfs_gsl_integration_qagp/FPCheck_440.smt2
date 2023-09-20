(declare-fun limit_ack!6635 () (_ BitVec 64))
(declare-fun epsabs_ack!6640 () (_ BitVec 64))
(declare-fun a_ack!6641 () (_ BitVec 64))
(declare-fun x1_ack!6636 () (_ BitVec 64))
(declare-fun x2_ack!6637 () (_ BitVec 64))
(declare-fun x3_ack!6638 () (_ BitVec 64))
(declare-fun b_ack!6639 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!6635)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6640)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6636) ((_ to_fp 11 53) a_ack!6641))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6637) ((_ to_fp 11 53) x1_ack!6636))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6638) ((_ to_fp 11 53) x2_ack!6637))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6639) ((_ to_fp 11 53) x3_ack!6638))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6641)
                                   ((_ to_fp 11 53) x1_ack!6636))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!6641)
                           ((_ to_fp 11 53) x1_ack!6636))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6636)
                                   ((_ to_fp 11 53) a_ack!6641)))
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
  (FPCHECK_FMUL_UNDERFLOW
    #x3fbf9d2b8f5d2dde
    (fp.add roundNearestTiesToEven a!3 a!4)))))

(check-sat)
(exit)
