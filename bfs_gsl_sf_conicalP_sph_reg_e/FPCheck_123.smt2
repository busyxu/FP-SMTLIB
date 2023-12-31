(declare-fun c_ack!416 () (_ BitVec 64))
(declare-fun a_ack!417 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!416) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!417 #xffffffff)))
(assert (not (= #xffffffff a_ack!417)))
(assert (not (= #x00000000 a_ack!417)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!416) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!416) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!416) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!417))
  #x3ff0000000000000))

(check-sat)
(exit)
