(declare-fun limit_ack!5378 () (_ BitVec 64))
(declare-fun epsabs_ack!5383 () (_ BitVec 64))
(declare-fun epsrel_ack!5377 () (_ BitVec 64))
(declare-fun a_ack!5384 () (_ BitVec 64))
(declare-fun x1_ack!5379 () (_ BitVec 64))
(declare-fun x2_ack!5380 () (_ BitVec 64))
(declare-fun x3_ack!5381 () (_ BitVec 64))
(declare-fun b_ack!5382 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5378)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5383) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5377)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5377)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5379) ((_ to_fp 11 53) a_ack!5384))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5380) ((_ to_fp 11 53) x1_ack!5379))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5381) ((_ to_fp 11 53) x2_ack!5380))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5382) ((_ to_fp 11 53) x3_ack!5381))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5384)
                                   ((_ to_fp 11 53) x1_ack!5379))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5379)
                                   ((_ to_fp 11 53) a_ack!5384)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5384)
                                   ((_ to_fp 11 53) x1_ack!5379)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
