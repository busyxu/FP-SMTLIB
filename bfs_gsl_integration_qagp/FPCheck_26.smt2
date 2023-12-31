(declare-fun limit_ack!431 () (_ BitVec 64))
(declare-fun epsabs_ack!436 () (_ BitVec 64))
(declare-fun epsrel_ack!430 () (_ BitVec 64))
(declare-fun a_ack!437 () (_ BitVec 64))
(declare-fun x1_ack!432 () (_ BitVec 64))
(declare-fun x2_ack!433 () (_ BitVec 64))
(declare-fun x3_ack!434 () (_ BitVec 64))
(declare-fun b_ack!435 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!431)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!436) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!430)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!430)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!432) ((_ to_fp 11 53) a_ack!437))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!433) ((_ to_fp 11 53) x1_ack!432))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!434) ((_ to_fp 11 53) x2_ack!433))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!435) ((_ to_fp 11 53) x3_ack!434))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!432)
          ((_ to_fp 11 53) a_ack!437))))

(check-sat)
(exit)
