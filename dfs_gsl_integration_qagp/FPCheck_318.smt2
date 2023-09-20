(declare-fun limit_ack!5410 () (_ BitVec 64))
(declare-fun epsabs_ack!5415 () (_ BitVec 64))
(declare-fun epsrel_ack!5409 () (_ BitVec 64))
(declare-fun a_ack!5416 () (_ BitVec 64))
(declare-fun x1_ack!5411 () (_ BitVec 64))
(declare-fun x2_ack!5412 () (_ BitVec 64))
(declare-fun x3_ack!5413 () (_ BitVec 64))
(declare-fun b_ack!5414 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5410)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5415) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5409)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5409)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5411) ((_ to_fp 11 53) a_ack!5416))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5412) ((_ to_fp 11 53) x1_ack!5411))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5413) ((_ to_fp 11 53) x2_ack!5412))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5414) ((_ to_fp 11 53) x3_ack!5413))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5416)
                                   ((_ to_fp 11 53) x1_ack!5411))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5411)
                                   ((_ to_fp 11 53) a_ack!5416)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5416)
                                   ((_ to_fp 11 53) x1_ack!5411)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a!2))))

(check-sat)
(exit)
