(declare-fun b_ack!2420 () (_ BitVec 64))
(declare-fun a_ack!2421 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2420) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2420) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!2421 #x00000000)))
(assert (not (= #x00000000 a_ack!2421)))
(assert (= #x00000001 a_ack!2421))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2420) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2420) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2420)
                    ((_ to_fp 11 53) b_ack!2420))
            ((_ to_fp 11 53) #x3f6428a2f98d728d))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2420) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2420) ((_ to_fp 11 53) #x4018000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!2420)
               ((_ to_fp 11 53) #x2000000000000000))
       ((_ to_fp 11 53) #x3fe24a5b5be85b8f)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2420)
                  ((_ to_fp 11 53) b_ack!2420)))
  #x3fc435e50d79435e))

(check-sat)
(exit)
