(declare-fun b_ack!2090 () (_ BitVec 64))
(declare-fun a_ack!2091 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2090) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2090) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!2091 #x00000000)))
(assert (not (= #x00000000 a_ack!2091)))
(assert (not (= #x00000001 a_ack!2091)))
(assert (not (bvslt #x000186a0 a_ack!2091)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2090) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2090) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2090) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!2090)
               ((_ to_fp 11 53) b_ack!2090))
       ((_ to_fp 11 53) #x3f6428a2f98d728d)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2090) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2090) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!2090)
               ((_ to_fp 11 53) b_ack!2090))
       ((_ to_fp 11 53) #x3f6428a2f98d728d)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2090)
          ((_ to_fp 11 53) b_ack!2090))
  #x3fb745d1745d1746))

(check-sat)
(exit)
