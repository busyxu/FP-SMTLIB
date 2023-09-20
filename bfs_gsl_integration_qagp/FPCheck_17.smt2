(declare-fun limit_ack!256 () (_ BitVec 64))
(declare-fun epsabs_ack!261 () (_ BitVec 64))
(declare-fun a_ack!262 () (_ BitVec 64))
(declare-fun x1_ack!257 () (_ BitVec 64))
(declare-fun x2_ack!258 () (_ BitVec 64))
(declare-fun x3_ack!259 () (_ BitVec 64))
(declare-fun b_ack!260 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!256)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!261)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!257) ((_ to_fp 11 53) a_ack!262))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!258) ((_ to_fp 11 53) x1_ack!257))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!259) ((_ to_fp 11 53) x2_ack!258))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!260) ((_ to_fp 11 53) x3_ack!259))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!262)
                  ((_ to_fp 11 53) x1_ack!257)))))

(check-sat)
(exit)
