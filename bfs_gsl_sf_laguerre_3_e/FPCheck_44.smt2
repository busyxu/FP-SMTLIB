(declare-fun a_ack!89 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!89) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!89) ((_ to_fp 11 53) #xc008000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4008000000000000)
          ((_ to_fp 11 53) a_ack!89))))

(check-sat)
(exit)
