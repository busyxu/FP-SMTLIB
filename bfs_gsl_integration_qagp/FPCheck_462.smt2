(declare-fun limit_ack!6943 () (_ BitVec 64))
(declare-fun epsabs_ack!6948 () (_ BitVec 64))
(declare-fun a_ack!6949 () (_ BitVec 64))
(declare-fun x1_ack!6944 () (_ BitVec 64))
(declare-fun x2_ack!6945 () (_ BitVec 64))
(declare-fun x3_ack!6946 () (_ BitVec 64))
(declare-fun b_ack!6947 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6943)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6948)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6944) ((_ to_fp 11 53) a_ack!6949))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6945) ((_ to_fp 11 53) x1_ack!6944))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6946) ((_ to_fp 11 53) x2_ack!6945))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6947) ((_ to_fp 11 53) x3_ack!6946))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6949)
                                   ((_ to_fp 11 53) x1_ack!6944))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6944)
                                   ((_ to_fp 11 53) a_ack!6949)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6949)
                                   ((_ to_fp 11 53) x1_ack!6944)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a!2))))

(check-sat)
(exit)
