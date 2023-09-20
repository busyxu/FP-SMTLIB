(declare-fun b_ack!21 () (_ BitVec 32))
(declare-fun a_ack!23 () (_ BitVec 32))
(declare-fun c_ack!22 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!21 #x00000000)))
(assert (not (bvslt a_ack!23 b_ack!21)))
(assert (= #x00000000 b_ack!21))
(assert (not (bvslt a_ack!23 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!22) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!22) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 a_ack!23))
(assert (bvsle #x00000000 a_ack!23))
(assert (not (bvsle #x00000001 a_ack!23)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!22)
                  ((_ to_fp 11 53) #x3ff0000000000000)))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!23)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
