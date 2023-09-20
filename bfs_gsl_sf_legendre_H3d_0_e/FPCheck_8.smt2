(declare-fun b_ack!34 () (_ BitVec 64))
(declare-fun a_ack!35 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!34) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!34) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!35)
                                  ((_ to_fp 11 53) b_ack!34)))
                  ((_ to_fp 11 53) #x3f20000000000000))))
  (not a!1)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!35)
                  ((_ to_fp 11 53) b_ack!34)))
  #x3fe921fb54442d18))

(check-sat)
(exit)
