(declare-fun b_ack!63 () (_ BitVec 32))
(declare-fun a_ack!65 () (_ BitVec 32))
(declare-fun c_ack!64 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!63 #x00000000)))
(assert (not (bvslt a_ack!65 b_ack!63)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!64) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!64) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!63)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!64) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!64) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven b_ack!63))
  #x4008000000000000))

(check-sat)
(exit)
