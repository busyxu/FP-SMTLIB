(declare-fun limit_ack!5258 () (_ BitVec 64))
(declare-fun epsabs_ack!5263 () (_ BitVec 64))
(declare-fun epsrel_ack!5257 () (_ BitVec 64))
(declare-fun a_ack!5264 () (_ BitVec 64))
(declare-fun x1_ack!5259 () (_ BitVec 64))
(declare-fun x2_ack!5260 () (_ BitVec 64))
(declare-fun x3_ack!5261 () (_ BitVec 64))
(declare-fun b_ack!5262 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5258)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5263) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5257)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5257)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5259) ((_ to_fp 11 53) a_ack!5264))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5260) ((_ to_fp 11 53) x1_ack!5259))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5261) ((_ to_fp 11 53) x2_ack!5260))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5262) ((_ to_fp 11 53) x3_ack!5261))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5264)
                                   ((_ to_fp 11 53) x1_ack!5259))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!5259)
                  ((_ to_fp 11 53) a_ack!5264)))
  #x3fedc3d9a4b011c6))

(check-sat)
(exit)
