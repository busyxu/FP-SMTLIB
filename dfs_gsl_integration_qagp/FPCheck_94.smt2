(declare-fun limit_ack!1674 () (_ BitVec 64))
(declare-fun epsabs_ack!1679 () (_ BitVec 64))
(declare-fun epsrel_ack!1673 () (_ BitVec 64))
(declare-fun a_ack!1680 () (_ BitVec 64))
(declare-fun x1_ack!1675 () (_ BitVec 64))
(declare-fun x2_ack!1676 () (_ BitVec 64))
(declare-fun x3_ack!1677 () (_ BitVec 64))
(declare-fun b_ack!1678 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1674)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1679) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1673)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1673)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1675) ((_ to_fp 11 53) a_ack!1680))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1676) ((_ to_fp 11 53) x1_ack!1675))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1677) ((_ to_fp 11 53) x2_ack!1676))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1678) ((_ to_fp 11 53) x3_ack!1677))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1680)
                                   ((_ to_fp 11 53) x1_ack!1675))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1675)
                                   ((_ to_fp 11 53) a_ack!1680)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1680)
                                   ((_ to_fp 11 53) x1_ack!1675)))
                   a!1)))
  (FPCHECK_FDIV_UNDERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
