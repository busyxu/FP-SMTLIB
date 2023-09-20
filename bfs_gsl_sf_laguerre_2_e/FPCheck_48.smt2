(declare-fun a_ack!130 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!129 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!130) ((_ to_fp 11 53) #xc000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #xbfe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) a_ack!130)))
  b_ack!129))

(check-sat)
(exit)
