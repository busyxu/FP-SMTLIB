(declare-fun a_ack!21 () (_ BitVec 32))
(declare-fun b_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!21 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!20) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!20) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 a_ack!21))
(assert (bvsle #x00000000 a_ack!21))
(assert (not (bvsle #x00000001 a_ack!21)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!20)
                  ((_ to_fp 11 53) #x3ff0000000000000)))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!21)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
