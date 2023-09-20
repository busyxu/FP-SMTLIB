(declare-fun b_ack!240 () (_ BitVec 32))
(declare-fun a_ack!242 () (_ BitVec 32))
(declare-fun c_ack!241 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!240 #x00000000)))
(assert (not (bvslt a_ack!242 b_ack!240)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!241) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!241) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!240))
(assert (not (bvslt a_ack!242 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!241) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!241) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!242)))
(assert (= #x00000001 a_ack!242))
(assert (bvsle #x00000000 a_ack!242))
(assert (bvsle #x00000001 a_ack!242))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!241)
                  ((_ to_fp 11 53) #x3ff0000000000000)))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!242)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
