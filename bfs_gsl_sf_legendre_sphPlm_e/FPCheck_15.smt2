(declare-fun b_ack!66 () (_ BitVec 32))
(declare-fun a_ack!68 () (_ BitVec 32))
(declare-fun c_ack!67 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!66 #x00000000)))
(assert (not (bvslt a_ack!68 b_ack!66)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!67) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!67) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!66)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!67) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!67) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven b_ack!66))
  #x4008000000000000))

(check-sat)
(exit)
