(declare-fun b_ack!924 () (_ BitVec 64))
(declare-fun a_ack!925 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!924) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!924) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!925 #x00000000)))
(assert (not (= #x00000000 a_ack!925)))
(assert (not (= #x00000001 a_ack!925)))
(assert (not (bvslt #x000186a0 a_ack!925)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!924) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!924) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!924) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!924)
               ((_ to_fp 11 53) b_ack!924))
       ((_ to_fp 11 53) #x3f6428a2f98d728d)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!924)
          ((_ to_fp 11 53) b_ack!924))
  #x3fb745d1745d1746))

(check-sat)
(exit)
