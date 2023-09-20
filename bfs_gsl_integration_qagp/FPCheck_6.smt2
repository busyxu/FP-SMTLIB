(declare-fun limit_ack!88 () (_ BitVec 64))
(declare-fun epsabs_ack!93 () (_ BitVec 64))
(declare-fun a_ack!94 () (_ BitVec 64))
(declare-fun x1_ack!89 () (_ BitVec 64))
(declare-fun x2_ack!90 () (_ BitVec 64))
(declare-fun x3_ack!91 () (_ BitVec 64))
(declare-fun b_ack!92 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!88)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!93)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!89) ((_ to_fp 11 53) a_ack!94))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!90) ((_ to_fp 11 53) x1_ack!89))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!91) ((_ to_fp 11 53) x2_ack!90))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!92) ((_ to_fp 11 53) x3_ack!91))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!94)
          ((_ to_fp 11 53) x1_ack!89))))

(check-sat)
(exit)
