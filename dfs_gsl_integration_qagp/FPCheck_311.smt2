(declare-fun limit_ack!5274 () (_ BitVec 64))
(declare-fun epsabs_ack!5279 () (_ BitVec 64))
(declare-fun epsrel_ack!5273 () (_ BitVec 64))
(declare-fun a_ack!5280 () (_ BitVec 64))
(declare-fun x1_ack!5275 () (_ BitVec 64))
(declare-fun x2_ack!5276 () (_ BitVec 64))
(declare-fun x3_ack!5277 () (_ BitVec 64))
(declare-fun b_ack!5278 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5274)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5279) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5273)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5273)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5275) ((_ to_fp 11 53) a_ack!5280))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5276) ((_ to_fp 11 53) x1_ack!5275))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5277) ((_ to_fp 11 53) x2_ack!5276))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5278) ((_ to_fp 11 53) x3_ack!5277))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5280)
                                   ((_ to_fp 11 53) x1_ack!5275))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!5275)
                  ((_ to_fp 11 53) a_ack!5280)))
  #x3fedc3d9a4b011c6))

(check-sat)
(exit)
