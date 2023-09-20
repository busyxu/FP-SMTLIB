(declare-fun b_ack!300 () (_ BitVec 64))
(declare-fun a_ack!301 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!300) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!300) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!301 #x00000000)))
(assert (not (= #x00000000 a_ack!301)))
(assert (= #x00000001 a_ack!301))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!300) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!300) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!300)
               ((_ to_fp 11 53) b_ack!300))
       ((_ to_fp 11 53) #x3f6428a2f98d728d)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!300)
          ((_ to_fp 11 53) b_ack!300))
  #x3fb745d1745d1746))

(check-sat)
(exit)
