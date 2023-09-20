(declare-fun limit_ack!226 () (_ BitVec 64))
(declare-fun epsabs_ack!231 () (_ BitVec 64))
(declare-fun epsrel_ack!225 () (_ BitVec 64))
(declare-fun a_ack!232 () (_ BitVec 64))
(declare-fun x1_ack!227 () (_ BitVec 64))
(declare-fun x2_ack!228 () (_ BitVec 64))
(declare-fun x3_ack!229 () (_ BitVec 64))
(declare-fun b_ack!230 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!226)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!231) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!225)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!225)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!227) ((_ to_fp 11 53) a_ack!232))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!228) ((_ to_fp 11 53) x1_ack!227))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!229) ((_ to_fp 11 53) x2_ack!228))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!230) ((_ to_fp 11 53) x3_ack!229))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!232)
                  ((_ to_fp 11 53) x1_ack!227)))))

(check-sat)
(exit)
