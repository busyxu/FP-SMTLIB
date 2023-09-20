(declare-fun limit_ack!6299 () (_ BitVec 64))
(declare-fun epsabs_ack!6304 () (_ BitVec 64))
(declare-fun a_ack!6305 () (_ BitVec 64))
(declare-fun x1_ack!6300 () (_ BitVec 64))
(declare-fun x2_ack!6301 () (_ BitVec 64))
(declare-fun x3_ack!6302 () (_ BitVec 64))
(declare-fun b_ack!6303 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6299)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6304)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6300) ((_ to_fp 11 53) a_ack!6305))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6301) ((_ to_fp 11 53) x1_ack!6300))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6302) ((_ to_fp 11 53) x2_ack!6301))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6303) ((_ to_fp 11 53) x3_ack!6302))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6305)
                                   ((_ to_fp 11 53) x1_ack!6300))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6300)
                                   ((_ to_fp 11 53) a_ack!6305)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6305)
                                   ((_ to_fp 11 53) x1_ack!6300)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a!2))))

(check-sat)
(exit)
