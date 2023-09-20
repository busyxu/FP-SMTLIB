(declare-fun limit_ack!2354 () (_ BitVec 64))
(declare-fun epsabs_ack!2359 () (_ BitVec 64))
(declare-fun epsrel_ack!2353 () (_ BitVec 64))
(declare-fun a_ack!2360 () (_ BitVec 64))
(declare-fun x1_ack!2355 () (_ BitVec 64))
(declare-fun x2_ack!2356 () (_ BitVec 64))
(declare-fun x3_ack!2357 () (_ BitVec 64))
(declare-fun b_ack!2358 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2354)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!2359) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2353)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2353)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2355) ((_ to_fp 11 53) a_ack!2360))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2356) ((_ to_fp 11 53) x1_ack!2355))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2357) ((_ to_fp 11 53) x2_ack!2356))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2358) ((_ to_fp 11 53) x3_ack!2357))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2360)
                                   ((_ to_fp 11 53) x1_ack!2355))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2355)
                                   ((_ to_fp 11 53) a_ack!2360)))
                   ((_ to_fp 11 53) #x3fe5bdb9228de198))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2360)
                    ((_ to_fp 11 53) x1_ack!2355)))
    a!1)))

(check-sat)
(exit)
