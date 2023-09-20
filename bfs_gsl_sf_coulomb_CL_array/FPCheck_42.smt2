(declare-fun a_ack!154 () (_ BitVec 64))
(declare-fun c_ack!153 () (_ BitVec 64))
(declare-fun b_ack!152 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!154) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!154))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!153))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (bvsle #x00000001 b_ack!152))
(assert (bvsle #x00000002 b_ack!152))
(assert (FPCHECK_FMUL_ACCURACY
  #x4000000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!154)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
