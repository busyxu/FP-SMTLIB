(declare-fun limit_ack!193 () (_ BitVec 64))
(declare-fun epsabs_ack!198 () (_ BitVec 64))
(declare-fun a_ack!199 () (_ BitVec 64))
(declare-fun x1_ack!194 () (_ BitVec 64))
(declare-fun x2_ack!195 () (_ BitVec 64))
(declare-fun x3_ack!196 () (_ BitVec 64))
(declare-fun b_ack!197 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!193)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!198)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!194) ((_ to_fp 11 53) a_ack!199))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!195) ((_ to_fp 11 53) x1_ack!194))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!196) ((_ to_fp 11 53) x2_ack!195))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!197) ((_ to_fp 11 53) x3_ack!196))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!194)
          ((_ to_fp 11 53) a_ack!199))))

(check-sat)
(exit)
