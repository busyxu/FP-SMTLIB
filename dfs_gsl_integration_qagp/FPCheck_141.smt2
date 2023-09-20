(declare-fun limit_ack!2474 () (_ BitVec 64))
(declare-fun epsabs_ack!2479 () (_ BitVec 64))
(declare-fun epsrel_ack!2473 () (_ BitVec 64))
(declare-fun a_ack!2480 () (_ BitVec 64))
(declare-fun x1_ack!2475 () (_ BitVec 64))
(declare-fun x2_ack!2476 () (_ BitVec 64))
(declare-fun x3_ack!2477 () (_ BitVec 64))
(declare-fun b_ack!2478 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2474)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!2479) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2473)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2473)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2475) ((_ to_fp 11 53) a_ack!2480))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2476) ((_ to_fp 11 53) x1_ack!2475))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2477) ((_ to_fp 11 53) x2_ack!2476))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2478) ((_ to_fp 11 53) x3_ack!2477))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2480)
                                   ((_ to_fp 11 53) x1_ack!2475))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2475)
                                   ((_ to_fp 11 53) a_ack!2480)))
                   ((_ to_fp 11 53) #x3fe5bdb9228de198))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2480)
                                   ((_ to_fp 11 53) x1_ack!2475)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
