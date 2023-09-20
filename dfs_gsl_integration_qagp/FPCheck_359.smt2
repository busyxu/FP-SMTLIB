(declare-fun limit_ack!6114 () (_ BitVec 64))
(declare-fun epsabs_ack!6119 () (_ BitVec 64))
(declare-fun epsrel_ack!6113 () (_ BitVec 64))
(declare-fun a_ack!6120 () (_ BitVec 64))
(declare-fun x1_ack!6115 () (_ BitVec 64))
(declare-fun x2_ack!6116 () (_ BitVec 64))
(declare-fun x3_ack!6117 () (_ BitVec 64))
(declare-fun b_ack!6118 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6114)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6119) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6113)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6113)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6115) ((_ to_fp 11 53) a_ack!6120))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6116) ((_ to_fp 11 53) x1_ack!6115))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6117) ((_ to_fp 11 53) x2_ack!6116))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6118) ((_ to_fp 11 53) x3_ack!6117))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6120)
                                   ((_ to_fp 11 53) x1_ack!6115))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6115)
                                   ((_ to_fp 11 53) a_ack!6120)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6120)
                                   ((_ to_fp 11 53) x1_ack!6115)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
