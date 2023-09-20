(declare-fun limit_ack!6130 () (_ BitVec 64))
(declare-fun epsabs_ack!6135 () (_ BitVec 64))
(declare-fun epsrel_ack!6129 () (_ BitVec 64))
(declare-fun a_ack!6136 () (_ BitVec 64))
(declare-fun x1_ack!6131 () (_ BitVec 64))
(declare-fun x2_ack!6132 () (_ BitVec 64))
(declare-fun x3_ack!6133 () (_ BitVec 64))
(declare-fun b_ack!6134 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6130)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6135) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6129)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6129)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6131) ((_ to_fp 11 53) a_ack!6136))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6132) ((_ to_fp 11 53) x1_ack!6131))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6133) ((_ to_fp 11 53) x2_ack!6132))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6134) ((_ to_fp 11 53) x3_ack!6133))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6136)
                                   ((_ to_fp 11 53) x1_ack!6131))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6131)
                                   ((_ to_fp 11 53) a_ack!6136)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6136)
                                   ((_ to_fp 11 53) x1_ack!6131)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
