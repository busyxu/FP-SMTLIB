(declare-fun b_ack!734 () (_ BitVec 64))
(declare-fun a_ack!735 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!734) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!735 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!734) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!735)))
(assert (not (= #x00000001 a_ack!735)))
(assert (not (= #x00000002 a_ack!735)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!734))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!734)
                       ((_ to_fp 11 53) b_ack!734))
               ((_ to_fp 11 53) b_ack!734))
       ((_ to_fp 11 53) b_ack!734)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!734))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!734)
                       ((_ to_fp 11 53) b_ack!734))
               ((_ to_fp 11 53) b_ack!734))
       ((_ to_fp 11 53) b_ack!734)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4024000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!735)
                  ((_ to_fp 11 53) #x3ff8000000000000)))
  #x4005bf0a8b145769))

(check-sat)
(exit)
