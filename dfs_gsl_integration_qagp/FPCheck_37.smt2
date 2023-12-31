(declare-fun limit_ack!706 () (_ BitVec 64))
(declare-fun epsabs_ack!711 () (_ BitVec 64))
(declare-fun epsrel_ack!705 () (_ BitVec 64))
(declare-fun a_ack!712 () (_ BitVec 64))
(declare-fun x1_ack!707 () (_ BitVec 64))
(declare-fun x2_ack!708 () (_ BitVec 64))
(declare-fun x3_ack!709 () (_ BitVec 64))
(declare-fun b_ack!710 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!706)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!711) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!705)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!705)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!707) ((_ to_fp 11 53) a_ack!712))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!708) ((_ to_fp 11 53) x1_ack!707))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!709) ((_ to_fp 11 53) x2_ack!708))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!710) ((_ to_fp 11 53) x3_ack!709))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!712)
                                   ((_ to_fp 11 53) x1_ack!707))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!707)
                                   ((_ to_fp 11 53) a_ack!712)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!712)
                    ((_ to_fp 11 53) x1_ack!707)))
    a!1)))

(check-sat)
(exit)
