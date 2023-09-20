(declare-fun limit_ack!498 () (_ BitVec 64))
(declare-fun epsabs_ack!503 () (_ BitVec 64))
(declare-fun epsrel_ack!497 () (_ BitVec 64))
(declare-fun a_ack!504 () (_ BitVec 64))
(declare-fun x1_ack!499 () (_ BitVec 64))
(declare-fun x2_ack!500 () (_ BitVec 64))
(declare-fun x3_ack!501 () (_ BitVec 64))
(declare-fun b_ack!502 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!498)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!503) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!497)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!497)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!499) ((_ to_fp 11 53) a_ack!504))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!500) ((_ to_fp 11 53) x1_ack!499))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!501) ((_ to_fp 11 53) x2_ack!500))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!502) ((_ to_fp 11 53) x3_ack!501))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!504)
                                   ((_ to_fp 11 53) x1_ack!499))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!499)
                                   ((_ to_fp 11 53) a_ack!504)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!504)
                    ((_ to_fp 11 53) x1_ack!499)))
    a!1)))

(check-sat)
(exit)
