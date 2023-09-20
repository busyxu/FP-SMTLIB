(declare-fun limit_ack!6058 () (_ BitVec 64))
(declare-fun epsabs_ack!6063 () (_ BitVec 64))
(declare-fun epsrel_ack!6057 () (_ BitVec 64))
(declare-fun a_ack!6064 () (_ BitVec 64))
(declare-fun x1_ack!6059 () (_ BitVec 64))
(declare-fun x2_ack!6060 () (_ BitVec 64))
(declare-fun x3_ack!6061 () (_ BitVec 64))
(declare-fun b_ack!6062 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6058)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6063) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6057)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6057)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6059) ((_ to_fp 11 53) a_ack!6064))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6060) ((_ to_fp 11 53) x1_ack!6059))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6061) ((_ to_fp 11 53) x2_ack!6060))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6062) ((_ to_fp 11 53) x3_ack!6061))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6064)
                                   ((_ to_fp 11 53) x1_ack!6059))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6059)
                                   ((_ to_fp 11 53) a_ack!6064)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6064)
                    ((_ to_fp 11 53) x1_ack!6059)))
    a!1)))

(check-sat)
(exit)
