(declare-fun limit_ack!6338 () (_ BitVec 64))
(declare-fun epsabs_ack!6343 () (_ BitVec 64))
(declare-fun epsrel_ack!6337 () (_ BitVec 64))
(declare-fun a_ack!6344 () (_ BitVec 64))
(declare-fun x1_ack!6339 () (_ BitVec 64))
(declare-fun x2_ack!6340 () (_ BitVec 64))
(declare-fun x3_ack!6341 () (_ BitVec 64))
(declare-fun b_ack!6342 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6338)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6343) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6337)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6337)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6339) ((_ to_fp 11 53) a_ack!6344))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6340) ((_ to_fp 11 53) x1_ack!6339))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6341) ((_ to_fp 11 53) x2_ack!6340))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6342) ((_ to_fp 11 53) x3_ack!6341))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6344)
                                   ((_ to_fp 11 53) x1_ack!6339))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6339)
                                   ((_ to_fp 11 53) a_ack!6344)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6344)
                                   ((_ to_fp 11 53) x1_ack!6339)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
