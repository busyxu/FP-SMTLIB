(declare-fun a_ack!223 () (_ BitVec 32))
(declare-fun b_ack!222 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!223 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!222) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!222))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ed965fea53d6e41)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!223)))))
(assert (not (= #x00000000 a_ack!223)))
(assert (= #x00000001 a_ack!223))
(assert (fp.lt ((_ to_fp 11 53) b_ack!222) ((_ to_fp 11 53) #xc086232bdd7abcd2)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3cb0000000000000
  (fp.abs (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #xbff0000000000000)
                  ((_ to_fp 11 53) b_ack!222)))))

(check-sat)
(exit)
