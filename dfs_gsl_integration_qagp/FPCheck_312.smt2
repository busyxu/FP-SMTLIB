(declare-fun limit_ack!5290 () (_ BitVec 64))
(declare-fun epsabs_ack!5295 () (_ BitVec 64))
(declare-fun epsrel_ack!5289 () (_ BitVec 64))
(declare-fun a_ack!5296 () (_ BitVec 64))
(declare-fun x1_ack!5291 () (_ BitVec 64))
(declare-fun x2_ack!5292 () (_ BitVec 64))
(declare-fun x3_ack!5293 () (_ BitVec 64))
(declare-fun b_ack!5294 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5290)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5295) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5289)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5289)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5291) ((_ to_fp 11 53) a_ack!5296))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5292) ((_ to_fp 11 53) x1_ack!5291))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5293) ((_ to_fp 11 53) x2_ack!5292))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5294) ((_ to_fp 11 53) x3_ack!5293))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5296)
                                   ((_ to_fp 11 53) x1_ack!5291))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!5291)
                  ((_ to_fp 11 53) a_ack!5296)))
  #x3fedc3d9a4b011c6))

(check-sat)
(exit)
