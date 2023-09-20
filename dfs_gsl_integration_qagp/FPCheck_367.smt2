(declare-fun limit_ack!6282 () (_ BitVec 64))
(declare-fun epsabs_ack!6287 () (_ BitVec 64))
(declare-fun epsrel_ack!6281 () (_ BitVec 64))
(declare-fun a_ack!6288 () (_ BitVec 64))
(declare-fun x1_ack!6283 () (_ BitVec 64))
(declare-fun x2_ack!6284 () (_ BitVec 64))
(declare-fun x3_ack!6285 () (_ BitVec 64))
(declare-fun b_ack!6286 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6282)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6287) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6281)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6281)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6283) ((_ to_fp 11 53) a_ack!6288))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6284) ((_ to_fp 11 53) x1_ack!6283))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6285) ((_ to_fp 11 53) x2_ack!6284))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6286) ((_ to_fp 11 53) x3_ack!6285))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6288)
                                   ((_ to_fp 11 53) x1_ack!6283))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6283)
                                   ((_ to_fp 11 53) a_ack!6288)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6288)
                    ((_ to_fp 11 53) x1_ack!6283)))
    a!1)))

(check-sat)
(exit)
