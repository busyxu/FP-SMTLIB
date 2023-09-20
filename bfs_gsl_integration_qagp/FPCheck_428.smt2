(declare-fun limit_ack!6467 () (_ BitVec 64))
(declare-fun epsabs_ack!6472 () (_ BitVec 64))
(declare-fun a_ack!6473 () (_ BitVec 64))
(declare-fun x1_ack!6468 () (_ BitVec 64))
(declare-fun x2_ack!6469 () (_ BitVec 64))
(declare-fun x3_ack!6470 () (_ BitVec 64))
(declare-fun b_ack!6471 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6467)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6472)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6468) ((_ to_fp 11 53) a_ack!6473))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6469) ((_ to_fp 11 53) x1_ack!6468))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6470) ((_ to_fp 11 53) x2_ack!6469))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6471) ((_ to_fp 11 53) x3_ack!6470))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6473)
                                   ((_ to_fp 11 53) x1_ack!6468))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6468)
                                   ((_ to_fp 11 53) a_ack!6473)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6473)
                                   ((_ to_fp 11 53) x1_ack!6468)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
