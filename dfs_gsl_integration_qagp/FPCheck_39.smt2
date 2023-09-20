(declare-fun limit_ack!746 () (_ BitVec 64))
(declare-fun epsabs_ack!751 () (_ BitVec 64))
(declare-fun epsrel_ack!745 () (_ BitVec 64))
(declare-fun a_ack!752 () (_ BitVec 64))
(declare-fun x1_ack!747 () (_ BitVec 64))
(declare-fun x2_ack!748 () (_ BitVec 64))
(declare-fun x3_ack!749 () (_ BitVec 64))
(declare-fun b_ack!750 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!746)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!751) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!745)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!745)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!747) ((_ to_fp 11 53) a_ack!752))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!748) ((_ to_fp 11 53) x1_ack!747))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!749) ((_ to_fp 11 53) x2_ack!748))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!750) ((_ to_fp 11 53) x3_ack!749))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!752)
                                   ((_ to_fp 11 53) x1_ack!747))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!747)
                                   ((_ to_fp 11 53) a_ack!752)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!752)
                                   ((_ to_fp 11 53) x1_ack!747)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
