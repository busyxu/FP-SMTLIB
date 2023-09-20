(declare-fun limit_ack!6026 () (_ BitVec 64))
(declare-fun epsabs_ack!6031 () (_ BitVec 64))
(declare-fun epsrel_ack!6025 () (_ BitVec 64))
(declare-fun a_ack!6032 () (_ BitVec 64))
(declare-fun x1_ack!6027 () (_ BitVec 64))
(declare-fun x2_ack!6028 () (_ BitVec 64))
(declare-fun x3_ack!6029 () (_ BitVec 64))
(declare-fun b_ack!6030 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6026)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6031) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6025)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6025)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6027) ((_ to_fp 11 53) a_ack!6032))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6028) ((_ to_fp 11 53) x1_ack!6027))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6029) ((_ to_fp 11 53) x2_ack!6028))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6030) ((_ to_fp 11 53) x3_ack!6029))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6032)
                                   ((_ to_fp 11 53) x1_ack!6027))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!6027)
                  ((_ to_fp 11 53) a_ack!6032)))
  #x3fe8fc7574fa6c62))

(check-sat)
(exit)
