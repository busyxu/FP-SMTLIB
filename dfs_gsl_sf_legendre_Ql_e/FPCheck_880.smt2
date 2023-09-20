(declare-fun b_ack!2958 () (_ BitVec 64))
(declare-fun a_ack!2959 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2958) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2958) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!2959 #x00000000)))
(assert (= #x00000000 a_ack!2959))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2958) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2958) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!2958)
               ((_ to_fp 11 53) b_ack!2958))
       ((_ to_fp 11 53) #x3f6428a2f98d728d)))
(assert (FPCHECK_FADD_OVERFLOW
  #x3fbc71c71c71c71c
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2958)
                  ((_ to_fp 11 53) b_ack!2958))
          ((_ to_fp 11 53) #x3fb745d1745d1746))))

(check-sat)
(exit)
