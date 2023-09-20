(declare-fun limit_ack!258 () (_ BitVec 64))
(declare-fun epsabs_ack!263 () (_ BitVec 64))
(declare-fun epsrel_ack!257 () (_ BitVec 64))
(declare-fun a_ack!264 () (_ BitVec 64))
(declare-fun x1_ack!259 () (_ BitVec 64))
(declare-fun x2_ack!260 () (_ BitVec 64))
(declare-fun x3_ack!261 () (_ BitVec 64))
(declare-fun b_ack!262 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!258)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!263) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!257)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!257)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!259) ((_ to_fp 11 53) a_ack!264))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!260) ((_ to_fp 11 53) x1_ack!259))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!261) ((_ to_fp 11 53) x2_ack!260))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!262) ((_ to_fp 11 53) x3_ack!261))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!264)
                  ((_ to_fp 11 53) x1_ack!259)))))

(check-sat)
(exit)
