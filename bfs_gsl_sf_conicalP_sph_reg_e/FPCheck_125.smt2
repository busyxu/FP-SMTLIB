(declare-fun c_ack!422 () (_ BitVec 64))
(declare-fun a_ack!423 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!422) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!423 #xffffffff)))
(assert (not (= #xffffffff a_ack!423)))
(assert (not (= #x00000000 a_ack!423)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!422) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!422) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!422) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4000000000000000
  (fp.add roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fe0000000000000)
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!423))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
