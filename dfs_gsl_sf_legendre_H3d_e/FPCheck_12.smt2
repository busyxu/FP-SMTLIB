(declare-fun c_ack!64 () (_ BitVec 64))
(declare-fun a_ack!65 () (_ BitVec 32))
(declare-fun b_ack!63 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!64) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!64) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (= #x00000000 a_ack!65))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!64) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!64) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!63) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!63)
                                  ((_ to_fp 11 53) c_ack!64)))
                  ((_ to_fp 11 53) #x3f20000000000000))))
  (not a!1)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!63)
                  ((_ to_fp 11 53) c_ack!64)))
  #x3fe921fb54442d18))

(check-sat)
(exit)
